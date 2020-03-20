using System;
using LoginApplication;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestLogin
{
    [TestClass]
    public class LoginPageUnitTest
    {

        [TestMethod]
        public void Login_Click_Test()
        {
            LoginTest obj = new LoginTest();

            var loginUserName = obj.UserName;
            var loginPassword = obj.Password;

            if (loginUserName == "" || loginPassword == "")
            {
                Assert.Fail();
            }
            else
            {
                if (loginUserName != "TestUserName" || loginPassword != "TestPassword")
                {
                    Assert.Fail();
                }
            }
        }

        [TestMethod]
        public void Register_Click_Test()
        {
            LoginTest obj = new LoginTest();
            var firstName = obj.RegisterFirstName;
            var lastName = obj.RegisterLastName;
            var email = obj.RegisterEmail;
            var phone = obj.RegisterPhone;
            var registerUserName = obj.RegisterUserName;
            var registerPassword = obj.RegisterPassword;

            if (firstName == "" || lastName == "" || email == "" || registerUserName == "" || registerPassword == "")
            {
                Assert.Fail();
            }
            else
            {
                if (phone.Length > 0 && phone.Length != 9)
                {
                    Assert.Fail();
                }
            }
        }
    }
}
