﻿<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.CheckIn.CheckoutSuccess, App_Web_2ulo5pm4" %>
<asp:UpdatePanel ID="upContent" runat="server">
<ContentTemplate>

    <Rock:ModalAlert ID="maWarning" runat="server" />

    <div class="checkin-header">
        <h1>Checked-Out</h1>
    </div>

    <div class="checkin-body">
        
        <div class="checkin-scroll-panel">
            <div class="scroller">           
                <ol class="checkin-summary checkin-body-container">
                    <asp:PlaceHolder ID="phResults" runat="server"></asp:PlaceHolder>
                </ol>

            </div>
        </div>

    </div>


    <div class="checkin-footer">   
        <div class="checkin-actions">
            <asp:LinkButton CssClass="btn btn-primary" ID="lbDone" runat="server" OnClick="lbDone_Click" Text="Done" />
         </div>
    </div>

</ContentTemplate>
</asp:UpdatePanel>