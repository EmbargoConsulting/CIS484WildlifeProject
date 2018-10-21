<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="CreateNewUser" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentHeader" runat="Server">
    <title>TEST</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container login-container">
        <div class="row">
            <div class="col-md-6 login-form-1">
                <h3>Login Form 1</h3>

                <div class="form-group">
                    <input type="text" id="txtEmail" class="form-control" placeholder="Your Email *" value="" runat="server" />
                </div>
                <div class="form-group">
                    <input type="password" id="txtPassword" class="form-control" placeholder="Your Password *" value="" runat="server" />
                </div>
                <div class="form-group">
                    <asp:Button ID="btnLogin" OnClick="btnLogin_Click" Text="Login" CssClass="btnSubmit" runat="server" />
                </div>
                <div class="form-group">
                    <a href="CreateNewUser.aspx" class="btnForgetPwd">Not a user?</a>
                </div>
                <div class="form-group">
                    <input type="text" id="Status" class="form-control" placeholder="Status goes here" value="" runat="server" />
                </div>
                <div class="alert alert-success alert-dismissible fade show" role="alert" id="myAlert">
                    <strong>WELCOME <%:Session["user"]%></strong>
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
  </button>
                    <div class="alert alert-danger">
                        <strong>Error!</strong> There is a problem.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btnLogin').click(function () {
                $('#myAlert').show('fade');
            });
        });
    </script>
</asp:Content>

