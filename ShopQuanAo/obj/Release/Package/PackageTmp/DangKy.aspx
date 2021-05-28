<%@ Page Title="" Language="C#" MasterPageFile="~/GiaoDien.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="ShopQuanAo.DangKy" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 80%;
            height: 340px;
        }
        .style2
        {
            text-align: left;
            font-weight: 700;
            color: #006666;
        }
      
        .style4
        {
            width: 158px;
        }
        .auto-style1 {
            text-align: left;
            font-weight: 700;
            color: #006666;
            height: 14px;
        }
        .auto-style2 {
            width: 158px;
            height: 14px;
        }
        .TextBox {
            outline-width: 0;
            border-radius:10px;
            border: 1px solid grey;
            padding-left:10px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
   
    <div style="width:691px;">
        <table class="style1" style="margin:20px auto;">
        <tr>
            <td class="style2">
                <asp:Label ID="lblTendangnhap" runat="server" Text="Tên đăng nhập" 
                    ForeColor="#663300"></asp:Label>
            &nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="txtTendangnhap" runat="server" Height="26px" Width="161px" CssClass="TextBox"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="rfvTendangnhap" runat="server" 
                    ErrorMessage="Chưa nhập tên đăng nhập" ControlToValidate="txtTendangnhap" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblUsername" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblMatkhau" runat="server" Text="Mật khẩu" ForeColor="#663300"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style3">
                <asp:TextBox ID="txtMatkhau" runat="server" Height="26px" Width="161px" 
                    TextMode="Password" CssClass="TextBox"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="rfvMatkhau" runat="server" 
                    ErrorMessage="Chưa nhập mật khẩu" ControlToValidate="txtMatkhau" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblNhaplaimatkhau" runat="server" Text="Nhập lại mật khẩu" 
                    ForeColor="#663300" ></asp:Label>
            &nbsp;&nbsp;&nbsp;
            </td>
            <td class="style3">
                <asp:TextBox ID="txtNLMatkhau" runat="server" Height="26px" Width="161px" 
                    TextMode="Password" CssClass="TextBox"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="rfvNLMatkhau" runat="server" 
                    ErrorMessage="Chưa nhập mật khẩu lần 2" ControlToValidate="txtNLMatkhau" 
                    ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:CompareValidator ID="cvMatkhau" runat="server" 
                    ErrorMessage="Mật khẩu không khớp" ControlToCompare="txtMatkhau" 
                    ControlToValidate="txtNLMatkhau" ForeColor="Red"></asp:CompareValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="Họ tên" ForeColor="#663300"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtHoten" runat="server" Height="26px" Width="161px" CssClass="TextBox"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="rfvHoten" runat="server" 
                    ErrorMessage="Chưa nhập họ tên" ControlToValidate="txtHoten" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="Giới tính" ForeColor="#663300"></asp:Label>
            </td>
            <td class="style2">
                <asp:RadioButtonList ID="rblGioitinh" runat="server" ForeColor="#663300" >
                    <asp:ListItem>Nam</asp:ListItem>
                    <asp:ListItem>Nữ</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="rfvGioitinh" runat="server" 
                    ErrorMessage="Chưa chọn giới tính" ControlToValidate="rblGioitinh" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="Địa chỉ" ForeColor="#663300"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtDiachi" runat="server" Height="26px" Width="161px" CssClass="TextBox"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="rfvDiachi" runat="server" 
                    ErrorMessage="Chưa nhập địa chỉ" ControlToValidate="txtDiachi" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="Email" ForeColor="#663300"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtEmail" runat="server" Height="26px" Width="161px" CssClass="TextBox"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RegularExpressionValidator ID="rexEmail" runat="server" 
                    ErrorMessage="Nhập sai email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ControlToValidate="txtEmail" ForeColor="Red"></asp:RegularExpressionValidator>
                &nbsp;<br />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Chưa nhập email" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblEmail" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                         <asp:Label ID="lblDienthoai" runat="server" Text="Số điện thoại" ForeColor="#663300"></asp:Label></td>
            <td class="style3">
                <asp:TextBox ID="txtDienthoai" runat="server"  Height="26px" Width="161px" 
                    TabIndex="1" ForeColor="#663300" CssClass="TextBox"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:CompareValidator ID="cvSodienthoai" runat="server" 
                    ControlToValidate="txtDienthoai" ErrorMessage="Chỉ nhập số" 
                    ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvSodienthoai" runat="server" 
                    ControlToValidate="txtDienthoai" ErrorMessage="Chưa nhập số điện thoại" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnXacnhan" runat="server" Text="Xác nhận" ForeColor="Black" 
                    Height="35px" Width="102px" onclick="btnXacnhan_Click" CssClass="btn btn-success" />     
                <br />
            </td>
        </tr>
            <tr>
                <td class="auto-style1" colspan="2"></td>
                <td class="auto-style2"></td>
            </tr>
        <tr>
            <td class="style2" colspan="3" align="center">
                <asp:Label ID="lblThongBao" runat="server" Font-Size="Large" ForeColor="Red" ></asp:Label>
            </td>
        </tr>
    </table>
    
    </div>
         </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
