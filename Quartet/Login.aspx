<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="hero is-light is-fullheight">
        <div class="hero-body">
          <div class="container has-text-centered">
            <div class="column is-4 is-offset-4">
              <h3 class="title has-text-grey">Login</h3>
              <p class="subtitle has-text-">Please login to proceed.</p>
              <div class="box">
                <figure class="avatar">
                  <!--<img src="quartet_logo.png" width="128" height="128">-->
                </figure>
                <form>

                  <div class="field">
                    <div class="control" id="loginEmail">
                      <asp:Label ID="loginEmail_lbl" CssClass="label" runat="server" Text="Email"></asp:Label>
                      <p class="control has-icons-left">
                        <asp:TextBox ID="loginEmail_txt" CssClass="input is-large" runat="server"></asp:TextBox>
                      <span class="icon is-small is-left"><i class="fas fa-envelope"></i></span>
                      </p>
                    </div>
                  </div>

                  <div class="field">
                    <div class="control">
                        <asp:Label ID="passwordLogin_lbl" runat="server" CssClass="label" Text="Password"></asp:Label>  
                      <p class="control has-icons-left">
                          <asp:TextBox ID="passwordLogin_txt" CssClass="input is-large" type="password" runat="server"></asp:TextBox>
                          <span class="icon is-small is-left"><i class="fas fa-lock"></i></span>
                      </p>
                    </div>
                  </div>

                  <div class="field">
                      <asp:RequiredFieldValidator ID="RequirePassword" runat="server" ControlToValidate="passwordLogin_txt" Display="Dynamic" ErrorMessage="Password required" ForeColor="Red" CssClass="help is-danger has-text-weight-semibold"></asp:RequiredFieldValidator>
                      <br />
                      <asp:RequiredFieldValidator ID="RequireEmail" runat="server" ControlToValidate="loginEmail_txt" Display="Dynamic" ErrorMessage="Valid e-mail required" ForeColor="Red" CssClass="help is-danger has-text-weight-semibold"></asp:RequiredFieldValidator>
                      <br />
                    <label class="checkbox">
                      <input type="checkbox">
                      Remember me
                    </label>
                  </div>
                  <button class="button is-block is-info is-large is-fullwidth">Login</button>
                </form>
              </div>
              <p class="has-text-grey">
                <a href="/signup">Sign up</a> &nbsp;·&nbsp;
                <a href="../">Forgot Password</a> &nbsp;·&nbsp;
                <a href="../">Need Help?</a>
              </p>
            </div>
          </div>
        </div>
    </section>

</asp:Content>

