<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="sheets.aspx.cs" Inherits="DXWebApplication1._sheets" %>


<%@ Register assembly="DevExpress.Xpo.v15.2, Version=15.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Xpo" tagprefix="dx" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel ID="Panel1" runat="server" Height="50px" HorizontalAlign="Right">
  <asp:ImageButton ID="ImageButton1" AlternateText="Экспорт в Excel" runat="server" ImageUrl="~/Content/Images/excel.png" OnClick="ImageButton1_Click" /> 
</asp:Panel>
    <%-- DXCOMMENT: Configure ASPxGridView control --%>
<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XpoDataSource1" ClientInstanceName="ASPxGridView1"
    Width="100%" KeyFieldName="sheet_id" EnableTheming="True" Theme="PlasticBlue" OnRowInserting="ASPxGridView1_RowInserting" OnCommandButtonInitialize="ASPxGridView1_CommandButtonInitialize">
    <SettingsPager PageSize="32" />
    <SettingsEditing Mode="PopupEditForm">
    </SettingsEditing>
    <Settings VerticalScrollBarMode="Visible" VerticalScrollableHeight="350" ShowTitlePanel="True" />
    <SettingsPopup>
        <EditForm HorizontalAlign="Center" Modal="True" VerticalAlign="WindowCenter" AllowResize="True" Width="1000px" />
    </SettingsPopup>
    <SettingsText Title="Листы" />
    <EditFormLayoutProperties ColCount="2">
        <Items>
            <dx:GridViewColumnLayoutItem ColumnName="book_id!Key">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="Тип документации">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="PK1" Caption="ПК начала чертежа">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="PK2" Caption="ПК конца чертежа">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="description">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="ofst_beg" Caption="Плюсовка начала чертежа, м">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="ofst_end" Caption="Плюсовка конца чертежа, м">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="sheet_number">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="file_name">
            </dx:GridViewColumnLayoutItem>
            <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right">
            </dx:EditModeCommandLayoutItem>
        </Items>
    </EditFormLayoutProperties>
    <Columns>
        <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="11" ShowDeleteButton="True">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="sheet_id" ReadOnly="True" Visible="False" VisibleIndex="14">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Номер листа" FieldName="sheet_number" VisibleIndex="3">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="prefix" Visible="False" VisibleIndex="13">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Имя файла" FieldName="file_name" VisibleIndex="8">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Наименование листа" FieldName="description" VisibleIndex="2">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Тип документации" FieldName="doc_type" VisibleIndex="1">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="book_number" ReadOnly="True" Visible="False" VisibleIndex="12">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataComboBoxColumn Caption="Обозначение комплекта" FieldName="book_id!Key" VisibleIndex="0">
            <PropertiesComboBox DataSourceID="XpoDataSource4" TextField="book_number" ValueField="book_id">
            </PropertiesComboBox>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataComboBoxColumn>
        <dx:GridViewBandColumn Caption="Начало чертежа" VisibleIndex="9">
            <Columns>
                <dx:GridViewDataComboBoxColumn Caption="КМ" FieldName="picket_beg_id!Key" VisibleIndex="0">
                    <PropertiesComboBox DataSourceID="XpoDataSource3" TextField="picket_point" ValueField="picket_id">
                    </PropertiesComboBox>
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="ПК" FieldName="picket_beg_id!Key" VisibleIndex="1" Name="PK1">
                    <PropertiesComboBox DataSourceID="XpoDataSource3" TextField="picket_value" TextFormatString="{1}" ValueField="picket_id">
                        <Columns>
                            <dx:ListBoxColumn Caption="КМ" FieldName="picket_point" />
                            <dx:ListBoxColumn Caption="ПК" FieldName="picket_value" />
                        </Columns>
                    </PropertiesComboBox>
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn Caption="Плюсовка, м" FieldName="ofst_beg" VisibleIndex="2">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
            </Columns>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewBandColumn>
        <dx:GridViewBandColumn Caption="Конец чертежа" VisibleIndex="10">
            <Columns>
                <dx:GridViewDataComboBoxColumn Caption="КМ" FieldName="picket_end_id!Key" VisibleIndex="0">
                    <PropertiesComboBox DataSourceID="XpoDataSource3" TextField="picket_point" ValueField="picket_id">
                    </PropertiesComboBox>
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="ПК" FieldName="picket_end_id!Key" VisibleIndex="1" Name="PK2">
                    <PropertiesComboBox DataSourceID="XpoDataSource3" TextField="picket_value" TextFormatString="{1}" ValueField="picket_id">
                        <Columns>
                            <dx:ListBoxColumn Caption="КМ" FieldName="picket_point" />
                            <dx:ListBoxColumn Caption="ПК" FieldName="picket_value" />
                        </Columns>
                    </PropertiesComboBox>
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn Caption="Плюсовка, м" FieldName="ofst_end" VisibleIndex="2">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
            </Columns>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewBandColumn>
    </Columns>

<Styles AdaptiveDetailButtonWidth="22"></Styles>

    <Paddings Padding="0px" />
    <Border BorderWidth="0px" />
    <BorderBottom BorderWidth="1px" />
    <%-- DXCOMMENT: Configure ASPxGridView's columns in accordance with datasource fields --%>
</dx:ASPxGridView>


<dx:XpoDataSource ID="XpoDataSource1" runat="server" DefaultSorting="" TypeName="DXWebApplication1.DataModel.KUTA_ECA.sheets">
</dx:XpoDataSource>


    <dx:XpoDataSource ID="XpoDataSource3" runat="server" TypeName="DXWebApplication1.DataModel.KUTA_ECA.picket">
    </dx:XpoDataSource>


    <dx:XpoDataSource ID="XpoDataSource4" runat="server" TypeName="DXWebApplication1.DataModel.KUTA_ECA.source">
    </dx:XpoDataSource>

        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" GridViewID="ASPxGridView1" FileName="Export">
    </dx:ASPxGridViewExporter>

</asp:Content>