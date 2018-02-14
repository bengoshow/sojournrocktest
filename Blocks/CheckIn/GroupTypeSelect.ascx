﻿<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.CheckIn.GroupTypeSelect, App_Web_2ulo5pm4" %>

<script type="text/javascript">
    Sys.Application.add_load(function () {
        $('a.btn-checkin-select').click(function () {
            $(this).siblings().attr('onclick', 'return false;');
        });
    });
</script>

<asp:UpdatePanel ID="upContent" runat="server">
    <ContentTemplate>

        <Rock:ModalAlert ID="maWarning" runat="server" />

        <div class="checkin-header">
            <h1><asp:Literal ID="lPersonName" runat="server" /></h1>
        </div>

        <div class="checkin-body">
            
            <div class="checkin-scroll-panel">
                <div class="scroller">

                    <div class="control-group checkin-body-container">
                        <label class="control-label">Select Area</label>
                        <div class="controls">
                            <asp:Panel ID="pnlNoOptions" runat="server" Visible="false">
                                <h4>Sorry, there are currently not any available areas that <asp:Literal ID="lNoOptionName" runat="server" /> can check into at <asp:Literal ID="lNoOptionSchedule" runat="server" />.</h4>
                                <div class="actions">
                                    <asp:LinkButton CssClass="btn btn-primary btn-checkin" ID="btnNoOptionOk" runat="server" OnClick="btnNoOptionOk_Click" Text="Ok" />
                                </div>
                            </asp:Panel>
                            <asp:Repeater ID="rSelection" runat="server" OnItemCommand="rSelection_ItemCommand">
                                <ItemTemplate>
                                    <Rock:BootstrapButton ID="lbSelect" runat="server" Text='<%# Container.DataItem.ToString() %>' CommandArgument='<%# Eval("GroupType.Id") %>' CssClass="btn btn-primary btn-large btn-block btn-checkin-select" DataLoadingText="Loading..." />
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>

                </div>
            </div>

        </div>

        <div class="checkin-footer">
            <div class="checkin-actions">
                <asp:LinkButton CssClass="btn btn-default" ID="lbBack" runat="server" OnClick="lbBack_Click" Text="Back" />
                <asp:LinkButton CssClass="btn btn-default" ID="lbCancel" runat="server" OnClick="lbCancel_Click" Text="Cancel" />
            </div>
        </div>

    </ContentTemplate>
</asp:UpdatePanel>