using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LoginApplication
{
    public class LoginTest
    {
        public string UserName;
        public string Password;
        public string RegisterFirstName;
        public string RegisterLastName;
        public string RegisterEmail;
        public string RegisterPhone;
        public string RegisterUserName;
        public string RegisterPassword;

        public LoginTest()
        {
            this.UserName = "TestUserName";
            this.Password = "TestPassword";
            this.RegisterFirstName = "RegisterFirstname";
            this.RegisterLastName = "RegisterLastname";
            this.RegisterEmail = "RegisterEmail";
            this.RegisterPhone = "";
            this.RegisterUserName = "RegisterTestUsername";
            this.RegisterPassword = "RegisterTestPassword";
        }
    }
}