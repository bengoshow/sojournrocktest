﻿<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Prayer.PrayerCommentsList, App_Web_f1mejhbe" %>
<asp:UpdatePanel ID="upPrayerRequests" runat="server">
    <ContentTemplate>
        <asp:Panel ID="pnlLists" runat="server" Visible="true">
            
            <div class="panel panel-block">
                <div class="panel-heading">
                    <h1 class="panel-title"><i class="fa fa-comment"></i> Prayer Comments</h1>
                </div>
                <div class="panel-body">
                    <div class="grid grid-panel">
                        <Rock:GridFilter ID="gfFilter" runat="server" OnApplyFilterClick="gfFilter_ApplyFilterClick" OnDisplayFilterValue="gfFilter_DisplayFilterValue">
                            <Rock:DateRangePicker ID="drpDateRange" runat="server" Label="Date Range" />
                            <Rock:CategoryPicker ID="catpPrayerCategoryFilter" runat="server" Label="Category" EntityTypeName="Rock.Model.PrayerRequest"/>
                        </Rock:GridFilter>
                        <Rock:ModalAlert ID="maGridWarning" runat="server" />
                        <Rock:Grid ID="gPrayerComments" runat="server" AllowSorting="true" RowItemText="comment" OnRowSelected="gPrayerComments_Edit" ExcelExportEnabled="false">
                            <Columns>
                                <Rock:DateTimeField DataField="CreatedDateTime" HeaderText="Time" SortExpression="CreatedDateTime"/>
                                <Rock:RockBoundField DataField="CreatedByPersonAlias.Person.FullName" HeaderText="From" SortExpression="Text" />
                                <Rock:RockBoundField DataField="Text" HeaderText="Comment" SortExpression="Text" />
                                <Rock:DeleteField OnClick="gPrayerComments_Delete" />
                            </Columns>
                        </Rock:Grid>
                    </div>
                </div>
            </div>

        </asp:Panel>
    </ContentTemplate>
</asp:UpdatePanel>
