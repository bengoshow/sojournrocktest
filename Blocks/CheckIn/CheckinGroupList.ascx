﻿<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Checkin.CheckinGroupList, App_Web_2ulo5pm4" %>

<asp:UpdatePanel ID="upnlContent" runat="server">
    <ContentTemplate>

        <asp:Panel ID="pnlView" runat="server" CssClass="panel panel-block">
        
            <div class="panel-heading clearfix">
                <h1 class="panel-title pull-left">
                    <i class="fa fa-check-square-o"></i>
                    Check-in Areas
                </h1>
                <Rock:ButtonDropDownList ID="bddlCampus" runat="server" FormGroupCssClass="panel-options pull-right" Title="All Campuses" SelectionStyle="Checkmark" OnSelectionChanged="bddlCampus_SelectionChanged" DataTextField="Name" DataValueField="Id" />
            </div>
            <div class="panel-body">
                <asp:Literal ID="lWarnings" runat="server" />
                <asp:Literal ID="lContent" runat="server" />
            </div>
        
        </asp:Panel>

    </ContentTemplate>
</asp:UpdatePanel>