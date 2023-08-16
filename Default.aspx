<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Report.Default" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <title>Trade Info Report</title>
</head>
<body>
    <div class="container">
      <div class="row align-items-stretch no-gutters contact-wrap">
        <div class="col-md-12">
          <div class="form h-100">
            <h3>Trade Info Report</h3>
    <form id="form1" runat="server" class="mb-5">
        <div class="row">
            <div class="col-md-3 form-group mb-3">
            <asp:Label ID="Label1" runat="server" Text="Start Date" CssClass="col-form-label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-3 form-group mb-3">
            <asp:Label ID="Label2" runat="server" Text="End Date" CssClass="col-form-label"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
       </div>
       <div class="row">
           <div class="col-md-12 form-group">
            <asp:Button ID="Button1" runat="server" Text="Generate Report" OnClick="Button1_Click" CssClass="btn btn-primary rounded-0 py-2 px-4" />
           </div>
       </div> 
       <div class="row">
        <div class="col-md-12 form-group mb-3">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%" Height="750px"></rsweb:ReportViewer>
        </div>
       </div>
    </form>
              </div>
            </div>
          </div>
        </div>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
