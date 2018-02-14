<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Core.CampusContextSetter, App_Web_mt5rbvwh" %>

<asp:UpdatePanel ID="upnlContent" runat="server">
    <ContentTemplate>

        <ul class="nav navbar-nav contextsetter contextsetter-campus">
            <li class="dropdown">

                <a class="dropdown-toggle navbar-link" href="#" data-toggle="dropdown">
                    <asp:Literal ID="lCurrentSelection" runat="server" />
                    <b class="fa fa-caret-down"></b>
                </a>

                <ul id="ulDropdownMenu" runat="server" enableviewstate="false" class="dropdown-menu">
                    <asp:Repeater runat="server" ID="rptCampuses" OnItemCommand="rptCampuses_ItemCommand">
                        <ItemTemplate>
                            <li>
                                <asp:LinkButton ID="btnCampus" runat="server" Text='<%# Eval("Name") %>' CommandArgument='<%# Eval("Id") %>' />
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </li>
        </ul>
    </ContentTemplate>
</asp:UpdatePanel>