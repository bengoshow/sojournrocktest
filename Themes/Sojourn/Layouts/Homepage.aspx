<%@ Page Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" Inherits="Rock.Web.UI.RockPage" %>

<asp:Content ID="ctFeature" ContentPlaceHolderID="feature" runat="server">

    <section class="main-feature">
        <Rock:Zone Name="Feature" runat="server" />
    </section>

</asp:Content>

<asp:Content ID="ctMain" ContentPlaceHolderID="main" runat="server">
    
	<main>
        
        <!-- Start Content Area -->
        
        <!-- Ajax Error -->
        <div class="container">
	        <div class="row">
            <div class="col-md-12">
			        <div class="alert alert-danger ajax-error" style="display:none">
			            <p><strong>Error</strong></p>
			            <span class="ajax-error-message"></span>
			        </div>
            </div>
	        </div>
        </div>

        <div class="container">
	        <div class="row">
            <div class="col-md-12">
							<Rock:Zone Name="Sub Feature" runat="server" />
            </div>
	        </div>
        </div>
       
        <div class="container-fluid">
	        <div class="row no-gutter">
            <div class="col-md-12">
							<Rock:Zone Name="Section A" runat="server" />
            </div>
	        </div>
        </div>
        
        <div class="container">
	        <div class="row">
            <div class="col-md-12">
							<Rock:Zone Name="Section B" runat="server" />
            </div>
	        </div>
        </div>

        <div class="container-fluid">
	        <div class="row no-gutter">
            <div class="col-md-12">
							<Rock:Zone Name="Section C" runat="server" />
            </div>
	        </div>
        </div>

        <div class="container">
	        <div class="row">
            <div class="col-md-12">
							<Rock:Zone Name="Section D" runat="server" />
            </div>
	        </div>
        </div>

        <!-- End Content Area -->

	</main>
        
</asp:Content>

