<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="hero is-large is-bold header-image" style="background-image: url(fade_cut.jpg); background-size: cover; background-repeat: no-repeat; background-position: center;" >
        <div class="hero-body">
              <div class="container has-text-right animated fadeInDown" style="animation-delay: 500ms;animation-duration: 3s">
                <h1 class="title is-text is-1 has-text-weight-bold" style="color: #CF000F;"> <!--REMOVE STYLING LATER -->
                    Services
                </h1>
                <h2 class="subtitle has-text-info is-1 has-text-weight-light">
                    Everything we have to offer.
                </h2>
              </div>
        </div>
    </section>

    <div class="box">
        <p class="has-text-centered">
            <span class="tag is-primary">New</span> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        </p>
    </div>

    <div class="container box">
        <div class="intro column is-6 is-offset-3 has-text-centered">
          <h2 class="title has-text-info is-size-2">Heres external Link</h2><br>
          <p class="subtitle has-text-black">Vel fringilla est ullamcorper eget nulla facilisi. <a>https://www.menshairstyletrends.com/ipsum</a> a. Neque egestas congue quisque egestas diam in arcu cursus.</p>
        </div>
    </div>

    <section class="container">
        <div class="columns">

            <div class="column is-6">
                <div class="card box">
                    <div class="card-image">
                        <figure class="image">
                            <img src="header_cut.jpg" />
                        </figure>
                    </div>
                    <div class="card-content">
                        <p class="title is-4" style="color: #CF000F;">Hair Cuts</p>
                        <p class="subtitle has-text-info">A timeless classic</p>
                        <p class="subtitle">An original cut including neck and sideburn shave, scalp massage, wash and treatment and re-style. Complete with a rejuvenating shoulder and neck massage.</p>
                        <p class="is-text has-text-info">$49.99</p>
                        <button class="button is-info">Select</button>
                    </div>
                </div>
            </div>

            <div class="column is-6">
                <div class="card box">
                    <div class="card-image">
                        <figure class="image">
                            <img src="blade_shave.jpg" />
                        </figure>
                    </div>
                    <div class="card-content">
                        <p class="title is-4" style="color: #CF000F;">Straight Razor Shave</p>
                        <p class="subtitle has-text-info">Sharp and Crisp</p>
                        <p class="subtitle">Perfect straight razor shave featuring hot and cold towels, essential oils, warm cream lather, and facial moisturizer. Complete with a rejuvenating shoulder and neck massage.</p>
                        <p class="is-text has-text-info">$34.99</p>
                        <button class="button is-info" >Select</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="columns">
            <div class="column is-6">
                <div class="card box">
                    <div class="card-image">
                        <figure class="image">
                            <img src="header_cut.jpg" />
                        </figure>
                    </div>
                    <div class="card-content">
                        <p class="title is-4" style="color: #CF000F;">Line Up</p>
                        <p class="subtitle has-text-info">A timeless classic</p>
                        <p class="subtitle">A precision shave featuring hot towel treatment, hot lather shave and and post shave cooling lotion.</p>
                        <p class="is-text has-text-info">$24.99</p>
                        <button class="button is-info">Select</button>
                    </div>
                </div>
            </div>
            <div class="column is-6">
                <div class="card box">
                    <div class="card-image">
                        <figure class="image">
                            <img src="hair_wash.jpeg" />
                        </figure>
                    </div>
                    <div class="card-content">
                        <p class="title is-4" style="color: #CF000F;">Shampoo and Conditioning</p>
                        <p class="subtitle has-text-info">A timeless classic</p>
                        <p class="subtitle">Massaging shampoo, cut and style, hot lather neck trim and rejuvenating neck massage. Includes complimentary edge-out between cuts to keep you looking sharp.</p>
                        <p class="is-text has-text-info">$64.99</p>
                        <button class="button is-info">Select</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="hero box is-info">
        <div class="intro column is-6 is-offset-3 has-text-centered">
          <h2 class="title has-text-white">Heres what we have to offer!</h2>
          <p class="subtitle has-text-white">Vel fringilla est ullamcorper eget nulla facilisi. Nulla facilisi nullam vehicula ipsum a. Neque egestas congue quisque egestas diam in arcu cursus.</p>
        </div>
    </div>

</asp:Content>

