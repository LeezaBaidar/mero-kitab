<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MeroKitab.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function alertUser() {
            Swal.fire(
                'Successful!',
                'User signed up!',
                'success'
            )
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Sign Up</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                     <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Date of Birth</label>
                               <div class="form-group">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="DoB" Textmode="Date"></asp:TextBox>
                               </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact No.</label>
                                <div class="form-group">
                                     <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Email ID</label>
                               <div class="form-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                               </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select"/>
                                        <asp:ListItem Text="Province No. 1" Value="Biratnagar" />
                                        <asp:ListItem Text="Province No. 2" Value="Janakpur" />
                                        <asp:ListItem Text="Bagmati Province" Value="Hetauda" />
                                        <asp:ListItem Text="Gandaki Province" Value="Pokhara" />
                                        <asp:ListItem Text="Lumbini Province" Value="Deukhuri" />
                                        <asp:ListItem Text="Karnali Province" Value="Birendranagar" />
                                        <asp:ListItem Text="Sudurpashchim Province" Value="Godawari" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                               <div class="form-group">
                                    <asp:TextBox ID="TextBox6" class="form-control" runat="server" placeholder="City"></asp:TextBox>
                               </div>
                            </div>

                             <div class="col-md-4">
                                <label>Pincode</label>
                               <div class="form-group">
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Pincode" Textmode="Number"></asp:TextBox>
                               </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                     <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Password</label>
                               <div class="form-group">
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox8" runat="server" ErrorMessage="Password is required" SetFocusOnError="true" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                               </div>
                            </div>

                            <div class="col-md-6">
                                <label>Confirm Password</label>
                               <div class="form-group">
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox9" runat="server" ErrorMessage="Password Confirmation is required." SetFocusOnError="true" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TextBox9" ControlToCompare="TextBox8" runat="server" ErrorMessage="Passwords do not match" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                               </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>
                <a href="Explore.aspx"><< Back to main page</a><br /><br />
            </div>
        </div>
    </div>
</asp:Content>
