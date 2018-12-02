<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Trang Chủ</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mid" Runat="Server">
    <asp:DataList ID="List_Diadiem" runat="server" RepeatColumns="4" DataKeyField="id" DataSourceID="SqlDataSource1">
       <ItemTemplate>
            <div class="Khung">
                <div class="Diadiem">
                    <br /> 
            <asp:Image ID="img" runat="server" ImageUrl='<%# "~/Img/" + Eval("image") %>' Width="150px" />
            <br /> 
            Địa điểm:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            Giá:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            Thời gian:
            <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
            <br />
            Số người:
            <asp:Label ID="peopleLabel" runat="server" Text='<%# Eval("people") %>' />
            <br />           
            Loại:
            <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br />
            <asp:Button Text="Đặt Tour" Width="100px" runat="server" ForeColor="Red"/>
                    <br />
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebDuLichConnectionString %>" DeleteCommand="DELETE FROM [tbl_Diadiem] WHERE [id] = @id" InsertCommand="INSERT INTO [tbl_Diadiem] ([id], [name], [price], [time], [people], [image], [type]) VALUES (@id, @name, @price, @time, @people, @image, @type)" SelectCommand="SELECT * FROM [tbl_Diadiem]" UpdateCommand="UPDATE [tbl_Diadiem] SET [name] = @name, [price] = @price, [time] = @time, [people] = @people, [image] = @image, [type] = @type WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="id" Type="String" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="price" Type="String" />
        <asp:Parameter Name="time" Type="String" />
        <asp:Parameter Name="people" Type="String" />
        <asp:Parameter Name="image" Type="String" />
        <asp:Parameter Name="type" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="price" Type="String" />
        <asp:Parameter Name="time" Type="String" />
        <asp:Parameter Name="people" Type="String" />
        <asp:Parameter Name="image" Type="String" />
        <asp:Parameter Name="type" Type="String" />
        <asp:Parameter Name="id" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

