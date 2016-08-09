<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="dynamic.aspx.cs" Inherits="DXWebApplication1._dynamic" %>


<%@ Register assembly="DevExpress.Xpo.v15.2, Version=15.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Xpo" tagprefix="dx" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <%-- DXCOMMENT: Configure ASPxGridView control --%>
<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" ClientInstanceName="ASPxGridView1"
    Width="100%" EnableTheming="True" Theme="PlasticBlue">
    <SettingsPager PageSize="32" />
    <SettingsEditing Mode="PopupEditForm">
    </SettingsEditing>
    <Settings VerticalScrollBarMode="Visible" VerticalScrollableHeight="350" />
    <EditFormLayoutProperties ColCount="2">
        <Items>
            <dx:GridViewColumnLayoutItem ColumnName="picket_beg_id!Key">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="offset_beg">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="picket_end_id!Key">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="offset_end">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="bias_value">
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
        <dx:GridViewDataTextColumn VisibleIndex="0" Caption="Участок МН (НПС… - НПС…)">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn VisibleIndex="1" Caption="№ секции">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn VisibleIndex="3" Caption="Длина секции, м">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn VisibleIndex="4" Caption="Толщина стенки, мм">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Эксплуатационный, км" VisibleIndex="2">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn VisibleIndex="5" Caption="Тип секции">
        </dx:GridViewDataTextColumn>
        <dx:GridViewBandColumn Caption="Динамика изменений радиусов изгиба" VisibleIndex="6">
            <Columns>
                <dx:GridViewBandColumn Caption="Прогон № “номер” от “дата” “тип”" ShowInCustomizationForm="True" VisibleIndex="0">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="Н, м" ShowInCustomizationForm="True" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Направление изгиба, град" ShowInCustomizationForm="True" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="R, м" ShowInCustomizationForm="True" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="ΔR, м" ShowInCustomizationForm="True" VisibleIndex="3">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
                <dx:GridViewBandColumn Caption="Прогон № “номер” от “дата” “тип”" ShowInCustomizationForm="True" VisibleIndex="1">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="Н, м" ShowInCustomizationForm="True" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Направление изгиба, град" ShowInCustomizationForm="True" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="R, м" ShowInCustomizationForm="True" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="ΔR, м" ShowInCustomizationForm="True" VisibleIndex="3">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
            </Columns>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewBandColumn>
        <dx:GridViewDataTextColumn Caption="Разница радиуса первого и последнего прогона" VisibleIndex="7">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Динамика уменьшения радиуса ΔR, м" VisibleIndex="8">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Постоянно уменьшающийся радиус" VisibleIndex="9">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="Эквивалентные напряжения (сжатие), МПа" VisibleIndex="10">
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewDataTextColumn>
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

</asp:Content>