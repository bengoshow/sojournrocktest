<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Administration.RestActionList, App_Web_gnnfajiz" %>

<asp:UpdatePanel ID="upnlList" runat="server">
    <ContentTemplate>
        
        <div class="panel panel-block">
            <div class="panel-heading">
                <h1 class="panel-title"><i class="fa fa-exchange"></i> <asp:Literal ID="lControllerName" runat="server"/></h1>

                <div class="panel-labels">
                    <Rock:HighlightLabel ID="hlblWarning" runat="server" LabelType="Warning" Text="" />
                </div>
            </div>
            <div class="panel-body">

                <div class="grid grid-panel">
                    <Rock:Grid ID="gActions" runat="server" AllowSorting="true">
                        <Columns>
                            <Rock:RockBoundField DataField="Method" HeaderText="Method" SortExpression="Method" />
                            <Rock:CallbackField DataField="Path" HeaderText="Relative Path" SortExpression="Path" OnOnFormatDataValue="gActionsPath_OnFormatDataValue" />
                            <Rock:SecurityField TitleField="Method" />
                        </Columns>
                    </Rock:Grid>
                </div>

            </div>
        </div>

    </ContentTemplate>
</asp:UpdatePanel>
