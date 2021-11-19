<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminMemberManagement.aspx.cs" Inherits="MeroKitab.AdminMemberManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
    <script>
        function alertUser() {
            Swal.fire(
                'Successful!',
                'Member status successfully updated!',
                'success'
            )
        }
        function alertUserDelete() {
            Swal.fire(
                'Successful!',
                'Member has been deleted!',
                'success'
            )
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                         
                        <div class="row">
                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                     <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Member ID" ReadOnly="false"></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Full Name</label>
                               <div class="form-group">
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Full Name" ReadOnly="true"></asp:TextBox>
                               </div>
                            </div>

                            <div class="col-md-5">
                                <label>Account Status</label>
                               <div class="form-group">
                                    <div class="input-group">
                                     <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Status" ReadOnly="true"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success mr-1" runat="server" ID="LinkButton1"   onclick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-warning mr-1" runat="server" ID="LinkButton2" OnClick="LinkButton2_Click" ><i class="far fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton class="btn btn-danger mr-1" runat="server" ID="LinkButton3" OnClick="LinkButton3_Click" ><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>
                               </div>
                            </div>
                            
                        </div>

                        <div class="row">
                            
                            <div class="col-md-3">
                                <label>Date of Birth</label>
                               <div class="form-group">
                                     <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="DoB" TextMode="Date" ReadOnly="true"></asp:TextBox>
                               </div>
                            </div>

                            <div class="col-md-4">
                                <label>Contact No</label>
                               <div class="form-group">
                                     <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Contact No" TextMode="Number" ReadOnly="true"></asp:TextBox>
                               </div>
                            </div>

                            <div class="col-md-5">
                                <label>Email</label>
                               <div class="form-group">
                                     <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" placeholder="Email" TextMode="Email" ReadOnly="true"></asp:TextBox>
                               </div>
                            </div>
                        </div>

                        <div class="row">
                            
                            <div class="col-md-4">
                                <label>State</label>
                               <div class="form-group">
                                     <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="State" ReadOnly="true"></asp:TextBox>
                               </div>
                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                               <div class="form-group">
                                     <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="City" ReadOnly="true"></asp:TextBox>
                               </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pincode</label>
                               <div class="form-group">
                                     <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server" placeholder="Pincode" ReadOnly="true"></asp:TextBox>
                               </div>
                            </div>

                    </div>

                        <div class="row">
                            <div class="col-12">
                                <label>Full Address</label>
                               <div class="form-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Full Address" TextMode="Multiline" Rows="2" ReadOnly="true"></asp:TextBox>
                               </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-8 mx-auto">
                                <asp:Button class="btn btn-block btn-danger btn-lg" ID="Button1" runat="server" Text="Delete User Permanently" OnClick="Button1_Click" />
                            </div>
                        </div>
                </div>
            </div>
                <a href="Explore.aspx"><< Back to main page</a><br /><br />
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member List</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:merokitabConnectionString %>" SelectCommand="SELECT * FROM [member_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="account_status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                                        <asp:BoundField DataField="full_address" HeaderText="full_address" SortExpression="full_address" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
