using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterForm : System.Web.UI.Page
{
    AgilyToolEntities1 context = new AgilyToolEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        Member M = new Member();
        M.Name = txtName.Text;
        M.E_mail = txtEmail.Text;
        M.Password = txtPassword.Text;
        context.Members.Add(M);

        if(context.SaveChanges() > 0)
        {
            lblMsg.Visible = true;
        }
        Session["Email"] = txtEmail.Text;
        Response.Redirect("FirstPage.aspx");
        
    }

   
}