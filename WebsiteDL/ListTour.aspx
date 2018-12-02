<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListTour.aspx.cs" Inherits="ListTour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Danh sách tour
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mid" Runat="Server">
    <h2>Danh sách Tour</h2>
   <div style="padding:10px 0 0 300px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" >
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            <asp:BoundField DataField="people" HeaderText="people" SortExpression="people" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
           
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
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

        <br />
        <a href="ThemTour.aspx">Thêm tour</a>

   </div>
</asp:Content>

