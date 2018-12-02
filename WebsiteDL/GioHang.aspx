<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    Đăng Nhập
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mid" runat="Server">

    <h2 class="text-center">Giỏ hàng</h2>
    <div class="container">
        <asp:Repeater runat="server" ID="rpGioHang">
            <ItemTemplate>
                <table id="cart" class="table table-hover table-condensed">
                    <thead>
                        <tr>
                            <th style="width: 30%">Tên sản phẩm</th>
                            <th style="width: 10%">Giá</th>
                            <th style="width: 28%">Hình ảnh</th>
                            <th style="width: 22%" class="text-center">Thành tiền</th>
                            <th style="width: 10%"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td data-th="Product">
                                <div class="row">
                                    <div class="col-sm-2 hidden-xs">
                                        <img src="<%#Eval("ImageUrl") %>" alt="<%#Eval("Name")%>" class="img-responsive" width="100">
                                    </div>
                                    <div class="col-sm-10">
                                        <h4 class="nomargin"><%#Eval("Name") %></h4>
                                        <p>Mô tả của <%#Eval("Name") %></p>
                                    </div>
                                </div>
                            </td>
                            <td data-th="Price"><%#Eval("Price") %> đ</td>
                            <td data-th="Quantity">
                                <input class="form-control text-center" value="1" type="number">
                            </td>
                            <td data-th="Subtotal" class="text-center"><%#Eval("Price") %> đ</td>
                            <td class="actions" data-th="">
                                <button type="button" class="btn btn-danger btn-sm" onclick="deleteItem('<%#Eval("Name") %>')" id="btn-delete">
                                    <i class="fa fa-trash-o"></i>Xóa
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>

            </ItemTemplate>
            <FooterTemplate>
                <div class="visible-xs">
                    <div>
                        <a href="TrangChu.aspx" class="btn btn-warning"><i class="fa fa-angle-left"></i>Tiếp tục mua hàng</a>
                        <div colspan="2" class="hidden-xs"></div>
                        <div class="hidden-xs text-center">
                            <strong>Tổng tiền <%#GetTotal().ToString() %> đ</strong>
                        </div>
                        <button type="button" onclick="thanhToan()" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></button>
                    </div>
                </div>
            </FooterTemplate>

        </asp:Repeater>

    </div>
    <script>
        deleteItem = function (name) {
            $.ajax({
                type: "POST",
                url: "GioHang.aspx/DeleteItem",
                data: '{name: "' + name + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    location.reload();
                },
                failure: function (response) {

                }
            });
        }
        thanhToan = function () {
            $.ajax({
                type: "POST",
                url: "GioHang.aspx/ThanhToan",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    location.reload();
                },
                failure: function (response) {

                }
            });
        }
    </script>

</asp:Content>

