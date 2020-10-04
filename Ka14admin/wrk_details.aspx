<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wrk_details.aspx.cs" Inherits="Ka14admin.wrk_details" %>

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
                &nbsp;<asp:Label ID="lblwrkdt" runat="server" Text="Work details" Font-Bold="true" ForeColor="Blue" />
                &nbsp;<asp:Button ID="btnemppswrd" runat="server" Text="Login details" OnClick="btnemppswrd_Click" CausesValidation="false" />
                &nbsp;<asp:Button ID="btnsearch" runat="server" Text="Search" CausesValidation="false" OnClick="btnsearch_Click"/>
            </legend>
            <table>
                <tr><td><asp:Button ID="btnbck" runat="server" Text="BACK" CausesValidation="false" OnClick="btnbck_Click" /></td></tr>
                <tr>
                    <td>Employee ID</td>
                    <td><asp:Textbox ID="txtwrkid" runat="server"></asp:Textbox> </td>
                    <td><asp:RequiredFieldValidator ID="rfvwrkid" runat="server" SetFocusOnError="True" ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtwrkid"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Project working on</td>
                    <td><asp:TextBox ID="txtwrkingon" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SetFocusOnError="True" ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtwrkingon"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Work satared on</td>
                    <td><asp:TextBox ID="txtwrkstrt" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" SetFocusOnError="True" 
                        ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtwrkstrt"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Work completed on</td>
                    <td><asp:TextBox ID="txtwrkcmplt" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" SetFocusOnError="True"
                         ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtwrkcmplt"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Training program</td>
                    <td><asp:TextBox ID="txttrngprg" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" SetFocusOnError="True"
                         ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txttrngprg"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td> </td>
                    <td><asp:Button ID="btnsbmt" runat="server" Text="Submit" OnClick="btnsbmt_Click" /></td>
                </tr>
                <tr><td><h3><asp:Label ID="lblcomment" runat="server" Visible="false"></asp:Label></h3></td></tr>
            </table>
        </fieldset> 
        <asp:GridView ID="grdwrkdtlsview" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="5"
            cellpadding="3" OnPageIndexChanging="grdwrkdtlsview_PageIndexChanging" 
            OnRowCancelingEdit="grdwrkdtlsview_RowCancelingEdit" 
            OnRowEditing="grdwrkdtlsview_RowEditing" 
            OnRowUpdating="grdwrkdtlsview_RowUpdating" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" >
            <Columns>
                <asp:TemplateField HeaderText="Employee ID">
                    <ItemTemplate><asp:Label ID="lblwrkid" runat="server" Text='<%#Eval("employid")%>'></asp:Label></ItemTemplate>
                    <EditItemTemplate><asp:TextBox ID="txtwrkidEdit" runat="server" Text='<%#Eval("employid")%>'></asp:TextBox></EditItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Project Working on">
                    <ItemTemplate><asp:Label ID="lblwrkprjwrkon" runat="server" Text='<%#Eval("prjtwrking")%>'></asp:Label></ItemTemplate>
                    <EditItemTemplate><asp:TextBox ID="txtprjwrkonEdit" runat="server" Text='<%#Eval("prjtwrking")%>'></asp:TextBox></EditItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Workstarted on">
                    <ItemTemplate><asp:Label ID="lblwrkstrton" runat="server" Text='<%#Eval("workstart")%>'></asp:Label></ItemTemplate>
                    <EditItemTemplate><asp:TextBox ID="txtwrkstrtonEdit" runat="server" Text='<%#Eval("workstart")%>'></asp:TextBox></EditItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Workcompleted on">
                    <ItemTemplate><asp:Label ID="lblwrkcmplton" runat="server" Text='<%#Eval("wrkcmplt")%>'></asp:Label></ItemTemplate>
                    <EditItemTemplate><asp:Textbox ID="txtwrkcmpltonEdit" runat="server" Text='<%#Eval("wrkcmplt")%>'></asp:Textbox></EditItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="training program">
                    <ItemTemplate><asp:Label ID="lbltrngprg" runat="server" Text='<%#Eval("trainingprgrms")%>'></asp:Label></ItemTemplate>
                    <EditItemTemplate><asp:TextBox ID="txttrngprgEdit" runat="server" Text='<%#Eval("trainingprgrms")%>'></asp:TextBox></EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EDIT">
                    <ItemTemplate><asp:Button ID="imgedit" runat="server" CommandName="Edit" CausesValidation="false" Text="EDIT" /></ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton ID="lnkbtnupdate" runat="server" CommandName="Update" CausesValidation="false" Text="UPDATE"></asp:LinkButton>
                    <asp:LinkButton ID="lnkbtncancel" runat="server" CommandName="Cancel" CausesValidation="false" Text="CANCEL"></asp:LinkButton>
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
    
    </div>
    </form>
</body>
</html>
