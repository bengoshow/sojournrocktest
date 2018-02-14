<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Reporting.SampleLinqReport, App_Web_2dk4zl1h" %>

<asp:UpdatePanel ID="upReport" runat="server">
    <ContentTemplate>



            <div class="panel panel-block">
                <div class="panel-heading">
                    <h1 class="panel-title"><i class="fa fa-exclamation-triangle"></i> Sample Linq Report</h1>
                </div>
                
                <div class="grid">
                    <Rock:Grid ID="gReport" runat="server" AllowSorting="true" EmptyDataText="No Results" />
                </div>
            </div>


    </ContentTemplate>
</asp:UpdatePanel>
