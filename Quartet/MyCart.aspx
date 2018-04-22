<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="hero is-light is-fullheight">
        <div class="hero-body">
          <div class="container has-text-centered">
            <div class="column is-4 is-offset-4">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyOwnConnectionString %>" SelectCommand="SELECT * FROM [Services_] WHERE ([ServiceName] = @ServiceName2)" DeleteCommand="DELETE FROM [Services_] WHERE [ServiceID] = @ServiceID" InsertCommand="INSERT INTO [Services_] ([ServiceID], [ServiceName], [ServicePrice]) VALUES (@ServiceID, @ServiceName, @ServicePrice)" UpdateCommand="UPDATE [Services_] SET [ServiceName] = @ServiceName, [ServicePrice] = @ServicePrice WHERE [ServiceID] = @ServiceID">
        <DeleteParameters>
            <asp:Parameter Name="ServiceID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ServiceID" Type="Int32" />
            <asp:Parameter Name="ServiceName" Type="String" />
            <asp:Parameter Name="ServicePrice" Type="Double" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="ServiceName2" SessionField="my_cart" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ServiceName" Type="String" />
            <asp:Parameter Name="ServicePrice" Type="Double" />
            <asp:Parameter Name="ServiceID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ServiceID" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="ServiceID" HeaderText="ServiceID" ReadOnly="True" SortExpression="ServiceID" />
            <asp:BoundField DataField="ServiceName" HeaderText="ServiceName" SortExpression="ServiceName" />
            <asp:BoundField DataField="ServicePrice" HeaderText="ServicePrice" SortExpression="ServicePrice" />
        </Fields>
    </asp:DetailsView>

    <asp:Label ID="lbl_cart" runat="server" class="title has-text-grey"></asp:Label>

</div>
              </div>
            </div>
        </section>

    </asp:Content>

