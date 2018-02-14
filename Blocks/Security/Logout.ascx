<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Security.Logout, App_Web_uycipygy" %>



<asp:UpdatePanel ID="upnlContent" runat="server">
    <ContentTemplate>

        <asp:Literal ID="lOutput" runat="server" />

        <asp:LinkButton ID="lbAdminLogout" runat="server" CssClass="btn btn-warning" Text="Logout" Visible="false" OnClick="lbAdminLogout_Click" />

    </ContentTemplate>
</asp:UpdatePanel>