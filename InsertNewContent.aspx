<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="InsertNewContent.aspx.cs" Inherits="WebApp_Assesment_11.InsertNewContent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 292px;
        }
        .auto-style2 {
            width: 292px;
            height: 36px;
        }
        .auto-style3 {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align : center">New Articles</h2>
    <table class="w-100">
        <tr>
            <td class="auto-style1">Articles Id</td>
            <td class="auto-style7">
                 <asp:TextBox ID="TxtId" runat="server"></asp:TextBox>
            </td>
         
        </tr>
        <tr>
            <td class="auto-style1">Article Content</td>
            <td>
                <asp:TextBox ID="TxtCnt" runat="server"></asp:TextBox>
            </td>
          
        </tr>
        <tr>
            <td class="auto-style1">Article Publich Date</td>
            <td>
                <asp:TextBox ID="TxtDt" runat="server"></asp:TextBox>
            </td>
          
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">
                <asp:Button ID="BtnAdd" runat="server" Text="Add Content" OnClick="BtnAdd_Click" />
            </td>
        
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
