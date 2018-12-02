<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThemTour.aspx.cs" Inherits="ThemTour" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Thêm Tour
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mid" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Insert"  OnItemInserting="ItemInserting" Width="150px">
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            time:
            <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' />
            <br />
            people:
            <asp:TextBox ID="peopleTextBox" runat="server" Text='<%# Bind("people") %>' />
            <br />
            image:
            <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
            <br />
            type:
            <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
            <br />
            <br />
            Địa điểm:&nbsp;&nbsp;
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            <br />
            Giá:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            <br />
            Thời gian:&nbsp;&nbsp;
            <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' />
            <br />
            <br />
            Người:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="peopleTextBox" runat="server" Text='<%# Bind("people") %>' />
            <br />
            <br />
            Ảnh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" Height="23px" Width="235px" />
            <br />
            <br />
            Loại:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
            <br />
            time:
            <asp:Label ID="timeLabel" runat="server" Text='<%# Bind("time") %>' />
            <br />
            people:
            <asp:Label ID="peopleLabel" runat="server" Text='<%# Bind("people") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Bind("image") %>' />
            <br />
            type:
            <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
       
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WebDuLichConnectionString %>" DeleteCommand="DELETE FROM [tbl_Diadiem] WHERE [id] = @original_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([time] = @original_time) OR ([time] IS NULL AND @original_time IS NULL)) AND (([people] = @original_people) OR ([people] IS NULL AND @original_people IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL)) AND (([type] = @original_type) OR ([type] IS NULL AND @original_type IS NULL))" InsertCommand="INSERT INTO [tbl_Diadiem] ([id], [name], [price], [time], [people], [image], [type]) VALUES (@id, @name, @price, @time, @people, @image, @type)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_Diadiem]" UpdateCommand="UPDATE [tbl_Diadiem] SET [name] = @name, [price] = @price, [time] = @time, [people] = @people, [image] = @image, [type] = @type WHERE [id] = @original_id AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([time] = @original_time) OR ([time] IS NULL AND @original_time IS NULL)) AND (([people] = @original_people) OR ([people] IS NULL AND @original_people IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL)) AND (([type] = @original_type) OR ([type] IS NULL AND @original_type IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="String" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_time" Type="String" />
            <asp:Parameter Name="original_people" Type="String" />
            <asp:Parameter Name="original_image" Type="String" />
            <asp:Parameter Name="original_type" Type="String" />
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
            <asp:Parameter Name="original_id" Type="String" />
            <asp:Parameter Name="original_name" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_time" Type="String" />
            <asp:Parameter Name="original_people" Type="String" />
            <asp:Parameter Name="original_image" Type="String" />
            <asp:Parameter Name="original_type" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
     <a href="ListTour.aspx" style="padding-left: 300px">Danh sách tour</a>
</asp:Content>

