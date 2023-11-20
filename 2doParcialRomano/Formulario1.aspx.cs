using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2doParcialRomano
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["nombreVariable"] != null)
            {
                Label6.Text = Session["nombreVariable"].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)  // crear cookie
        {
          
            if (TextBox1.Text != string.Empty && TextBox4.Text != string.Empty)
            {
                HttpCookie cookie1 = new HttpCookie("nombre", TextBox1.Text);  // SECCION
                HttpCookie cookie2 = new HttpCookie("contraseña", TextBox4.Text);    //COOKIE
                cookie2.Expires = DateTime.Now.AddDays(3);
                Response.Cookies.Add(cookie1);
                Response.Cookies.Add(cookie2);
                this.Session["nombreVariable"] = TextBox1.Text;
                Response.Redirect(Request.RawUrl);
                Response.Redirect(Request.RawUrl);


               

            }
        }
     }
}
