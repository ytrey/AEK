<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="classificator.aspx.cs" Inherits="DXWebApplication1._classificator" %>


<%@ Register assembly="DevExpress.Xpo.v15.2, Version=15.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Xpo" tagprefix="dx" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

<asp:Panel ID="Panel1" runat="server" Height="50px" HorizontalAlign="Right">
  <asp:ImageButton ID="ImageButton1" AlternateText="������� � Excel" runat="server" ImageUrl="~/Content/Images/excel.png" OnClick="ImageButton1_Click" /> 
</asp:Panel>

    <%-- DXCOMMENT: Configure ASPxGridView control --%>
<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XpoDataSource1" ClientInstanceName="ASPxGridView1"
    Width="100%" KeyFieldName="ige_id" EnableTheming="True" Theme="PlasticBlue" OnRowInserting="ASPxGridView1_RowInserting">
    <%-- DXCOMMENT: Configure ASPxGridView's columns in accordance with datasource fields --%>
    <SettingsPager PageSize="32" />
    <SettingsEditing Mode="PopupEditForm">
    </SettingsEditing>
    <Settings VerticalScrollBarMode="Visible" VerticalScrollableHeight="350" ColumnMinWidth="200" HorizontalScrollBarMode="Visible" ShowPreview="True" />
    <SettingsPopup>
        <EditForm AllowResize="True" HorizontalAlign="Center" Modal="True" VerticalAlign="WindowCenter" Width="1500px" />
    </SettingsPopup>
    <EditFormLayoutProperties ColCount="2">
        <Items>
            <dx:GridViewColumnLayoutItem ColumnName="c_2">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_3">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_4">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_5">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_6">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_7">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_8">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_9">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_10">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_11">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_12">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_13">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_14">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_15">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_16">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_17">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_18">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_19">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_20">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem Caption="���������� ������� 0.01- 0.05 ��, %" ColumnName="c_21">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_22">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_23">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_24">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_25">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_26">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_27">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_28">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_29">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_30">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_31">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_32">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_33">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_34">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_35">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_36">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_37">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_38">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_39">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_40">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_41">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_42">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_43">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_44">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_45">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_46">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_47">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_48">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_49">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_50">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_51">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_52">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_53">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_54">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_55">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_56">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_57">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_58">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_59">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_60">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_61">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_62">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_63">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_64">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_65">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_66">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_67">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_68">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_69">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_70">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_71">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_72">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_73">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_74">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_75">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_76">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_77">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_78">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_79">
            </dx:GridViewColumnLayoutItem>
            <dx:GridViewColumnLayoutItem ColumnName="c_80">
            </dx:GridViewColumnLayoutItem>
            <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right">
            </dx:EditModeCommandLayoutItem>
        </Items>
    </EditFormLayoutProperties>
    <Columns>
        <dx:GridViewCommandColumn Caption="��������������" ShowEditButton="True" VisibleIndex="8" ShowNewButtonInHeader="True">
            <CellStyle HorizontalAlign="Center">
            </CellStyle>
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="ige_id" ReadOnly="True" Visible="False" VisibleIndex="0">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="c_2" VisibleIndex="1" Caption="����� ���" MinWidth="100">
            <HeaderStyle HorizontalAlign="Center" Wrap="True">
            <Border BorderWidth="20px" />
            </HeaderStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="������������ ������, � ������� ������� ������ ���" FieldName="c_8" VisibleIndex="3" MinWidth="100">
            <HeaderStyle HorizontalAlign="Center" Wrap="True">
            <Border BorderWidth="20px" />
            </HeaderStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="����� ��� � ������" FieldName="c_9" VisibleIndex="4" MinWidth="100">
            <HeaderStyle HorizontalAlign="Center" Wrap="True">
            <Border BorderWidth="20px" />
            </HeaderStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="c_10" VisibleIndex="5" Caption="������� �������� ��� � ������" MinWidth="100">
            <HeaderStyle HorizontalAlign="Center" Wrap="True">
            <Border BorderWidth="20px" />
            </HeaderStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="c_11" VisibleIndex="6" Caption="�������� ���" MinWidth="100">
            <HeaderStyle HorizontalAlign="Center" Wrap="True">
            <Border BorderWidth="20px" />
            </HeaderStyle>
        </dx:GridViewDataTextColumn>
        <dx:GridViewBandColumn Caption="��������� ��� ���" VisibleIndex="2">
            <Columns>
                <dx:GridViewDataTextColumn Caption="�������" FieldName="c_3" MinWidth="100" VisibleIndex="0">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="�������" FieldName="c_4" MinWidth="100" VisibleIndex="1">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="������" FieldName="c_5" MinWidth="100" VisibleIndex="2">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="���������" FieldName="c_6" MinWidth="100" VisibleIndex="3">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="��������������" FieldName="c_7" MinWidth="100" VisibleIndex="4">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
            </Columns>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewBandColumn>
        <dx:GridViewBandColumn Caption="���������� ������� � ��������" VisibleIndex="7">
            <Columns>
                <dx:GridViewBandColumn Caption="������������������ ������" VisibleIndex="0">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="���������� �������  200-50 ��, %" FieldName="c_12" MinWidth="100" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="���������� �������  200-50 ��, %" FieldName="c_13" MinWidth="100" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="���������� �������  50-10 ��, %" FieldName="c_14" MinWidth="100" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="���������� ������� 10-2 ��, %" FieldName="c_15" MinWidth="100" VisibleIndex="3">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="���������� ������� 2-1��, %" FieldName="c_16" MinWidth="100" VisibleIndex="4">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="���������� ������� 1-0,5��, %" FieldName="c_17" MinWidth="100" VisibleIndex="5">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="���������� ������� 0.5-0.25 ��, %" FieldName="c_18" MinWidth="100" VisibleIndex="6">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="���������� ������� 0.25-0.1��, %" FieldName="c_19" MinWidth="100" VisibleIndex="7">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="���������� ������� 0.1-0.05 ��, %" FieldName="c_20" MinWidth="100" VisibleIndex="8">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="���������� �������� 0.01- 0.05 ��, %" FieldName="c_21" MinWidth="100" VisibleIndex="9">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="���������� ������� 0.01-0.005 ��, %" FieldName="c_22" MinWidth="100" VisibleIndex="10">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="���������� ������� ����� 0.005 ��, %" FieldName="c_23" MinWidth="100" VisibleIndex="11">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
                <dx:GridViewBandColumn Caption="��������� ��������� (��������� ��� ������������ ���������), �/��3" VisibleIndex="1">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="����������� ��������" FieldName="c_24" MinWidth="100" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="��� ���. ������. 0,85" FieldName="c_25" MinWidth="100" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="��� ���. ������. 0,95" FieldName="c_26" MinWidth="100" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
                <dx:GridViewDataTextColumn Caption="��������� ������ ������ (������� ������),  �/��3" FieldName="c_27" MinWidth="100" VisibleIndex="2">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="��������� ������ ������, �/��3" FieldName="c_28" MinWidth="100" VisibleIndex="3">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewBandColumn Caption="��������� ���������, %" VisibleIndex="4">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="����������� ��������" FieldName="c_29" MinWidth="100" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
                <dx:GridViewDataTextColumn Caption="����������� ����������, �.�." FieldName="c_30" MinWidth="100" VisibleIndex="5">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="������� ���������  (����������� �������������), �.�." FieldName="c_31" MinWidth="100" VisibleIndex="6">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="������� ������ ������������ (��������� �� ������� ���������), %" FieldName="c_32" MinWidth="100" VisibleIndex="7">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="������ ������ ������������ (��������� �� ������� ���������), %" FieldName="c_33" MinWidth="100" VisibleIndex="8">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="����� ������������, %" FieldName="c_34" MinWidth="100" VisibleIndex="9">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="���������� ��������� (������������), �.�." FieldName="c_35" MinWidth="100" VisibleIndex="10">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewBandColumn Caption="�������� ���������, ���" VisibleIndex="11">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="����������� ��������" FieldName="c_36" MinWidth="100" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="��� ���. ������. 0,85" FieldName="c_37" MinWidth="100" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="��� ���. ������. 0,95" FieldName="c_38" MinWidth="100" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
                <dx:GridViewBandColumn Caption="���� ����������� ������, ������" VisibleIndex="12">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="����������� ��������" FieldName="c_39" MinWidth="100" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="��� ���. ������. 0,85" FieldName="c_40" MinWidth="100" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="��� ���. ������. 0,95" FieldName="c_41" MinWidth="100" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
                <dx:GridViewBandColumn Caption="���� ������������� ������ ��� ������, ������" VisibleIndex="13">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="� ����� ���������" FieldName="c_42" MinWidth="100" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="� ����" FieldName="c_43" MinWidth="100" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
                <dx:GridViewDataTextColumn Caption="������ ����������, ���" FieldName="c_44" MinWidth="100" VisibleIndex="14">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="����������� ��������, �.�." FieldName="c_45" MinWidth="100" VisibleIndex="15">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewBandColumn Caption="��������� ������������� ���������� ������, ���" VisibleIndex="16">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="� ����� ���������" FieldName="c_46" MinWidth="100" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="� �������������� ���������" FieldName="c_47" MinWidth="100" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
                <dx:GridViewDataTextColumn Caption="����������� ��������������, �.�." FieldName="c_48" MinWidth="100" VisibleIndex="17">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="��������� �������������, ���" FieldName="c_49" MinWidth="100" VisibleIndex="18">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="���������� ��������� ��� ����������" FieldName="c_50" MinWidth="100" VisibleIndex="19">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="����������� ���������� �������� ������ ��� ����������, �.�" FieldName="c_51" MinWidth="100" VisibleIndex="20">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="����������� ����������� ������� ������� ��� ���������, ���-1" FieldName="c_52" MinWidth="100" VisibleIndex="21">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewBandColumn Caption="����������������, ��/�3" VisibleIndex="22">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="������ ������ � ����� ���������" FieldName="c_53" MinWidth="100" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="�������� ������ � ����� ���������" FieldName="c_54" MinWidth="100" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="������ � ������� ���������" FieldName="c_55" MinWidth="100" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
                <dx:GridViewDataTextColumn Caption="��������� ������ ������ � ������� ���������, �/��3" FieldName="c_57" MinWidth="100" VisibleIndex="23">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="��������� �������� ������, �/��3" FieldName="c_56" MinWidth="100" VisibleIndex="24">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="���������� ���������� � ������� ���������, �/��3" FieldName="c_58" MinWidth="100" VisibleIndex="25">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="��������� ��������� �������� ������, �.�." FieldName="c_59" MinWidth="100" VisibleIndex="26">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="��������� �������� ������ ����� ����������� ����, %" FieldName="c_60" MinWidth="100" VisibleIndex="27">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="��������� �������� ������ �� ���� ��������� ����, %" FieldName="c_61" MinWidth="100" VisibleIndex="28">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="��������� �������� ������ �� ���� ���������� ����, %" FieldName="c_62" MinWidth="100" VisibleIndex="29">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="��������� �������� ������ �� ���� �������� ����, %" FieldName="c_63" MinWidth="100" VisibleIndex="30">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="������� ���������� ��� �������� ������ ����� � ���������� �����, �.�" FieldName="c_64" MinWidth="100" VisibleIndex="31">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewBandColumn Caption="�������� ������������, ����/(�3�)" VisibleIndex="32">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="������ ������ � ����� ���������" FieldName="c_65" MinWidth="100" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="�������� ������ � ����� ���������" FieldName="c_66" MinWidth="100" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="�������� ������ � ������� ���������" FieldName="c_67" MinWidth="100" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
                <dx:GridViewBandColumn Caption="����������, �.�." VisibleIndex="33">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="���������" FieldName="c_68" MinWidth="100" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="�� ���� ������� ���������" FieldName="c_69" MinWidth="100" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="�� ���� �������� ����" FieldName="c_70" MinWidth="100" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" Wrap="True">
                            <Border BorderWidth="20px" />
                            </HeaderStyle>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewBandColumn>
                <dx:GridViewDataTextColumn Caption="������� �������� ������������ (������������� ���������� ��������� �������), �.�." FieldName="c_71" MinWidth="100" VisibleIndex="34">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="������������� ������ ������� ������� ��� ����������, �.�." FieldName="c_72" MinWidth="100" VisibleIndex="35">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="����������� ����������, �/���" FieldName="c_73" MinWidth="100" VisibleIndex="36">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="������������� ���������� ������������� ��������, %" FieldName="c_74" MinWidth="100" VisibleIndex="37">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="������� ���������� �����, %" FieldName="c_75" MinWidth="100" VisibleIndex="38">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="������� ��������� �����, %" FieldName="c_76" MinWidth="100" VisibleIndex="39">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="������ ���������, ���" FieldName="c_77" MinWidth="100" VisibleIndex="40">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="�������� ���, ��/�3" FieldName="c_78" MinWidth="100" VisibleIndex="41">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="����������� ������ ���������� (����������) �������� ������, ������" FieldName="c_79" MinWidth="100" VisibleIndex="42">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="����������, �.�" FieldName="c_80" MinWidth="100" VisibleIndex="43">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True">
                    <Border BorderWidth="20px" />
                    </HeaderStyle>
                </dx:GridViewDataTextColumn>
            </Columns>
            <HeaderStyle HorizontalAlign="Center" Wrap="True" />
        </dx:GridViewBandColumn>
    </Columns>

<Styles AdaptiveDetailButtonWidth="22"></Styles>

    <Paddings Padding="0px" />
    <Border BorderWidth="0px" />
    <BorderBottom BorderWidth="1px" />
</dx:ASPxGridView>


<dx:XpoDataSource ID="XpoDataSource1" runat="server" DefaultSorting="" TypeName="DXWebApplication1.DataModel.KUTA_ECA.ige">
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