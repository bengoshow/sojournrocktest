<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FeaturedEventsList.ascx.cs" Inherits="RockWeb.Blocks.EventsList.CalendarLava" %>
<div id="featured-events" class="events_tab">

    <div class="filters">
        <div class="container">
        <div class="row">
        <Rock:NotificationBox ID="NotificationBox1" runat="server" Visible="false" />
        <asp:Panel id="pnlDetails" runat="server">
            <asp:Panel ID="pnlFilters" CssClass="hidden-print" runat="server">
                <asp:Panel ID="pnlCalendar" CssClass="calendar" runat="server">
                    <asp:Calendar ID="calEventCalendar" runat="server" DayNameFormat="FirstLetter" SelectionMode="Day" BorderStyle="None"
                        TitleStyle-BackColor="#ffffff" NextPrevStyle-ForeColor="#333333" FirstDayOfWeek="Sunday" Width="100%" CssClass="calendar-month" OnSelectionChanged="calEventCalendar_SelectionChanged" OnDayRender="calEventCalendar_DayRender" OnVisibleMonthChanged="calEventCalendar_VisibleMonthChanged">
                        <DayStyle CssClass="calendar-day" />
                        <TodayDayStyle CssClass="calendar-today" />
                        <SelectedDayStyle CssClass="calendar-selected" BackColor="Transparent" />
                        <OtherMonthDayStyle CssClass="calendar-last-month" />
                        <DayHeaderStyle CssClass="calendar-day-header" />
                        <NextPrevStyle CssClass="calendar-next-prev" />
                        <TitleStyle CssClass="calendar-title" />
                    </asp:Calendar>
                </asp:Panel>

                <div class="col-lg-2 col-md-6 col-xs-6 column">

            <% if ( CampusPanelOpen || CampusPanelClosed )
                { %>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" href="#collapseOne">Location<i class="vc-icon-menu-arrow-down"></i></a>
                        </h4>
                    </div>
                    <div id="collapseOne" class='<%= CampusPanelOpen ? "panel-collapse collapse in" : "panel-collapse collapse out" %>'>
                        <div class="panel-body">
            <% } %>

                            <%-- Note: RockControlWrapper/Div/CheckboxList is being used instead of just a RockCheckBoxList, because autopostback does not currently work for RockControlCheckbox--%>
                            <Rock:RockControlWrapper ID="rcwCampus" runat="server" Label="Filter by Campus">
                                <div class="controls">
                                    <asp:CheckBoxList ID="cblCampus" RepeatDirection="Vertical" runat="server" DataTextField="Name" DataValueField="Id"
                                        OnSelectedIndexChanged="cblCampus_SelectedIndexChanged" AutoPostBack="true" />
                                </div>
                            </Rock:RockControlWrapper>

            <% if ( CampusPanelOpen || CampusPanelClosed )
                { %>
                        </div>
                    </div>
                </div>
            <% } %>

                </div>
                <div class="col-lg-2 col-md-6 col-xs-6 column">
                 
            <% if ( CategoryPanelOpen || CategoryPanelClosed )
                { %>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" href="#collapseTwo">Category<i class="vc-icon-menu-arrow-down"></i></a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class='<%= CategoryPanelOpen ? "panel-collapse collapse in" : "panel-collapse collapse out" %>'>
                        <div class="panel-body">
            <% } %>

                            <Rock:RockControlWrapper ID="rcwCategory" runat="server" Label="Filter by Category">
                                <div class="controls">
                                    <asp:CheckBoxList ID="cblCategory" RepeatDirection="Vertical" runat="server" DataTextField="Value" DataValueField="Id" OnSelectedIndexChanged="cblCategory_SelectedIndexChanged" AutoPostBack="true" />
                                </div>
                            </Rock:RockControlWrapper>

            <% if ( CategoryPanelOpen || CategoryPanelClosed )
                { %>
                        </div>
                    </div>
                </div>
            <% } %>

                </div>
                <div class="col-lg-8 daterangepicker column">

            <Rock:DateRangePicker ID="drpDateRange" runat="server" Label="Select Range" /><asp:LinkButton ID="lbDateRangeRefresh" runat="server" CssClass="btn btn-default btn-sm" Text="Update" OnClick="lbDateRangeRefresh_Click" />
                
                  <div class="pull-right text-right">
                    <ul class="inline-buttons">
                        <li class="active toggle"><a href="/events" title="Featured Events"><i class="vc-icon-grid"></i>Featured</a></li>
                        <li class="toggle"><a href="/all-events" title="All Events"><i class="vc-icon-list"></i>All Events</a></li>
                    </ul>
                </div>
                </div>
            </asp:Panel>
        </asp:Panel>
          </div>
        </div>
    </div>

<asp:UpdatePanel ID="upnlContent" runat="server">
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="cblCampus" />
        <asp:AsyncPostBackTrigger ControlID="cblCategory" />
    </Triggers>
    <ContentTemplate>
    <Rock:NotificationBox ID="nbMessage" runat="server" Visible="false" />
    <div class="container events_list">
    <div class="row">
       <asp:Panel ID="pnlList"  runat="server">
           <h2 class="panel_title">Featured Events</h2>
                <div id="date_range_selector" class="btn-group hidden-print" role="group">
                    <Rock:BootstrapButton ID="btnDay" runat="server" CssClass="btn btn-default" Text="Day" OnClick="btnViewMode_Click" />
                    <Rock:BootstrapButton ID="btnWeek" runat="server" CssClass="btn btn-default" Text="Week" OnClick="btnViewMode_Click" />
                    <Rock:BootstrapButton ID="btnMonth" runat="server" CssClass="btn btn-default" Text="Month" OnClick="btnViewMode_Click" />
                </div>

                <asp:Literal ID="lOutput" runat="server"></asp:Literal>
                <asp:Literal ID="lDebug" Visible="false" runat="server"></asp:Literal>

            
        </asp:Panel>
    </div>
    </div>
    </ContentTemplate>
</asp:UpdatePanel>
</div>