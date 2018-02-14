<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Utility.NotificationList, App_Web_mse23pgs" %>

<asp:UpdatePanel ID="upnlContent" UpdateMode="Conditional" runat="server">
    <ContentTemplate>

        <asp:Panel ID="pnlView" runat="server" CssClass="panel panel-block">
        
            <div class="panel-heading">
                <h1 class="panel-title"><i class="fa fa-bell"></i> Notifications</h1>

                <div class="panel-labels">
                    <Rock:HighlightLabel ID="hlblTest" runat="server" LabelType="Info" />
                </div>
            </div>
            <div class="panel-body">
                <asp:Repeater ID="rptNotifications" OnItemDataBound="rptNotifications_ItemDataBound" OnItemCommand="rptProjects_ItemCommand" runat="server" >
                    <ItemTemplate>
                        <div class="alert" id="rptNotificationAlert" runat="server">
                            <div class="pull-right"><asp:LinkButton runat="server" CssClass="action" CommandName="Close" CommandArgument='<%#Eval("Guid") %>'><i class="fa fa-times"></i></asp:LinkButton></div>
                            <h4><%# Eval("Notification.Title") %></h4>
                            <p><%# Eval("Notification.Message") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

        </asp:Panel>

    </ContentTemplate>
</asp:UpdatePanel>
