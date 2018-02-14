﻿<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Cms.RSSFeedItem, App_Web_n1ftjhpi" %>
<asp:UpdatePanel ID="upContent" runat="server" >
    <ContentTemplate>
        <Rock:NotificationBox ID="nbRssItem" runat="server" NotificationBoxType="Info" />
        <asp:Panel ID="pnlContent" runat="server" Visible="false">
            <asp:PlaceHolder ID="phFeedItem" runat="server" />
        </asp:Panel>
    </ContentTemplate>
</asp:UpdatePanel>