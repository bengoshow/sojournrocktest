<%@ control language="C#" autoeventwireup="true" inherits="RockWeb.Blocks.Cms.FileManager, App_Web_n1ftjhpi" %>

<asp:UpdatePanel runat="server" ID="upnlContent">
    <ContentTemplate>
        <iframe id="iframeFileBrowser" class="js-file-browser file-browser" runat="server"  style="width: 100%; height: 420px; display:none;" scrolling="no" frameBorder="0" />
        <script>
            
            $(document).ready(function () {
                Sys.Application.add_load(function () {
                    $('.js-file-browser').fadeIn(50);
                });
            });
        </script>
    </ContentTemplate>
</asp:UpdatePanel>

