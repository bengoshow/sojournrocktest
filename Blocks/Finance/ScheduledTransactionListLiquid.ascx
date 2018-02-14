﻿<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Finance.ScheduledTransactionListLiquid, App_Web_hev3kkhl" %>

<asp:UpdatePanel ID="upnlContent" runat="server">
    <ContentTemplate>

        <div class="scheduledtransaction-list">
            <asp:Repeater ID="rptScheduledTransactions" OnItemDataBound="rptScheduledTransactions_ItemDataBound" runat="server">
                <ItemTemplate>
                    <div class="scheduledtransaction-item">
                        <asp:Literal ID="lLiquidContent" runat="server" />
                        <asp:HiddenField ID="hfScheduledTransactionId" runat="server"></asp:HiddenField>
                        <div class="actions">
                            <asp:Button ID="btnEdit" runat="server" AccessKey="m" Text="Edit" OnClick="btnEdit_Click" CssClass="btn btn-default" />
                            <Rock:BootstrapButton ID="bbtnDelete" runat="server" OnClick="bbtnDelete_Click" Text="Delete" CssClass="btn btn-danger" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>        
        
        <asp:Panel ID="pnlNoScheduledTransactions" runat="server" CssClass="alert alert-info" Visible="false">
            <asp:Literal ID="lNoScheduledTransactionsMessage" runat="server" />
        </asp:Panel>

        <asp:LinkButton ID="lbAddScheduledTransaction" runat="server" CssClass="btn btn-primary" OnClick="lbAddScheduledTransaction_Click" />

        <asp:Literal ID="lDebug" runat="server" />
        
    </ContentTemplate>
</asp:UpdatePanel>