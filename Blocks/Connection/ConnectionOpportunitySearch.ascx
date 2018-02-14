<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Connection.OpportunitySearch, App_Web_u5lgnu2w" %>

<asp:UpdatePanel ID="upnlContent" runat="server">
    <ContentTemplate>
        <Rock:ModalAlert ID="maWarning" runat="server" />
        
        <asp:Panel ID="pnlSearch" runat="server">
            <h3>Search</h3>

            <Rock:RockTextBox ID="tbSearchName" runat="server" Label="Name" />

            <Rock:RockCheckBoxList ID="cblCampus" runat="server" Label="Campuses" DataTextField="Name" DataValueField="Id" RepeatDirection="Horizontal" />

            <asp:PlaceHolder ID="phAttributeFilters" runat="server" />

            <Rock:BootstrapButton ID="btnSearch" CssClass="btn btn-primary" runat="server" OnClick="btnSearch_Click" Text="Search" />

        </asp:Panel>

        <asp:Literal ID="lOutput" runat="server"></asp:Literal>

        <asp:Literal ID="lDebug" Visible="false" runat="server"></asp:Literal>

    </ContentTemplate>
</asp:UpdatePanel>
