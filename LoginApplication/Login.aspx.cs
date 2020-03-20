using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LoginApplication;

namespace LoginApplication
{
    public partial class Login : System.Web.UI.Page
    {
        //----- Page load -----
        protected void Page_Load(object sender, EventArgs e)
        {
            //---- initialize error labels witn no text and hide them
            RegisterErrorLabel.Text = "";
            RegisterErrorLabel.Visible = false;

            LoginErrorLabel.Text = "";
            LoginErrorLabel.Visible = false;
        }

        public void RegisterBTN_Click(object sender, EventArgs e)
        {
            //----- initialize parameters with textbox values from register form -----
            var firstName = FirstNameTB.Text;
            var lastName = LastNameTB.Text;
            var email = EmailTB.Text;
            var phone = PhoneTB.Text;
            var registerUserName = RegisterUserNameTB.Text;
            var registerPassword = RegisterPasswordTB.Text;

            //----- Check mandatory fields -------
            
            if(firstName == "" || lastName == "" || email == "" || registerUserName == "" || registerPassword == "")
            {
                RegisterErrorLabel.Text = "Incoplete registration data. Please fill in mandatory fields!";
                RegisterErrorLabel.Visible = true;
                RegisterErrorLabel.ForeColor = System.Drawing.ColorTranslator.FromHtml("#ff0000");
            }
            else
            {

                if(phone.Length > 0 && phone.Length != 9)
                {
                    RegisterErrorLabel.Text = "Invalid phone number!";
                    RegisterErrorLabel.Visible = true;
                    RegisterErrorLabel.ForeColor = System.Drawing.ColorTranslator.FromHtml("#ff0000");
                }
                else
                {
                    RegisterErrorLabel.Text = "Registration completed successfully!";
                    RegisterErrorLabel.Visible = true;
                    RegisterErrorLabel.ForeColor = System.Drawing.ColorTranslator.FromHtml("#0ecf0e");

                    FirstNameTB.Text = "";
                    LastNameTB.Text = "";
                    EmailTB.Text = "";
                    PhoneTB.Text = "";
                    RegisterUserNameTB.Text = "";
                    RegisterPasswordTB.Text = "";
                }
                
            }

        }

        protected void SignInButtonBTN_Click(object sender, EventArgs e)
        {
            //----- initialize parameters with textbox values from login form -----

            var loginUserName = UserNameTB.Text;
            var loginPassword = PasswordTB.Text;


            //------ Check credentials --------

            if(loginUserName == "" || loginPassword == "")
            {
                LoginErrorLabel.Text = "Username or password empty!";
                LoginErrorLabel.Visible = true;
                LoginErrorLabel.ForeColor = System.Drawing.ColorTranslator.FromHtml("#ffdd03");
            }
            else
            {
                if(loginUserName != "TestUserName" || loginPassword != "TestPassword")
                {
                    LoginErrorLabel.Text = "Wrong username or password!";
                    LoginErrorLabel.Visible = true;
                    LoginErrorLabel.ForeColor = System.Drawing.ColorTranslator.FromHtml("#ffdd03");
                }
                else
                if(loginUserName == "TestUserName" && loginPassword == "TestPassword")
                {
                    LoginErrorLabel.Text = "Sign in successfully!";
                    LoginErrorLabel.Visible = true;
                    LoginErrorLabel.ForeColor = System.Drawing.ColorTranslator.FromHtml("#7FFF00");

                    UserNameTB.Text = "";
                    PasswordTB.Text = "";
                }
            }
        }

        protected void SendEmail_Click(object sender, EventArgs e)
        {
            //----- Check if email is valid -----
            recoverPasswordEmail.Text = "";
        }
    }
}