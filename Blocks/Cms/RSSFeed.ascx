<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Cms.RSSFeed, App_Web_n1ftjhpi" %>
<asp:UpdatePanel ID="upContent" runat="server">
    <ContentTemplate>
        <Rock:NotificationBox ID="nbRSSFeed" runat="server" NotificationBoxType="Info" Visible="false" />
        <asp:Panel ID="pnlContent" runat="server" Visible="false">
            <asp:PlaceHolder ID="phRSSFeed" runat="server" />
        </asp:Panel>
    </ContentTemplate>
</asp:UpdatePanel>
