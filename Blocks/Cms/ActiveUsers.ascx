<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Cms.ActiveUsers, App_Web_n1ftjhpi" %>

<asp:UpdatePanel ID="upnlContent" runat="server">
    <ContentTemplate>

        <asp:Literal ID="lSiteName" runat="server" />
        <asp:Literal ID="lMessages" runat="server" />

        <asp:Literal ID="lUsers" runat="server" />
        <script>
            Sys.Application.add_load(function () {
                $('.active-user').tooltip({ 'html': 'true' });
            });
        </script>
    </ContentTemplate>
</asp:UpdatePanel>
