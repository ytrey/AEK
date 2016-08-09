<%@ Page Title="Редактирование прав пользователей" Language="C#" MasterPageFile="~/Light.master" AutoEventWireup="true" CodeBehind="editUserRights.aspx.cs" Inherits="ECA.Pages.UserManagment.editUserRights" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Редактирование прав пользователей
    </h2>
    <div>
        <asp:Label ID="temp1" runat="server" Text="" Height = "15px" Visible="true" />
    </div>
    <div>
        <asp:Label ID="FilterUsersViewLabel" runat="server" Text="Фильтровать по содержимому:" Height = "20px" Width = "200px" Visible="True" Style="text-indent: 5px"/>
        <asp:TextBox ID="FilterUsersViewTextBox" runat="server" Height = "15px" Width = "200px" Visible="True" />
        <asp:Button ID="FilterUsersViewButton" runat="server" Text="Фильтр" Height = "25px" Width = "200px" Visible="True" onclick="ButtonSetFilter_Click" />
    </div>
    <div>
        <asp:CheckBox ID="AdministratorsAllow" runat="server" Text="Администраторы" Height = "35px" Checked = "true" AutoPostBack = "true"/>
        <asp:CheckBox ID="OperatorsAllow" runat="server" Text="Операторы" Height = "35px" Checked = "true" AutoPostBack = "true"/>
        <asp:CheckBox ID="UsersAllow" runat="server" Text="Пользователи" Height = "35px" Checked = "true" AutoPostBack = "true"/>
        <asp:CheckBox ID="UndefinedAllow" runat="server" Text="Без ролей" Height = "35px" Checked = "true" AutoPostBack = "true"/>
    </div>
    <div>
        <asp:Label ID="temp2" runat="server" Text="" Height = "15px" Visible="true" />
    </div>
    <asp:GridView runat="server" ID="UsersView" AutoGenerateColumns="False" Width="100%" OnRowEditing="SetAdministratorRole" 
                    ShowHeaderWhenEmpty="True" OnRowDeleting="SetOperatorRole" OnSelectedIndexChanging="SetUserRole" OnRowUpdating="DeleteUser" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical"> 
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="Имя пользоватлея" SortExpression = "UserName" />
            <asp:BoundField DataField="UserRole" HeaderText="Роль пользователя" SortExpression = "UserRole" />
             <asp:CommandField HeaderText="Назначение прав" ShowEditButton="True" 
                ShowDeleteButton="True" ShowCancelButton="True" DeleteText="Оператор" 
                EditText="Администратор" InsertText="Пользователь" 
                SelectText="Пользователь" NewText="Пользователь" ShowSelectButton="True"> 
                <ItemStyle HorizontalAlign="Center" Width="30%" /> 
            </asp:CommandField>
            <asp:ButtonField CommandName="Update" HeaderText="Удаление пользователя" 
                ShowHeader="True" Text="Удалить" >
                <ItemStyle HorizontalAlign="Center" Width="20%" />
            </asp:ButtonField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" Height="40px" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" Height="40px" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView> 

    <asp:Label ID="Label2" Text="" runat="server" Height="15px"/>

    <div align = "center">
       <asp:Button ID="ConvertToExcel" runat="server" Text="Экспортировать в Excel" Height = "25px" Width = "200px" OnClick="OnConvertToExcel" Visible="True"/>
    </div>
</asp:Content>
