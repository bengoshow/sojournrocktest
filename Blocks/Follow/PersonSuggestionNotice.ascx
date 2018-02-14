<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Follow.PersonSuggestionNotice, App_Web_ix5eokl5" %>

<asp:UpdatePanel ID="pnlSuggestionListUpdatePanel" runat="server">
    <ContentTemplate>

        <asp:LinkButton ID="lbSuggestions" runat="server" CssClass="btn btn-primary btn-block margin-b-sm" OnClick="lbSuggestions_Click" />

        <asp:LinkButton ID="lbFollowing" runat="server" CssClass="btn btn-default btn-block margin-b-md" OnClick="lbFollowing_Click"><i class="fa fa-flag"></i> Following List</asp:LinkButton>

    </ContentTemplate>
</asp:UpdatePanel>
