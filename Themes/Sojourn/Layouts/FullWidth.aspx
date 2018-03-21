<%@ Page Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" Inherits="Rock.Web.UI.RockPage" %>

<asp:Content ID="ctFeature" ContentPlaceHolderID="feature" runat="server">

    <section class="main-feature">
        <div class="container-fluid">
            <div class="row no-gutter">
                <div class="col-md-12">
                    <Rock:Zone Name="Feature" runat="server" />
                </div>
            </div>
        </div>
    </section>

</asp:Content>

<asp:Content ID="ctMain" ContentPlaceHolderID="main" runat="server">
    
	<main>
        
    <Rock:Zone Name="Section A" runat="server" />

		<Rock:Zone Name="Section B" runat="server" />

    <Rock:Zone Name="Main" runat="server" />
		
    <Rock:Zone Name="Section C" runat="server" />

    <Rock:Zone Name="Section D" runat="server" />

	</main>
        
</asp:Content>

