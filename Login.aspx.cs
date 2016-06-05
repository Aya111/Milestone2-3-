using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }



    protected void btnLogin_Click(object sender, EventArgs e)
    {
        AgilyToolEntities1 context = new AgilyToolEntities1();

        string email = txtEmail.Text;
        string Password = txtPassword.Text;
        var query = (from Mem in context.Members
                     where Mem.E_mail == email && Mem.Password == Password
                     select Mem).FirstOrDefault();
        Session["Email"] = query.E_mail;
        if (query != null)
        {
            Response.Redirect("FirstPage.aspx");
        }
        else
        {
            Response.Write("<script>alert('Please enter valid Username and Password')</script>");
        }
    }

    protected void lbtnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegisterForm.aspx");
    }

    protected void lbtnForgetPassword_Click(object sender, EventArgs e)
    {

        AgilyToolEntities1 context = new AgilyToolEntities1();
        if (txtEmail.Text != "")
        {
            var query_getPassword =
                (
                    from mem in context.Members
                    where mem.E_mail == txtEmail.Text
                    select mem.Password).FirstOrDefault();
            if (query_getPassword != null)
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("AgilyTool@gmail.com");
                msg.To.Add(txtEmail.Text);
                msg.Subject = " Recover your Password";
                msg.Body = ( "Your Password is:" + query_getPassword);
                msg.IsBodyHtml = true;
                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "AgilyTool@gmail.com";  
                ntwd.Password = "itiintake36";  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                Response.Write("<script>alert('Your Password had been sent succesfuly')</script>");
                


            }
        }
    }
}

