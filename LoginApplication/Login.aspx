<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginApplication.Login" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login form</title>
    <link runat="server" href="Style/LoginStyle.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" >
        <div class="mainDIV">
            <table style="width:100%;height:100%">
                <tr>
                    <td class="loginFormBackgound">
                        <div class="loginForm">
                            <div class="loginFormTitle">
                                Login form
                            </div>
                            <div class="loginFormLabel">
                                <asp:Label runat="server" AssociatedControlID="UserNameTB" Text="Username:" />
                            </div>
                            <div class="loginFormTextbox">
                                <asp:TextBox ID="UserNameTB" runat="server" Width="100%" Height="20px" onfocus="RemoveSignInErrorLabel()"></asp:TextBox>
                            </div>
                            <div class="loginFormLabel">
                                <asp:Label runat="server" AssociatedControlID="PasswordTB" Text="Password:" />
                            </div>
                            <div class="loginFormTextbox">
                                <asp:TextBox ID="PasswordTB" TextMode="Password" runat="server" Width="100%" Height="20px" onfocus="RemoveSignInErrorLabel()"></asp:TextBox>
                            </div>
                            <div class="loginFormButtons">
                                <asp:HyperLink ID="RecoverPasswordHPL" runat="server" CssClass="loginFormHyperlink">Recover password</asp:HyperLink>
                                <asp:ModalPopupExtender ID="ModalPopupExtender" runat="server" DropShadow="True" TargetControlID="RecoverPasswordHPL" PopupControlID="recoverPasswordPopup"/>
                                <asp:Button ID="SignInButtonBTN" runat="server" Width="100px" Height="35px" CssClass="loginFormSignIn" Text="Sign in" OnClick="SignInButtonBTN_Click"  />
                            </div>
                            <div class="loginFormResponse">
                                <asp:Label runat="server" ID="LoginErrorLabel" Text="" />
                            </div>
                        </div>
                    </td>
                    <td class="registerFormBackground">
                        <div class="registerForm">
                            <div class="welcomeText">
                                Welcome 
                            </div>
                            <div class="registerFormTitle">
                                Register now
                            </div>
                            <div class="registerFormDetails">
                                Quick and simple...Fill in the form and click REGISTER
                            </div>
                            <div class="registerFormData">
                                <table style="width:550px">
                                    <tr>
                                        <td style="padding-right:10px;width:50%">
                                            <div class="registerFormLabel">
                                                <asp:Label runat="server" AssociatedControlID="FirstNameTB" Text="*First Name:" />
                                            </div>
                                            <div class="registerFormTextbox">
                                                <asp:TextBox ID="FirstNameTB" runat="server" Width="100%" Height="20px" onfocus="RemoveErrorLabel()"></asp:TextBox>
                                            </div>
                                        </td>
                                        <td style="padding-left:10px">
                                            <div class="registerFormLabel">
                                                <asp:Label runat="server" AssociatedControlID="LastNameTB" Text="*Last Name:" />
                                            </div>
                                            <div class="registerFormTextbox">
                                                <asp:TextBox ID="LastNameTB" runat="server" Width="100%" Height="20px" onfocus="RemoveErrorLabel()"></asp:TextBox>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td style="padding-right:10px">
                                            <div class="registerFormLabel">
                                                <asp:Label runat="server" AssociatedControlID="EmailTB" Text="*Email:" />
                                            </div>
                                            <div class="registerFormTextbox">
                                                <asp:TextBox ID="EmailTB" runat="server" Width="100%" Height="20px" TextMode="Email" onfocus="RemoveErrorLabel()"></asp:TextBox>
                                            </div>
                                        </td>
                                        <td style="padding-left:10px">
                                            <div class="registerFormLabel">
                                                <asp:Label runat="server" AssociatedControlID="PhoneTB" Text="Phone number:" />
                                            </div>
                                            <div class="registerFormTextbox">
                                                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                                </asp:ToolkitScriptManager>
                                                <asp:TextBox ID="PhoneTB" runat="server" Width="100%" Height="20px" ></asp:TextBox>
                                                <asp:MaskedEditExtender ID="MaskedEditExtender" runat="server" TargetControlID="PhoneTB"
                                                    Mask="+40 (999) 999999" MessageValidatorTip="true" ErrorTooltipEnabled="True" >
                                                </asp:MaskedEditExtender>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td style="padding-right:10px">
                                            <div class="registerFormLabel">
                                                <asp:Label runat="server" AssociatedControlID="RegisterUserNameTB" Text="*Username:" />
                                            </div>
                                            <div class="registerFormTextbox">
                                                <asp:TextBox ID="RegisterUserNameTB" runat="server" Width="100%" Height="20px" onfocus="RemoveErrorLabel()"></asp:TextBox>
                                            </div>
                                        </td>
                                        <td style="padding-left:10px">
                                            <div class="registerFormLabel">
                                                <asp:Label runat="server" AssociatedControlID="RegisterPasswordTB" Text="*Password:" />
                                            </div>
                                            <div class="registerFormTextbox">
                                                <asp:TextBox ID="RegisterPasswordTB" TextMode="Password" runat="server" Width="100%" Height="20px" onfocus="RemoveErrorLabel()"></asp:TextBox>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <div class="registerFormMandatoryDetails">
                                                Fields with * are mandatory
                                            </div>
                                        </td>
                                        <td>
                                            <div class="registerFormButtons">
                                                <asp:Button ID="RegisterBTN" runat="server" Width="100px" Height="35px" CssClass="registerBtn" Text="register" OnClick="RegisterBTN_Click" />
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">
                                            <div class="registerFormResponse">
                                                <asp:Label runat="server" ID="RegisterErrorLabel" Text="" />
                                            </div>
                                        </td>
                                    </tr>

                                </table>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        


        <asp:Panel ID="recoverPasswordPopup" runat="server" style="display:none; width:400px; background-color:White; border-width:2px; border-color:Black; border-style:solid; padding:20px;">
            <div>
                Please provide email to recover your password!
            </div>
            <div class="recoverPasswordTextbox">
                <asp:TextBox ID="recoverPasswordEmail" runat="server" Width="100%" Height="20px" TextMode="Email" onfocus="RemoveErrorLabel()"></asp:TextBox>
            </div>
            <div class="recoverPasswordButtons">
                <asp:Button ID="SendEmail" runat="server" Width="100px" Height="35px" CssClass="sendBtn" Text="Send" OnClick="SendEmail_Click" />
            </div>
        </asp:Panel>

    </form>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">

        function RemoveErrorLabel(s, e) {
            $("#<%=RegisterErrorLabel.ClientID%>").hide();
        }

        function RemoveSignInErrorLabel(s, e) {
            $("#<%=LoginErrorLabel.ClientID%>").hide();
        }

    </script>
</body>
</html>
