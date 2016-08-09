<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="turning_angles.aspx.cs" Inherits="DXWebApplication1._turning_angles" %>


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
    <SettingsText Title="Углы поворотов" />
    <EditFormLayoutProperties ColCount="2">
        <Items>
            <dx:GridViewColumnLayoutItem ColumnName="ПК">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="ofst">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="type1">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="angle_grad">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="angle_min">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="direction">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="radius">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="type">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="Номер листа">
            </dx:GridViewColumnLayoutItem>
            <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right">
            </dx:EditModeCommandLayoutItem>
        </Items>
    </EditFormLayoutProperties>
    <Columns>
        <dx:GridViewCommandColumn Caption="Редактирование" ShowEditButton="True" VisibleIndex="12" ShowDeleteButton="True" ShowNewButtonInHeader="True">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="is_active" Visible="False" VisibleIndex="15">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="main_type" Visible="False" VisibleIndex="16">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="div_code" Visible="False" VisibleIndex="14">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="main_id" ReadOnly="True" Visible="False" VisibleIndex="13">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Направление" FieldName="direction" VisibleIndex="6">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Угол, град" FieldName="angle_grad" VisibleIndex="4">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="angle_min" VisibleIndex="5" Caption="Угол, мин">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Плюсовка" FieldName="ofst" VisibleIndex="2">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="expl_km" Visible="False" VisibleIndex="17">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="row_index" Visible="False" VisibleIndex="18">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Радиус, м" FieldName="radius" VisibleIndex="7">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Количество типоразмеров отводов" FieldName="type" VisibleIndex="8">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Тип (ОГГ, ОХГ, упругий изгиб)" FieldName="type1" VisibleIndex="3">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="ПК" FieldName="picket_id!Key" VisibleIndex="1">
            <PropertiesComboBox DataSourceID="XpoDataSource3" TextField="picket_value" ValueField="picket_id" TextFormatString="{1}">
                <Columns>
                    <dx:ListBoxColumn Caption="КМ" FieldName="picket_point" />
                    <dx:ListBoxColumn Caption="ПК" FieldName="picket_value" />
                </Columns>
            </PropertiesComboBox>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn Caption="Номер листа" FieldName="sheet_id!Key" VisibleIndex="10">
            <PropertiesComboBox DataSourceID="XpoDataSource2" TextField="sheet_number" ValueField="sheet_id" TextFormatString="{1}">
                <Columns>
                    <dx:ListBoxColumn Caption="Номер комплекта документации" FieldName="book_number" />
                    <dx:ListBoxColumn Caption="Номер листа" FieldName="sheet_number" />
                </Columns>
            </PropertiesComboBox>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn Caption="КМ" FieldName="picket_id!Key" VisibleIndex="0">
            <PropertiesComboBox DataSourceID="XpoDataSource3" TextField="picket_point" ValueField="picket_id">
            </PropertiesComboBox>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn Caption="Номер комплекта документации" FieldName="sheet_id!Key" ReadOnly="True" VisibleIndex="9">
            <PropertiesComboBox DataSourceID="XpoDataSource2" TextField="book_number" ValueField="sheet_id">
            </PropertiesComboBox>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataHyperLinkColumn Caption="Файл" FieldName="file_name" VisibleIndex="11">
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


<dx:XpoDataSource ID="XpoDataSource1" runat="server" DefaultSorting="" TypeName="DXWebApplication1.DataModel.KUTA_ECA.turning_angles">
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