<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search_employee.aspx.cs" Inherits="Ka14admin.Search_employee" %>

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
        <fieldset>
           <legend><asp:Button ID="btnprsnldt" runat="server" Text="Personal details" OnClick="btnprsnldt_Click" CausesValidation="false" />
                &nbsp;<asp:Button ID="btnwrkdt" runat="server" Text="Work details" OnClick="btnwrkdt_Click" CausesValidation="false" />
               &nbsp;<asp:Button ID="btnlgnpswrd" runat="server" Text="Login Details" CausesValidation="false" OnClick="btnlgnpswrd_Click" />
               &nbsp;<asp:Label ID="lblsearch" runat="server"
                     Text="Search" Font-Bold="true" ForeColor="Blue"></asp:Label>
           </legend>
          &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="btnbck" runat="server" CausesValidation="false" Text="BACK" OnClick="btnbck_Click" />
            <table>
                <tr><td></td></tr>
                <tr><td> </td></tr>
                <tr><td> </td></tr>
                <tr><td><asp:TextBox ID="txtsearch" runat="server" ></asp:TextBox> &nbsp;
                   <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" /></td>
                    <td><asp:RequiredFieldValidator ID="rfvsearch" SetFocusOnError="true" ControlToValidate="txtsearch" 
                        ErrorMessage="Field should not be empty for searching" runat="server" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr><td><h3><asp:Label ID="lblcomment" runat="server" Visible="false" ></asp:Label> </h3></td></tr>
            </table>

            </fieldset>
           <asp:GridView ID="grdprsnlview" runat="server" DataKeyNames="employid" AllowPaging="True" AutoGenerateColumns="False" PageSize="5" CellPadding="3" 
             Width="1262px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <Columns>
               <asp:TemplateField  HeaderText="ID">
                   <ItemTemplate><asp:Label ID="lblid" runat="server" Text='<%#Eval("employid")%>'></asp:Label></ItemTemplate>
               </asp:TemplateField>
                <asp:TemplateField  HeaderText="FullName">
                   <ItemTemplate><asp:Label ID="lblname" runat="server" Text='<%#Eval("employfullname")%>'></asp:Label></ItemTemplate>
                   
               </asp:TemplateField>
                 <asp:TemplateField  HeaderText="Date of birth">
                   <ItemTemplate><asp:Label ID="lbldob" runat="server" Text='<%#Eval("employdob")%>'></asp:Label></ItemTemplate>
                     
               </asp:TemplateField>
                 <asp:TemplateField  HeaderText="Gender">
                   <ItemTemplate><asp:Label ID="lblgender" runat="server" Text='<%#Eval("employgender")%>'></asp:Label></ItemTemplate>
                    
               </asp:TemplateField>
                 <asp:TemplateField  HeaderText="Blood Group">
                   <ItemTemplate><asp:Label ID="lblbldgrp" runat="server" Text='<%#Eval("employbloodgrp")%>'></asp:Label></ItemTemplate>
                    
               </asp:TemplateField>
                 <asp:TemplateField  HeaderText="Permanent mobile No.">
                   <ItemTemplate><asp:Label ID="lblmob1" runat="server" Text='<%#Eval("employmobno1")%>'></asp:Label></ItemTemplate>
                    
               </asp:TemplateField>
                 <asp:TemplateField  HeaderText="Temporary mobile NO.">
                   <ItemTemplate><asp:Label ID="lblmob2" runat="server" Text='<%#Eval("employmobno2")%>'></asp:Label></ItemTemplate>
                    
               </asp:TemplateField>
                  <asp:TemplateField  HeaderText="Email mail ID">
                   <ItemTemplate><asp:Label ID="lblmailid" runat="server" Text='<%#Eval("employmailid")%>'></asp:Label></ItemTemplate>
                     
               </asp:TemplateField>
                  <asp:TemplateField  HeaderText="Address">
                   <ItemTemplate><asp:Label ID="lbladr" runat="server" Text='<%#Eval("employaddress")%>'></asp:Label></ItemTemplate>
                     
               </asp:TemplateField>
                  <asp:TemplateField  HeaderText="Qualification">
                   <ItemTemplate><asp:Label ID="lblqal" runat="server" Text='<%#Eval("employqualification")%>'></asp:Label></ItemTemplate>
                      
               </asp:TemplateField>
                  <asp:TemplateField  HeaderText="Designation">
                   <ItemTemplate><asp:Label ID="lbldesgn" runat="server" Text='<%#Eval("employdesignation") %>'></asp:Label></ItemTemplate>
                      
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
        <br />
         <asp:GridView ID="grdwrkdtlsview" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="5"
            cellpadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" >
            <Columns>
                <asp:TemplateField HeaderText="Employee ID">
                    <ItemTemplate><asp:Label ID="lblwrkid" runat="server" Text='<%#Eval("employid")%>'></asp:Label></ItemTemplate>
                   
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Project Working on">
                    <ItemTemplate><asp:Label ID="lblwrkprjwrkon" runat="server" Text='<%#Eval("prjtwrking")%>'></asp:Label></ItemTemplate>
                    
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Workstarted on">
                    <ItemTemplate><asp:Label ID="lblwrkstrton" runat="server" Text='<%#Eval("workstart")%>'></asp:Label></ItemTemplate>
                   
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Workcompleted on">
                    <ItemTemplate><asp:Label ID="lblwrkcmplton" runat="server" Text='<%#Eval("wrkcmplt")%>'></asp:Label></ItemTemplate>
                   
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="training program">
                    <ItemTemplate><asp:Label ID="lbltrngprg" runat="server" Text='<%#Eval("trainingprgrms")%>'></asp:Label></ItemTemplate>
                    
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
