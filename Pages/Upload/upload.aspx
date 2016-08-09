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
    <div style="height:50px; font-size:medium"><dx:ASPxHyperLink ID="hyperlink" NavigateUrl="~/Content/������-������_������.xlsx" runat="server" Text="��������� ������" /></div>
    <div style="height:30px; font-size:medium"> 
        
        Excel-���� � ������� ��� ��������</div>
            <dx:ASPxUploadControl ID="UploadControl" runat="server" ClientInstanceName="UploadControl" Width="320"
            NullText="�������� Excel-����..." UploadMode="Advanced" ShowUploadButton="True" ShowProgressPanel="True"
            OnFileUploadComplete="UploadControl_FileUploadComplete">
            <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
            <ValidationSettings MaxFileSize="104857600" AllowedFileExtensions=".xls,.xlsx">
            </ValidationSettings>
            <ClientSideEvents FileUploadComplete="onFileUploadComplete" />
        </dx:ASPxUploadControl>
<div style="overflow-y: scroll; height:500px;">
    <br />
    
        <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="������� �3 - ��������� �������� �������" Font-Size="Small"></dx:ASPxLabel> <br />
    ����� ������ ������: <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px"></dx:ASPxTextBox>
    ����� ������ �����: <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="������� �1 - ��������� ����������" Font-Size="Small"></dx:ASPxLabel><br />
    ����� ������ ������: <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" Width="170px"></dx:ASPxTextBox>
    ����� ������ �����: <dx:ASPxTextBox ID="ASPxTextBox4" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="������� �2 - �����" Font-Size="Small"></dx:ASPxLabel><br />
    ����� ������ ������: <dx:ASPxTextBox ID="ASPxTextBox5" runat="server" Width="170px"></dx:ASPxTextBox>
    ����� ������ �����: <dx:ASPxTextBox ID="ASPxTextBox6" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="������� �4 - ������" Font-Size="Small"></dx:ASPxLabel><br />
    ����� ������ ������:<dx:ASPxTextBox ID="ASPxTextBox7" runat="server" Width="170px"></dx:ASPxTextBox>
    ����� ������ �����: <dx:ASPxTextBox ID="ASPxTextBox8" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel5" runat="server" Text="������� �5 - ���� ���������" Font-Size="Small"></dx:ASPxLabel><br />
    ����� ������ ������:<dx:ASPxTextBox ID="ASPxTextBox9" runat="server" Width="170px"></dx:ASPxTextBox>
    ����� ������ �����: <dx:ASPxTextBox ID="ASPxTextBox10" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel6" runat="server" Text="������� �6 - ���" Font-Size="Small"></dx:ASPxLabel><br />
    ����� ������ ������:<dx:ASPxTextBox ID="ASPxTextBox11" runat="server" Width="170px"></dx:ASPxTextBox>
    ����� ������ �����: <dx:ASPxTextBox ID="ASPxTextBox12" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel7" runat="server" Text="������� �7 - �������" Font-Size="Small"></dx:ASPxLabel><br />
    ����� ������ ������:<dx:ASPxTextBox ID="ASPxTextBox13" runat="server" Width="170px"></dx:ASPxTextBox>
    ����� ������ �����: <dx:ASPxTextBox ID="ASPxTextBox14" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel8" runat="server" Text="������� �8 - ������ ���" Font-Size="Small"></dx:ASPxLabel><br />
    ����� ������ ������: <dx:ASPxTextBox ID="ASPxTextBox15" runat="server" Width="170px"></dx:ASPxTextBox>
    ����� ������ �����: <dx:ASPxTextBox ID="ASPxTextBox16" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxLabel ID="ASPxLabel9" runat="server" Text="������� �9 - ������������� �������" Font-Size="Small"></dx:ASPxLabel><br />
    ����� ������ ������: <dx:ASPxTextBox ID="ASPxTextBox17" runat="server" Width="170px"></dx:ASPxTextBox>
    ����� ������ �����: <dx:ASPxTextBox ID="ASPxTextBox18" runat="server" Width="170px"></dx:ASPxTextBox><br />
        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="�������� � ��" Width="100px"></dx:ASPxButton>
        </div>


</asp:Content>