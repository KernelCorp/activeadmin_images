<div id="my_file_uploader"></div>
<script type="text/javascript">
    var uploader = new qq.FileUploader({
        element: document.getElementById('my_file_uploader'),
        action: "<%%= add_files_admin_<%= name.underscore.pluralize %>_path %>",
        params: { "authenticity_token": "<%%= form_authenticity_token %>" },
        customHeaders: { "X-File-Upload": "true" }
    });
</script>