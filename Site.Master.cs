using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeroKitab
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]!=null && Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //user login link button
                    LinkButton2.Visible = true; //sign up

                    LinkButton3.Visible = false; //logout
                    LinkButton11.Visible = false; //hello user

                    LinkButton4.Visible = true; //admin
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton5.Visible = false;
                    LinkButton6.Visible = false;
                    LinkButton7.Visible = false;
                }
                else if (Session["role"] != null && Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;

                    LinkButton3.Visible = true; //logout
                    LinkButton11.Visible = true; //hello user
                    LinkButton11.Text = "Hello! " + Session["full_name"].ToString();

                    LinkButton4.Visible = true;  //admin
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton5.Visible = false;
                    LinkButton6.Visible = false;
                    LinkButton7.Visible = false;
                }

                else if (Session["role"] != null && Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;

                    LinkButton3.Visible = true; //logout
                    LinkButton11.Visible = true; //hello user
                    LinkButton11.Text = "Hello! Admin";

                    LinkButton4.Visible = false;  //admin
                    LinkButton8.Visible = true;
                    LinkButton9.Visible = true;
                    LinkButton5.Visible = true;
                    LinkButton6.Visible = true;
                    LinkButton7.Visible = true;
                }
            }
            catch(System.Exception ex)
            {

            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAuthorManagement.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPublisherManagement.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookInventory.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookIssuing.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMemberManagement.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewBooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        //logout
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["fullname"] ="";
            Session["role"] ="";
            Session["status"] ="";

            LinkButton1.Visible = true; //user login link button
            LinkButton2.Visible = true; //sign up

            LinkButton3.Visible = false; //logout
            LinkButton11.Visible = false; //hello user

            LinkButton4.Visible = true; //admin
            LinkButton8.Visible = false;
            LinkButton9.Visible = false;
            LinkButton5.Visible = false;
            LinkButton6.Visible = false;
            LinkButton7.Visible = false;

            Response.Redirect("Explore.aspx");
        }

        //view profile
        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }
    }
}