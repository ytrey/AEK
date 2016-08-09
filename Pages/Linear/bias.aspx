<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="bias.aspx.cs" Inherits="DXWebApplication1._bias" %>


<%@ Register assembly="DevExpress.Xpo.v15.2, Version=15.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Xpo" tagprefix="dx" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <%-- DXCOMMENT: Configure ASPxGridView control --%>

<asp:Panel ID="Panel1" runat="server" Height="50px" HorizontalAlign="Right">
  <asp:ImageButton ID="ImageButton1" AlternateText="Экспорт в Excel" runat="server" ImageUrl="~/Content/Images/excel.png" OnClick="ImageButton1_Click" /> 
</asp:Panel>

<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XpoDataSource1" ClientInstanceName="ASPxGridView1"
    Width="100%" KeyFieldName="main_id" EnableTheming="True" Theme="PlasticBlue" OnRowInserting="ASPxGridView1_RowInserting1" OnCommandButtonInitialize="ASPxGridView1_CommandButtonInitialize">
    <SettingsPager PageSize="32" />
    <SettingsEditing Mode="PopupEditForm">
    </SettingsEditing>
    <Settings VerticalScrollBarMode="Visible" VerticalScrollableHeight="350" ShowTitlePanel="True" />
    <SettingsPopup>
        <EditForm HorizontalAlign="Center" Modal="True" VerticalAlign="WindowCenter" AllowResize="True" MinWidth="1000px" />
    </SettingsPopup>
    <SettingsText Title="Уклоны" />
    <EditFormLayoutProperties ColCount="2">
        <Items>
            <dx:GridViewColumnLayoutItem ColumnName="picket_beg_id!Key" Caption="ПК начала чертежа">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="offset_beg" Caption="Плюсовка начала чертежа, м">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="picket_end_id!Key" Caption="ПК конца чертежа:">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="offset_end" Caption="Плюсовка конца чертежа, м">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="bias_value" Caption="Значение уклона, м">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="distance">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="sheet_id!Key">
            </dx:GridViewColumnLayoutItem>
            <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right">
            </dx:EditModeCommandLayoutItem>
        </Items>
    </EditFormLayoutProperties>
    <Columns>
        <dx:GridViewCommandColumn Caption="Редактирование" ShowEditButton="True" VisibleIndex="11" ShowNewButtonInHeader="True" ShowDeleteButton="True">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn Caption="Уклон, м" FieldName="bias_value" VisibleIndex="2">
            <PropertiesTextEdit DisplayFormatString="{0:N2}">
            </PropertiesTextEdit>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
            <CellStyle HorizontalAlign="Right">
            </CellStyle>
            <ExportCellStyle HorizontalAlign="Center">
            </ExportCellStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Расстояние, м" FieldName="distance" VisibleIndex="3">
            <PropertiesTextEdit DisplayFormatString="{0:N2}">
            </PropertiesTextEdit>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
            <CellStyle HorizontalAlign="Right">
            </CellStyle>
            <ExportCellStyle HorizontalAlign="Center">
            </ExportCellStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewBandColumn Caption="Начало" Name="Начало" VisibleIndex="0">
            <Columns>
                <dx:GridViewDataTextColumn Caption="Плюсовка, м" FieldName="offset_beg" VisibleIndex="2">
                    <PropertiesTextEdit DisplayFormatString="{0:N2}">
                    </PropertiesTextEdit>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Right">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="ПК" FieldName="picket_beg_id!Key" VisibleIndex="1">
                    <PropertiesComboBox DataSourceID="XpoDataSource3" ValueField="picket_id" TextFormatString="{1}">
                        <Columns>
                            <dx:ListBoxColumn Caption="КМ" FieldName="picket_point" />
                            <dx:ListBoxColumn Caption="ПК" FieldName="picket_value" />
                        </Columns>
                    </PropertiesComboBox>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Right">
                    </CellStyle>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="КМ" FieldName="picket_beg_id!Key" VisibleIndex="0">
                    <PropertiesComboBox DataSourceID="XpoDataSource3" TextField="picket_point" ValueField="picket_id">
                    </PropertiesComboBox>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Right">
                    </CellStyle>
                </dx:GridViewDataComboBoxColumn>
            </Columns>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
            <ExportCellStyle HorizontalAlign="Center">
            </ExportCellStyle>
        </dx:GridViewBandColumn>
        <dx:GridViewBandColumn Caption="Конец" Name="Конец" VisibleIndex="1">
            <Columns>
                <dx:GridViewDataTextColumn Caption="Плюсовка, м" FieldName="offset_end" VisibleIndex="2">
                    <PropertiesTextEdit DisplayFormatString="{0:N2}">
                    </PropertiesTextEdit>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Right">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="ПК" FieldName="picket_end_id!Key" VisibleIndex="1">
                    <PropertiesComboBox DataSourceID="XpoDataSource3" ValueField="picket_id" TextFormatString="{1}">
                        <Columns>
                            <dx:ListBoxColumn Caption="КМ" FieldName="picket_point" />
                            <dx:ListBoxColumn Caption="ПК" FieldName="picket_value" />
                        </Columns>
                    </PropertiesComboBox>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Right">
                    </CellStyle>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="КМ" FieldName="picket_end_id!Key" VisibleIndex="0">
                    <PropertiesComboBox DataSourceID="XpoDataSource3" TextField="picket_point" ValueField="picket_id">
                    </PropertiesComboBox>
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Right">
                    </CellStyle>
                </dx:GridViewDataComboBoxColumn>
            </Columns>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
            <ExportCellStyle HorizontalAlign="Center">
            </ExportCellStyle>
        </dx:GridViewBandColumn>
        <dx:GridViewDataHyperLinkColumn Caption="Файл" FieldName="file_name" VisibleIndex="10">
            <PropertiesHyperLinkEdit NavigateUrlFormatString="http://1tv.ru{0}" NullDisplayText="Нет" Text="Открыть">
            </PropertiesHyperLinkEdit>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
            <CellStyle HorizontalAlign="Center">
            </CellStyle>
        </dx:GridViewDataHyperLinkColumn>
        <dx:GridViewDataComboBoxColumn Caption="Номер комплекта документации" FieldName="sheet_id!Key" VisibleIndex="9">
            <PropertiesComboBox DataSourceID="XpoDataSource2" TextField="book_number" ValueField="sheet_id" TextFormatString="{1}">
                <Columns>
                    <dx:ListBoxColumn FieldName="sheet_number" Caption="Номер листа" />
                    <dx:ListBoxColumn FieldName="book_number" Caption="Номер комплекта документации" />
                </Columns>
            </PropertiesComboBox>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewDataComboBoxColumn Caption="Номер листа" FieldName="sheet_id!Key" VisibleIndex="8">
            <PropertiesComboBox DataSourceID="XpoDataSource2" TextField="sheet_number" ValueField="sheet_id">
            </PropertiesComboBox>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataComboBoxColumn>
    </Columns>


<Styles AdaptiveDetailButtonWidth="22"></Styles>

    <Paddings Padding="0px" />
    <Border BorderWidth="0px" />
    <BorderBottom BorderWidth="1px" />
    <%-- DXCOMMENT: Configure ASPxGridView's columns in accordance with datasource fields --%>

</dx:ASPxGridView>

<dx:XpoDataSource ID="XpoDataSource1" runat="server" DefaultSorting="" TypeName="DXWebApplication1.DataModel.KUTA_ECA.bias">
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