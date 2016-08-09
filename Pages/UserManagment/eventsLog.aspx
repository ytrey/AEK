<%@ Page Title="Журнал событий" Language="C#" MasterPageFile="~/Light.master" AutoEventWireup="true" CodeBehind="eventsLog.aspx.cs" Inherits="ECA.Pages.UserManagment.eventsLog" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Журнал событий
    </h2>
    <asp:Label ID="temp1" runat="server" Text="" Height = "15px" Visible="true" />
    <div>
        <asp:Label ID="EventsLogViewLabel" runat="server" Text="Фильтровать по содержимому:" Height = "20px" Width = "200px" Visible="True" Style="text-indent: 5px"/>
        <asp:TextBox ID="EventsLogViewTextBox" runat="server" Height = "15px" Width = "200px" Visible="True" />
        <asp:Button ID="EventsLogViewButton" runat="server" Text="Фильтр" Height = "25px" Width = "200px" Visible="True" onclick="ButtonSetFilter_Click" />
    </div>
    <asp:Label ID="Label1" runat="server" Text="" Height = "5px" Visible="true" />
    <div>
        <asp:Label ID="EventsLogViewLabel2" runat="server" Text=" C:" Height = "20px" Width = "20px" Visible="True" Style="text-indent: 10px"/>
        <asp:TextBox ID="EventsLogViewStartTime" runat="server" Height = "15px" Width = "145px" Visible="True" />
        <asp:Label ID="EventsLogViewLabel3" runat="server" Text=" по:" Height = "20px" Width = "25px" Visible="True" Style="text-indent: 5px"/>
        <asp:TextBox ID="EventsLogViewStopTime" runat="server" Height = "15px" Width = "145px" Visible="True" />
        <asp:RegularExpressionValidator ID="regexpEventsLogViewStartTime" runat="server" ErrorMessage="Ошибка формата начала (yyyy-mm-dd hh:mm:ss)" 
       ControlToValidate="EventsLogViewStartTime" ValidationExpression="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01]) ([0-1]\d|2[0-3])(:[0-5]\d){2}$" Visible="true" Style="text-indent: 20px" />
        <asp:RegularExpressionValidator ID="regexpEventsLogViewStopTime" runat="server" ErrorMessage="Ошибка формата конца (yyyy-mm-dd hh:mm:ss)" 
       ControlToValidate="EventsLogViewStopTime" ValidationExpression="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01]) ([0-1]\d|2[0-3])(:[0-5]\d){2}$" Visible="true" Style="text-indent: 20px" />
    </div>
    <asp:Label ID="Label2" runat="server" Text="" Height = "5px" Visible="true" />
    <div>
        <asp:CheckBox ID="LogingEvents" runat="server" Text="События логирования" Height = "35px" Checked = "true" AutoPostBack = "true" OnCheckedChanged="ButtonSetFilter_Click"/>
        <asp:CheckBox ID="DbEvents" runat="server" Text="События базы данных" Height = "35px" Checked = "true" AutoPostBack = "true" OnCheckedChanged="ButtonSetFilter_Click"/>
        <asp:CheckBox ID="UserManagmentEvents" runat="server" Text="События управления пользователями" Height = "35px" Checked = "true" AutoPostBack = "true" OnCheckedChanged="ButtonSetFilter_Click"/>
    </div>
    <asp:Label ID="temp2" runat="server" Text="" Height = "15px" Visible="true" />
    <div style="width: 100%; height: 400px; overflow: scroll">
    <asp:GridView runat="server" ID="EventsLog" AutoGenerateColumns="False" Width="100%" DataSourceID="SqlDataSource1" ShowHeaderWhenEmpty="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1">
        <Columns>
            <asp:BoundField DataField="time" HeaderText="Время события" SortExpression = "time" />
            <asp:BoundField DataField="userName" HeaderText="Пользователь" SortExpression = "userName" />
            <asp:BoundField DataField="type" HeaderText="Тип события" SortExpression = "type" />
            <asp:BoundField DataField="description" HeaderText="Событие" SortExpression = "description" />
            <asp:BoundField DataField="comment" HeaderText="Замечание" SortExpression = "comment" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" Height="40px" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" Height="20px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
    </div> 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
      ProviderName="System.Data.Odbc"></asp:SqlDataSource>
    <asp:Label ID="Label3" Text="" runat="server" Height="15px"/>
    <div align = "center">
        <asp:Button ID="ConvertToExcel" runat="server" Text="Экспортировать в Excel" Height = "25px" Width = "200px" OnClick="OnConvertToExcel" Visible="False"/>
    </div>
</asp:Content>
