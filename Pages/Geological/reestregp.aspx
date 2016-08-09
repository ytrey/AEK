<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="reestregp.aspx.cs" Inherits="DXWebApplication1._reestregp" %>


<%@ Register assembly="DevExpress.Xpo.v15.2, Version=15.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Xpo" tagprefix="dx" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

<asp:Panel ID="Panel1" runat="server" Height="50px" HorizontalAlign="Right">
  <asp:ImageButton ID="ImageButton1" AlternateText="Экспорт в Excel" runat="server" ImageUrl="~/Content/Images/excel.png" OnClick="ImageButton1_Click" /> 
</asp:Panel>

    <%-- DXCOMMENT: Configure ASPxGridView control --%>
<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XpoDataSource1" ClientInstanceName="ASPxGridView1"
    Width="100%" KeyFieldName="main_id" EnableTheming="True" Theme="PlasticBlue" OnRowInserting="ASPxGridView1_RowInserting">
    <SettingsPager PageSize="32" />
    <SettingsEditing Mode="PopupEditForm">
    </SettingsEditing>
    <Settings VerticalScrollBarMode="Visible" VerticalScrollableHeight="350" />
    <SettingsPopup>
        <EditForm AllowResize="True" HorizontalAlign="Center" Modal="True" VerticalAlign="WindowCenter" Width="1000px" />
    </SettingsPopup>
    <EditFormLayoutProperties ColCount="2">
        <Items>
            <dx:GridViewColumnLayoutItem ColumnName="div_id">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="egp_process" Caption="Тип проявления ЭГП на участке">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="egp_beg_km" Caption="Экспл. км начала участка">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="egp_end_km" Caption="Экспл. км конца участка">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="beg_x" Caption="Координата X начала участка">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="beg_y" Caption="Координата Y начала участка">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="end_x" Caption="Координата X конца участка">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem Caption="Координата Y конца участка" ColumnName="end_y">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="res_type">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="res_date">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="sect_nums">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="gab_length">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="gab_width">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="gab_power">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="gab_depth">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="gab_distance">
            </dx:GridViewColumnLayoutItem>
            <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right">
            </dx:EditModeCommandLayoutItem>
        </Items>
    </EditFormLayoutProperties>
    <Columns>
        <dx:GridViewCommandColumn Caption="Редактирование" ShowEditButton="True" VisibleIndex="5" ShowDeleteButton="True" ShowNewButtonInHeader="True">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
            <CellStyle HorizontalAlign="Center">
            </CellStyle>
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="main_id" ReadOnly="True" Visible="False" VisibleIndex="10">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="egp_number" Visible="False" VisibleIndex="11">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Тип проявления ЭГП на участке" FieldName="egp_process" VisibleIndex="1">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Участок МН (НПС… - НПС…)" FieldName="div_id" VisibleIndex="0">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="egp_beg_section" Visible="False" VisibleIndex="9">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="egp_end_section" Visible="False" VisibleIndex="7">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="res_report" Visible="False" VisibleIndex="8">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="res_presence" Visible="False" VisibleIndex="6">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="reestr_number" Visible="False" VisibleIndex="12">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="report_year" Visible="False" VisibleIndex="13">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewBandColumn Caption="Расположение ЭГП" VisibleIndex="3">
            <Columns>
                <dx:GridViewBandColumn Caption="Эксплуатационный км" VisibleIndex="0">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="Начало" FieldName="egp_beg_km" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Конец" FieldName="egp_end_km" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
                <dx:GridViewBandColumn Caption="Координаты" VisibleIndex="1">
                    <Columns>
                        <dx:GridViewBandColumn Caption="Начало" VisibleIndex="1">
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="X" VisibleIndex="0" FieldName="beg_x">
                                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Y" VisibleIndex="1" FieldName="beg_y">
                                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewBandColumn>
                        <dx:GridViewBandColumn Caption="Конец" VisibleIndex="3">
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="X" VisibleIndex="0" FieldName="end_x">
                                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Y" VisibleIndex="1" FieldName="end_y">
                                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewBandColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
            </Columns>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewBandColumn>
        <dx:GridViewBandColumn Caption="Результат обследования (характеристики ЭГП)" VisibleIndex="4">
            <Columns>
                <dx:GridViewDataTextColumn Caption="Вид обследования" FieldName="res_type" VisibleIndex="0">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>



                <dx:GridViewBandColumn Caption="Размеры и расположение массива грунта, перемещаемого или деформируемого при ЭГП, на участке с подтвержденным наличием ЭГП, требующим инженерной защиты" VisibleIndex="3">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="Длина, м" FieldName="gab_length" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Ширина, м" FieldName="gab_width" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Мощность, м" FieldName="gab_power" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Глубина залегания, м" FieldName="gab_depth" VisibleIndex="3">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Расстояние от оси трубопровода, м" FieldName="gab_distance" VisibleIndex="4">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
                <dx:GridViewDataDateColumn Caption="Дата" FieldName="res_date" VisibleIndex="1">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn Caption="Номера секций, лежащих на ЭГП" FieldName="sect_nums" VisibleIndex="2">
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


<dx:XpoDataSource ID="XpoDataSource1" runat="server" DefaultSorting="" TypeName="DXWebApplication1.DataModel.KUTA_ECA.geoprocess">
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