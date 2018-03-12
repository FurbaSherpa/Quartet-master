<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: 1rem;
            position: relative;
            text-align: left;
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <section class="hero is-light is-fullheight">
        <div class="hero-body">
          <div class="container has-text-centered">
              <h3 class="title has-text-grey">&nbsp;Please provide your feed back below</h3>
              <div class="box">
                <figure class="avatar">
                  <!--<img src="quartet_logo.png" width="128" height="128">-->
                </figure>
                <form>

                  <div class="field">
                    <div class="control" id="loginEmail">
                      <asp:Label ID="lbl_feedback_name" CssClass="label" runat="server" Text="Name"></asp:Label>
                      <p >
                        <asp:TextBox ID="txt_feedback_name" CssClass="input is-large" runat="server"></asp:TextBox>
                      
                      </p>
                    </div>
                  </div>

                  <div class="field">
                    <div class="auto-style1">
                        <asp:Label ID="lbl_feedback_comment" runat="server" CssClass="label" Text="Comment"></asp:Label>  
                      <p >
                          <asp:TextBox ID="txt_feedback_comment" CssClass="input is-large" runat="server" style="left: -2px; top: 1px; height: 7.2em"></asp:TextBox>
                          
                      </p>
                    </div>
                  </div>
                    <br />
                    <div class="auto-style1">
                    <asp:Label ID="lbl_radioFeedback" runat="server" CssClass="label" Text="Please let us know how your experience was below by choosing one of the options below"></asp:Label>
                    </div>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Width="87px">
                        <asp:ListItem>Excellent</asp:ListItem>
                        <asp:ListItem>Average</asp:ListItem>
                        <asp:ListItem>Poor</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:RequiredFieldValidator ID="required_comment" runat="server" ControlToValidate="txt_feedback_comment" Display="Dynamic" ErrorMessage="Comment is Required" ForeColor="Red" CssClass="help is-danger has-text-weight-semibold"></asp:RequiredFieldValidator>

                  <button class="button is-block is-info is-large is-fullwidth">Submit</button>
                </form>
              </div>
            </div>
          </div>
        </div>
    </section>

</asp:Content>