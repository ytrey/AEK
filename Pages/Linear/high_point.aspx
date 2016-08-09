<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="high_point.aspx.cs" Inherits="DXWebApplication1._high_point" %>


<%@ Register assembly="DevExpress.Xpo.v15.2, Version=15.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Xpo" tagprefix="dx" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

<asp:Panel ID="Panel1" runat="server" Height="50px" HorizontalAlign="Right">
  <asp:ImageButton ID="ImageButton1" AlternateText="Экспорт в Excel" runat="server" ImageUrl="~/Content/Images/excel.png" OnClick="ImageButton1_Click" /> 
</asp:Panel>

    <%-- DXCOMMENT: Configure ASPxGridView control --%>
<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XpoDataSource1" ClientInstanceName="ASPxGridView1"
    Width="100%" KeyFieldName="main_id" EnableTheming="True" Theme="PlasticBlue" OnRowInserting="ASPxGridView1_RowInserting" OnCommandButtonInitialize="ASPxGridView1_CommandButtonInitialize">
    <SettingsPager PageSize="32" />
    <SettingsEditing Mode="PopupEditForm">
    </SettingsEditing>
    <Settings VerticalScrollBarMode="Visible" VerticalScrollableHeight="350" ShowTitlePanel="True" />
    <SettingsPopup>
        <EditForm HorizontalAlign="Center" Modal="True" VerticalAlign="WindowCenter" AllowResize="True" Width="1000px" />
    </SettingsPopup>
    <SettingsText Title="Проектные высотные отметки" />
    <EditFormLayoutProperties ColCount="2">
        <Items>
            <dx:GridViewColumnLayoutItem ColumnName="ПК">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="ofst">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="axis_height">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="axis_depth">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="point_distance">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="sheet_id!Key">
            </dx:GridViewColumnLayoutItem>
            <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right">
            </dx:EditModeCommandLayoutItem>
        </Items>
    </EditFormLayoutProperties>
    <Columns>
        <dx:GridViewDataTextColumn FieldName="ofst" VisibleIndex="2" Caption="Плюсовка">
            <PropertiesTextEdit DisplayFormatString="{0:N2}">
            </PropertiesTextEdit>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="point_distance" VisibleIndex="5" Caption="Расстояние между  ПК отметками">
            <PropertiesTextEdit DisplayFormatString="{0:N2}">
            </PropertiesTextEdit>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="axis_depth" VisibleIndex="4" Caption="Глубина заложения оси трубопровода">
            <PropertiesTextEdit DisplayFormatString="{0:N2}">
            </PropertiesTextEdit>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="КМ" FieldName="picket_id!Key" VisibleIndex="0">
            <PropertiesComboBox DataSourceID="XpoDataSource3" TextField="picket_point" ValueField="picket_id">
            </PropertiesComboBox>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn Caption="ПК" FieldName="picket_id!Key" VisibleIndex="1">
            <PropertiesComboBox DataSourceID="XpoDataSource3" ValueField="picket_id" TextFormatString="{1}">
                <Columns>
                    <dx:ListBoxColumn Caption="КМ" FieldName="picket_point" />
                    <dx:ListBoxColumn Caption="ПК" FieldName="picket_value" />
                </Columns>
            </PropertiesComboBox>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn Caption="Номер комплекта документации" FieldName="sheet_id!Key" VisibleIndex="6">
            <PropertiesComboBox DataSourceID="XpoDataSource2" TextField="book_number" ValueField="sheet_id" TextFormatString="{0}">
                <Columns>
                    <dx:ListBoxColumn Caption="Номер комплекта документации" FieldName="book_number" />
                    <dx:ListBoxColumn Caption="Номер листа" FieldName="sheet_number" />
                </Columns>
            </PropertiesComboBox>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn Caption="Номер листа" FieldName="sheet_id!Key" VisibleIndex="7">
            <PropertiesComboBox DataSourceID="XpoDataSource2" TextField="sheet_number" ValueField="sheet_id">
            </PropertiesComboBox>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataTextColumn FieldName="axis_height" VisibleIndex="3" Caption="Высота оси МН в БСВ 1977 г., м">
            <PropertiesTextEdit DisplayFormatString="{0:N2}">
            </PropertiesTextEdit>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewCommandColumn Caption="Редактирование" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="9" ShowDeleteButton="True">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewCommandColumn>
        <dx:GridViewDataHyperLinkColumn Caption="Файл" FieldName="file_name" VisibleIndex="8">
            <PropertiesHyperLinkEdit Text="Открыть">
            </PropertiesHyperLinkEdit>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
            <CellStyle HorizontalAlign="Center" Wrap="True">
            </CellStyle>
        </dx:GridViewDataHyperLinkColumn>
    </Columns>

<Styles AdaptiveDetailButtonWidth="22"></Styles>

    <Paddings Padding="0px" />
    <Border BorderWidth="0px" />
    <BorderBottom BorderWidth="1px" />
    <%-- DXCOMMENT: Configure ASPxGridView's columns in accordance with datasource fields --%>
</dx:ASPxGridView>


<dx:XpoDataSource ID="XpoDataSource1" runat="server" DefaultSorting="" TypeName="DXWebApplication1.DataModel.KUTA_ECA.high_point">
</dx:XpoDataSource>
<dx:XpoDataSource ID="XpoDataSource2" runat="server" TypeName="DXWebApplication1.DataModel.KUTA_ECA.sheets">
</dx:XpoDataSource>


    <dx:XpoDataSource ID="XpoDataSource3" runat="server" TypeName="DXWebApplication1.DataModel.KUTA_ECA.picket">
    </dx:XpoDataSource>


    <dx:XpoDataSource ID="XpoDataSource4" runat="server" TypeName="DXWebApplication1.DataModel.KUTA_ECA.source">
    </dx:XpoDataSource>

        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" GridViewID="ASPxGridView1" FileName="Export">
    </dx:ASPxGridViewExporter>

</asp:Content>