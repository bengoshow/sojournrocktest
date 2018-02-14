<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Finance.BankAccountList, App_Web_wuw5dahn" %>

<asp:UpdatePanel ID="upFinancialGivingProfile" runat="server">
    <ContentTemplate>

        <Rock:ModalAlert ID="mdGridWarning" runat="server" />

        <div class="panel panel-block">
            <div class="panel-heading">
                <h1 class="panel-title"><i class="fa fa-bank"></i> Bank Account List</h1>
            </div>
            <div class="panel-body">

                <div class="grid grid-panel">
                    <Rock:Grid ID="gList" AllowSorting="true" runat="server" EmptyDataText="No Bank Accounts Found"
                        ShowConfirmDeleteDialog="true" RowItemText="Bank Account">
                        <Columns>
                            <Rock:RockBoundField DataField="AccountNumberMasked" HeaderText="Account Number" SortExpression="AccountNumberMasked" />
                            <Rock:DeleteField OnClick="gList_Delete" />
                        </Columns>
                    </Rock:Grid>
                </div>

            </div>
        </div>

    </ContentTemplate>
</asp:UpdatePanel>





