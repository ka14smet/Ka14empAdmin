<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="emppswrd_details.aspx.cs" Inherits="Ka14admin.emppswrd_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <fieldset>
           <legend><asp:Button ID="btnprsnldt" runat="server" Text="Personal details" OnClick="btnprsnldt_Click" CausesValidation="false" />
                &nbsp;<asp:Button ID="btnwrkdt" runat="server" Text="Work details" OnClick="btnwrkdt_Click" CausesValidation="false" />
                &nbsp;<asp:Label ID="lblemppswrd" runat="server"
                     Text="Login Details" Font-Bold="true" ForeColor="Blue"></asp:Label>
               &nbsp;<asp:Button ID="btnsearch" runat="server" Text="Search" CausesValidation="false" OnClick="btnsearch_Click" />
           </legend>
            <table>
                <tr><td><asp:Button ID="btnbck" runat="server" Text="BACK" CausesValidation="false" OnClick="btnbck_Click" /></td></tr>
                <tr>
                    <td>Employee ID</td>
                   <td><asp:TextBox ID="txtlgnid" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SetFocusOnError="True" ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtlgnid"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                     <td>EmployeePassword</td>
                    <td><asp:TextBox ID="txtpassword" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" SetFocusOnError="True" 
                        ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtpassword"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td> </td>
                    <td><asp:Button ID="btnsbmt" runat="server" Text="Submit" OnClick="btnsbmt_Click" /></td>
                </tr>
                <tr>
                    <td><h3><asp:Label ID="lblcomment" runat="server" Visible="false"></asp:Label></h3></td>

                </tr>
            </table>
            <asp:GridView ID="grdemploypswrdview" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="6" 
                OnPageIndexChanging="grdemploypswrdview_PageIndexChanging" OnRowCancelingEdit="grdemploypswrdview_RowCancelingEdit" 
                OnRowEditing="grdemploypswrdview_RowEditing" OnRowUpdating="grdemploypswrdview_RowUpdating" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
                <Columns>
                    <asp:TemplateField HeaderText="Employee ID">
                        <ItemTemplate><asp:Label ID="lblid" runat="server" Text='<%#Eval("employid") %>'></asp:Label></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtlgnidEdit" runat="server" Text='<%#Eval("employid") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="password">
                        <ItemTemplate><asp:Label ID="lblpswrd" runat="server" Text='<%#Eval("employpassword") %>'></asp:Label></ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtlgnpswrd" runat="server" Text='<%#Eval("employpassword") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EDIT">
                        <ItemTemplate><asp:Button ID="imgbtnEdit" runat="server" CommandName="Edit" Text="EDIT" CausesValidation="false" /></ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update" CausesValidation="false" Text="UPDATE"></asp:LinkButton>
                            <asp:LinkButton ID="lnkCancel" runat="server" CommandName="Cancel" CausesValidation="false" Text="CANCEL"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>

                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
        </fieldset>
    
    </div>
    </form>
</body>
</html>
