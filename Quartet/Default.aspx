<%@ Page Title="Quartet | Home Page" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="hero is-large is-bold header-image" style="background-image: url(beard_trim.jpg); background-size: cover; background-repeat: no-repeat; background-position: top;">
        <div class="hero-body">
              <div class="container has-text-left animated fadeInDown" style="animation-delay: 500ms;animation-duration: 3s">
                <h1 class="title is-text is-2 has-text-weight-bold" style="color: #CF000F;"> <!--REMOVE STYLING LATER -->
                    Welcome to Quartet
                </h1>
                <h2 class="subtitle has-text-info is-1 has-text-weight-light">
                    The new standard in Barbering.
                </h2>
              </div>
        </div>
    </section>

    <div class="box cta">
        <p class="has-text-centered">
          <span class="tag has-text-white" style="background-color: #CF000F;">New</span> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        </p>
    </div>

    <br />
    <br />


    <div class="container is-centered has-text-centered">
        <div class="column is-6 is-offset-3 ">
      <h2 class="title is-size-2 has-text-weight-bold" style="color: #CF000F;">Stay Groomed, Gentleman.</h2><br>
      <p class="subtitle is-size-4 has-text-weight-light"><strong>Live the little things.</strong> A warm lather & straight razor shave. A quality cut by someone who knows what they're doing. Trust us with your trims & leave knowing you look damn good.</p>
    <hr />
        </div>
    </div>


    <br />


    <section class="container">
    <div class="columns">
      <div class="column is-4">
        <div class="">
          <div class="card-image has-text-centered">
              <i class="far fa-clock fa-10x has-text-info"></i>
          </div>
          <div class="card-content">
            <div class="content">
              <h4 class="is-size-4" style="color: #CF000F;">Always on your time </h4>
              <p>Purus semper eget duis at tellus at urna condimentum mattis. Non blandit massa enim nec. Integer enim neque volutpat ac tincidunt vitae semper quis. Accumsan tortor posuere ac ut consequat semper viverra nam.</p>
              <p><a href="#">Learn more</a></p>
            </div>
          </div>
        </div>
      </div>

      <div class="column is-4">
        <div class="">
          <div class="card-image has-text-centered">
              <i class="fas fa-id-card fa-10x has-text-info"></i>
          </div>
          <div class="card-content">
            <div class="content">
              <h4 class="is-size-4" style="color: #CF000F;">Personalized Experience</h4>
              <p>Ut venenatis tellus in metus vulputate. Amet consectetur adipiscing elit pellentesque. Sed arcu non odio euismod lacinia at quis risus. Faucibus turpis in eu mi bibendum neque egestas cmonsu songue. Phasellus vestibulum lorem sed risus.</p>
              <p><a href="#">Learn more</a></p>
            </div>
          </div>
        </div>
      </div>

      <div class="column is-4">
        <div class="">
          <div class="card-image has-text-centered">
              <i class="fas fa-cut fa-10x has-text-info"></i>
          </div>
          <div class="card-content">
            <div class="content">
              <h4 class="is-size-4" style="color: #CF000F;">The Perfect Cut Everytime</h4>
              <p>Imperdiet dui accumsan sit amet nulla facilisi morbi. Fusce ut placerat orci nulla pellentesque dignissim enim. Libero id faucibus nisl tincidunt eget nullam. Commodo viverra maecenas accumsan lacus vel facilisis.</p>
              <p><a href="#">Learn more</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <br />

    <section class="container box">
        <div class="columns">
            <div class="column">
                <figure class="image">
                <img src="barbers_pole.jpg" />
                </figure>
            </div>
            <div class="column is-2 is-text">
                <p class="title has-text-centered">This is a test</p>
                <div>
                <p class="subtitle ">This is a test test test and more test as i try to figure out how to lay this out.</p>
                </div>
            </div>
        </div>
        </section>
    </section>
    <br />
</asp:Content>

