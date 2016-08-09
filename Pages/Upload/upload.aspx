<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="upload.aspx.cs" Inherits="DXWebApplication1._upload" %>


<%@ Register assembly="DevExpress.Xpo.v15.2, Version=15.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Xpo" tagprefix="dx" %>



<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
        function onFileUploadComplete(s, e) {
            if (e.callbackData) {
                var fileData = e.callbackData.split('|');
                var fileName = fileData[0],
                    fileUrl = fileData[1],
                    fileSize = fileData[2];
            }
        }
    </script>

    <div style="height:30px; font-size:medium"></div>
    <div style="height:50px; font-size:medium"><dx:ASPxHyperLink ID="hyperlink" NavigateUrl="~/Content/Куюмба-Тайшет_Шаблон.xlsx" runat="server" Text="Загрузить шаблон" /></div>
    <div style="height:30px; font-size:medium"> 
        
        Excel-файл с формами для загрузки</div>
            <dx:ASPxUploadControl ID="UploadControl" runat="server" ClientInstanceName="UploadControl" Width="320"
            NullText="Выберите Excel-файл..." UploadMode="Advanced" ShowUploadButton="True" ShowProgressPanel="True"
            OnFileUploadComplete="UploadControl_FileUploadComplete">
            <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
            <ValidationSettings MaxFileSize="104857600" AllowedFileExtensions=".xls,.xlsx">
            </ValidationSettings>
            <ClientSideEvents FileUploadComplete="onFileUploadComplete" />
        </dx:ASPxUploadControl>
<div style="overflow-y: scroll; height:500px;">
    <br />
    
        <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Вкладка №3 - Проектные высотные отметки" Font-Size="Small"></dx:ASPxLabel> <br />
    Номер строки начала: <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px"></dx:ASPxTextBox>
    Номер строки конца: <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Вкладка №1 - Комплекты документов" Font-Size="Small"></dx:ASPxLabel><br />
    Номер строки начала: <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" Width="170px"></dx:ASPxTextBox>
    Номер строки конца: <dx:ASPxTextBox ID="ASPxTextBox4" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Вкладка №2 - Листы" Font-Size="Small"></dx:ASPxLabel><br />
    Номер строки начала: <dx:ASPxTextBox ID="ASPxTextBox5" runat="server" Width="170px"></dx:ASPxTextBox>
    Номер строки конца: <dx:ASPxTextBox ID="ASPxTextBox6" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="Вкладка №4 - Уклоны" Font-Size="Small"></dx:ASPxLabel><br />
    Номер строки начала:<dx:ASPxTextBox ID="ASPxTextBox7" runat="server" Width="170px"></dx:ASPxTextBox>
    Номер строки конца: <dx:ASPxTextBox ID="ASPxTextBox8" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="Вкладка №5 - Углы поворотов" Font-Size="Small"></dx:ASPxLabel><br />
    Номер строки начала:<dx:ASPxTextBox ID="ASPxTextBox9" runat="server" Width="170px"></dx:ASPxTextBox>
    Номер строки конца: <dx:ASPxTextBox ID="ASPxTextBox10" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="Вкладка №6 - УЗА" Font-Size="Small"></dx:ASPxLabel><br />
    Номер строки начала:<dx:ASPxTextBox ID="ASPxTextBox11" runat="server" Width="170px"></dx:ASPxTextBox>
    Номер строки конца: <dx:ASPxTextBox ID="ASPxTextBox12" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="Вкладка №7 - Вантузы" Font-Size="Small"></dx:ASPxLabel><br />
    Номер строки начала:<dx:ASPxTextBox ID="ASPxTextBox13" runat="server" Width="170px"></dx:ASPxTextBox>
    Номер строки конца: <dx:ASPxTextBox ID="ASPxTextBox14" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="Вкладка №8 - Реестр ЭГП" Font-Size="Small"></dx:ASPxLabel><br />
    Номер строки начала: <dx:ASPxTextBox ID="ASPxTextBox15" runat="server" Width="170px"></dx:ASPxTextBox>
    Номер строки конца: <dx:ASPxTextBox ID="ASPxTextBox16" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel9" runat="server" Text="Вкладка №9 - Классификатор грунтов" Font-Size="Small"></dx:ASPxLabel><br />
    Номер строки начала: <dx:ASPxTextBox ID="ASPxTextBox17" runat="server" Width="170px"></dx:ASPxTextBox>
    Номер строки конца: <dx:ASPxTextBox ID="ASPxTextBox18" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Загрузка в БД" Width="100px"></dx:ASPxButton>
        </div>


</asp:Content>