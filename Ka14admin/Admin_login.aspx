<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="Ka14admin.Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            position: absolute;
            width: 662px;
            height: 81px;
            left: 10px;
            top: 15px;
        }
        .auto-style2 {
            text-align:left;
            width: 414px;
            height: 134px;
        }
        .auto-style3 {
            text-align:left;
            position: absolute;
            width: 427px;
            height: 180px;
            left: 470px;
            top: 192px;
        }
        .img{
            width:50px;
            height:100px;


         }
        .auto-style5 {
            width: 142px;
            height: 69px;
            float: left;
        }
        .auto-style6 {
             position: absolute;
            width: 214px;
            height: 102px;
            left: 473px;
            top: 114px;
            margin-top: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding: 300px;" class="auto-style1" >
       <div class="auto-style6"> 
           <img src="WhatsApp Image 2020-08-30 at 11.59.05 AM (2).jpg" class="auto-style5" />&nbsp;</div>
        <fieldset class="auto-style3" >     
            <legend style="text-align:left" >Admin Login</legend>
            <table class="auto-style2">
                 
                <tr>
                    <td>Admin Id</td>
                    <td><asp:TextBox ID="txtadmnid" runat="server" ></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="rfvadmnid" runat="server" ControlToValidate="txtadmnid" SetFocusOnError="true" Display="Dynamic" 
                        ErrorMessage="Field should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><asp:TextBox ID="txtadmpswrd" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="rfvadmnpswrd" runat="server" ControlToValidate="txtadmpswrd" SetFocusOnError="true" Display="Dynamic" 
                        ErrorMessage="Field should not be empty" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnlgout" runat="server" Text="LogOut" CausesValidation="false" OnClick="btnlgout_Click" /> </td>
                    <td><asp:Button ID="btnsbmt" runat="server" Text="LogIn" OnClick="btnsbmt_Click" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblcomment" runat="server" Visible="false"></asp:Label></td>
                </tr>
            </table>
        </fieldset>
    
    </div>
    </form>
</body>
</html>
