<%@ Page Title="TrangChu" Language="C#" MasterPageFile="~/GiaoDien.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="ShopQuanAo.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dtlSanPham" runat="server" RepeatColumns = "3">
        <ItemTemplate>
         <div class="products">
                <a class="thumb" href="<%#Eval("MaSP", "ChiTietSanPham.aspx?action=chitiet&id={0}") %>"><img src="<%# Eval("HinhAnh") %>" alt="" /></a>
                <p class="TenSP"><%# Eval("TenSP") %></p>
                <p>Mã số : <%# Eval("MaSP") %></p>
                <p class="GiaBan">Giá bán : <%# Eval("GiaBan") %> VNĐ</p>
                 
                <a style="margin:10px;text-decoration:none; color:red;" href="<%#Eval("MaSP", "ChiTietSanPham.aspx?action=chitiet&id={0}") %>">Chi tiết...</a>
            </div>
        </ItemTemplate>
    </asp:DataList>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat ="server">
    <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/6.jpg" alt="anh1" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="images/7.jpg" alt="anh2" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="images/5.jpg" alt="anh3" width="1100" height="500">
    </div>
      <div class="carousel-item">
      <img src="images/3.jpg" alt="anh4" width="1100" height="500">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
 </asp:Content>
