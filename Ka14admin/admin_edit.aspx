<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_edit.aspx.cs" Inherits="Ka14admin.admin_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
        &nbsp;<fieldset>
            <legend><asp:Label ID="lblprsnldt" runat="server" Text="Personal details" Font-Bold="true" ForeColor="Blue" />
                &nbsp;<asp:Button ID="btnwrkdt" runat="server" Text="Work details" OnClick="btnwrkdt_Click" CausesValidation="false" />
                &nbsp;<asp:Button ID="btnemppswrd" runat="server" Text="Login details" OnClick="btnemppswrd_Click" CausesValidation="false" />
                &nbsp;<asp:Button ID="btnsearch" runat="server" Text="Search" CausesValidation="false" OnClick="btnsearch_Click" />
            </legend>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnbck" runat="server" Text="BACK" CausesValidation="false" OnClick="btnbck_Click" />
             <table>
                 <tr><td></td></tr>
            <tr>
                <td>Name</td>
                <td><asp:TextBox ID="txtname" runat="server" ></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvname" runat="server" SetFocusOnError="True" ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtname"></asp:RequiredFieldValidator></td>
            </tr>
             <tr>
                <td>Date of Birth</td>
                <td><asp:TextBox ID="txtdob" runat="server" ></asp:TextBox></td>
                 <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SetFocusOnError="True" ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtdob"></asp:RequiredFieldValidator></td>
            </tr>
             <tr>
                <td>Gender</td>
                <td><asp:TextBox ID="txtgender" runat="server" ></asp:TextBox></td>
                 <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" SetFocusOnError="True" ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtgender"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Blood Group</td>
                <td><asp:TextBox ID="txtbldgrp" runat="server" ></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" SetFocusOnError="True" ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtbldgrp"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Permanent mobile No.</td>
                <td><asp:TextBox ID="txtmob1" runat="server" MaxLength="10" ></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" SetFocusOnError="True" ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtmob1"></asp:RequiredFieldValidator></td>
            </tr>
                  <tr>
                <td>Temporary mobile NO.</td>
                <td><asp:TextBox ID="txtmob2" runat="server" MaxLength="10" ></asp:TextBox></td>
                      <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" SetFocusOnError="True" ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtmob2"></asp:RequiredFieldValidator></td>
                  </tr>
                  <tr>
                <td>Email ID</td>
                <td><asp:TextBox ID="txtmailid" runat="server" ></asp:TextBox></td>
                      <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" SetFocusOnError="True" ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtmailid"></asp:RequiredFieldValidator></td>
            </tr>
                 <tr>
                <td>Address</td>
                <td><asp:TextBox ID="txtadrs" runat="server" ></asp:TextBox></td>
                     <td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" SetFocusOnError="True" ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtadrs"></asp:RequiredFieldValidator></td>
            </tr>
                       <tr>
                <td>Qualification</td>
                <td><asp:TextBox ID="txtqal" runat="server" ></asp:TextBox></td>
                           <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" SetFocusOnError="True" ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtqal"></asp:RequiredFieldValidator></td>
            </tr>

             <tr>
                <td>Designation</td>
                <td><asp:TextBox ID="txtdesg" runat="server" ></asp:TextBox></td>
                 <td><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" SetFocusOnError="True" ErrorMessage="field should not be empty" ForeColor="Red"
                     Display="Dynamic" ControlToValidate="txtdesg"></asp:RequiredFieldValidator></td>
            </tr>
                 <tr><td>

                     </td><td><asp:Button runat="server" Text="Submit" OnClick="btnsubmit_Click" /></td></tr>
                 <tr><td><h3><asp:Label ID="lblcomment" runat="server" Visible="false"></asp:Label></h3></td></tr>
            
        </table>
        </fieldset>
        <asp:GridView ID="grdprsnlview" runat="server" DataKeyNames="employid" AllowPaging="True" AutoGenerateColumns="False" PageSize="5" CellPadding="6" 
             OnPageIndexChanging="grdprsnlview_PageIndexChanging" OnRowEditing="grdprsnlview_RowEditing" OnRowCancelingEdit="grdprsnlview_RowCancelingEdit" 
            OnRowUpdating="grdprsnlview_RowUpdating" OnRowDeleting="grdprsnlview_RowDeleting" Width="1262px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <Columns>
               <asp:TemplateField  HeaderText="ID">
                   <ItemTemplate><asp:Label ID="lblid" runat="server" Text='<%#Eval("employid")%>'></asp:Label></ItemTemplate>
                   <EditItemTemplate><asp:TextBox ID="txtEmpidEdit" runat="server" Text='<%#Eval("employid")%>'></asp:TextBox></EditItemTemplate>
               </asp:TemplateField>
                <asp:TemplateField  HeaderText="FullName">
                   <ItemTemplate><asp:Label ID="lblname" runat="server" Text='<%#Eval("employfullname")%>'></asp:Label></ItemTemplate>
                    <EditItemTemplate><asp:TextBox ID="txtnameEdit" runat="server" Text='<%#Eval("employfullname")%>'></asp:TextBox></EditItemTemplate>
               </asp:TemplateField>
                 <asp:TemplateField  HeaderText="Date of birth">
                   <ItemTemplate><asp:Label ID="lbldob" runat="server" Text='<%#Eval("employdob")%>'></asp:Label></ItemTemplate>
                     <EditItemTemplate><asp:TextBox ID="txtDOBEdit" runat="server" Text='<%#Eval("employdob")%>'></asp:TextBox></EditItemTemplate>
               </asp:TemplateField>
                 <asp:TemplateField  HeaderText="Gender">
                   <ItemTemplate><asp:Label ID="lblgender" runat="server" Text='<%#Eval("employgender")%>'></asp:Label></ItemTemplate>
                    <EditItemTemplate><asp:TextBox ID="txtgenderEdit" runat="server" Text='<%#Eval("employgender")%>'></asp:TextBox></EditItemTemplate>
               </asp:TemplateField>
                 <asp:TemplateField  HeaderText="Blood Group">
                   <ItemTemplate><asp:Label ID="lblbldgrp" runat="server" Text='<%#Eval("employbloodgrp")%>'></asp:Label></ItemTemplate>
                     <EditItemTemplate><asp:TextBox ID="txtbldgrpEdit" runat="server" Text='<%#Eval("employbloodgrp")%>'></asp:TextBox></EditItemTemplate>
               </asp:TemplateField>
                 <asp:TemplateField  HeaderText="Permanent mobile No.">
                   <ItemTemplate><asp:Label ID="lblmob1" runat="server" Text='<%#Eval("employmobno1")%>'></asp:Label></ItemTemplate>
                     <EditItemTemplate><asp:TextBox ID="txtmob1Edit" runat="server" Text='<%#Eval("employmobno1")%>'></asp:TextBox></EditItemTemplate>
               </asp:TemplateField>
                 <asp:TemplateField  HeaderText="Temporary mobile NO.">
                   <ItemTemplate><asp:Label ID="lblmob2" runat="server" Text='<%#Eval("employmobno2")%>'></asp:Label></ItemTemplate>
                     <EditItemTemplate><asp:TextBox ID="txtmob2Edit" runat="server" Text='<%#Eval("employmobno2")%>'></asp:TextBox></EditItemTemplate>
               </asp:TemplateField>
                  <asp:TemplateField  HeaderText="Email mail ID">
                   <ItemTemplate><asp:Label ID="lblmailid" runat="server" Text='<%#Eval("employmailid")%>'></asp:Label></ItemTemplate>
                      <EditItemTemplate><asp:TextBox ID="txtmailidEdit" runat="server" Text='<%#Eval("employmailid")%>'></asp:TextBox></EditItemTemplate>
               </asp:TemplateField>
                  <asp:TemplateField  HeaderText="Address">
                   <ItemTemplate><asp:Label ID="lbladr" runat="server" Text='<%#Eval("employaddress")%>'></asp:Label></ItemTemplate>
                      <EditItemTemplate><asp:TextBox ID="txtadrEdit" runat="server" Text='<%#Eval("employaddress")%>'></asp:TextBox></EditItemTemplate>
               </asp:TemplateField>
                  <asp:TemplateField  HeaderText="Qualification">
                   <ItemTemplate><asp:Label ID="lblqal" runat="server" Text='<%#Eval("employqualification")%>'></asp:Label></ItemTemplate>
                      <EditItemTemplate><asp:TextBox ID="txtqalEdit" runat="server" Text='<%#Eval("employqualification")%>'></asp:TextBox></EditItemTemplate>
               </asp:TemplateField>
                  <asp:TemplateField  HeaderText="Designation">
                   <ItemTemplate><asp:Label ID="lbldesgn" runat="server" Text='<%#Eval("employdesignation") %>'></asp:Label></ItemTemplate>
                      <EditItemTemplate><asp:TextBox ID="txtdesgnEdit" runat="server" Text='<%#Eval("employdesignation")%>'></asp:TextBox></EditItemTemplate>
               </asp:TemplateField>
                <asp:TemplateField Headertext="Edit">
                    <ItemTemplate><asp:Button ID="imgedit" runat="server" Text="EDIT" CausesValidation="false" CommandName="Edit" /></ItemTemplate>
                    <EditItemTemplate>
                        <asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update" Text="Update" CausesValidation="false"></asp:LinkButton>
                        <asp:LinkButton ID="lnkCancel" runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="false"></asp:LinkButton>
                            </EditItemTemplate>
                    <ItemStyle  HorizontalAlign="Center"/>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate><asp:Button ID="imgdelete" runat="server" Text="DELETE" CausesValidation="false" CommandName="Delete" /> </ItemTemplate>
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
