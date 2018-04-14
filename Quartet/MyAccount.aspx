<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <section class="hero is-light is-fullheight">
        <div class="hero-body">
          <div class="container has-text-centered">
            <div class="column is-4 is-offset-4">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyOwnConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = @original_UserID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([UserPassword] = @original_UserPassword) OR ([UserPassword] IS NULL AND @original_UserPassword IS NULL)) AND (([UserEmail] = @original_UserEmail) OR ([UserEmail] IS NULL AND @original_UserEmail IS NULL)) AND (([UserContactNumber] = @original_UserContactNumber) OR ([UserContactNumber] IS NULL AND @original_UserContactNumber IS NULL))" InsertCommand="INSERT INTO [Users] ([UserName], [UserPassword], [UserEmail], [UserContactNumber], [UserID]) VALUES (@UserName, @UserPassword, @UserEmail, @UserContactNumber, @UserID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UserName], [UserPassword], [UserEmail], [UserContactNumber], [UserID] FROM [Users] WHERE ([UserEmail] = @UserEmail)" UpdateCommand="UPDATE [Users] SET [UserName] = @UserName, [UserPassword] = @UserPassword, [UserEmail] = @UserEmail, [UserContactNumber] = @UserContactNumber WHERE [UserID] = @original_UserID AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([UserPassword] = @original_UserPassword) OR ([UserPassword] IS NULL AND @original_UserPassword IS NULL)) AND (([UserEmail] = @original_UserEmail) OR ([UserEmail] IS NULL AND @original_UserEmail IS NULL)) AND (([UserContactNumber] = @original_UserContactNumber) OR ([UserContactNumber] IS NULL AND @original_UserContactNumber IS NULL))">
                      <DeleteParameters>
                          <asp:Parameter Name="original_UserID" Type="Int32" />
                          <asp:Parameter Name="original_UserName" Type="String" />
                          <asp:Parameter Name="original_UserPassword" Type="String" />
                          <asp:Parameter Name="original_UserEmail" Type="String" />
                          <asp:Parameter Name="original_UserContactNumber" Type="String" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="UserName" Type="String" />
                          <asp:Parameter Name="UserPassword" Type="String" />
                          <asp:Parameter Name="UserEmail" Type="String" />
                          <asp:Parameter Name="UserContactNumber" Type="String" />
                          <asp:Parameter Name="UserID" Type="Int32" />
                      </InsertParameters>
                      <SelectParameters>
                          <asp:SessionParameter DefaultValue="New" Name="UserEmail" SessionField="New" Type="String" />
                      </SelectParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="UserName" Type="String" />
                          <asp:Parameter Name="UserPassword" Type="String" />
                          <asp:Parameter Name="UserEmail" Type="String" />
                          <asp:Parameter Name="UserContactNumber" Type="String" />
                          <asp:Parameter Name="original_UserID" Type="Int32" />
                          <asp:Parameter Name="original_UserName" Type="String" />
                          <asp:Parameter Name="original_UserPassword" Type="String" />
                          <asp:Parameter Name="original_UserEmail" Type="String" />
                          <asp:Parameter Name="original_UserContactNumber" Type="String" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CellSpacing="4" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Groove" BorderWidth="4px">
                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                      <Columns>
                          <asp:CommandField ShowEditButton="True" ButtonType="Button" />
                          <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                          <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                          <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
                          <asp:BoundField DataField="UserContactNumber" HeaderText="UserContactNumber" SortExpression="UserContactNumber" />
                          <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
                      </Columns>
                      <EditRowStyle BackColor="White" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px" />
                      <EmptyDataRowStyle BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderStyle="Groove" />
                      <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                      <HeaderStyle BackColor="#0066FF" Font-Bold="True" ForeColor="White" BorderColor="#CCCCCC" BorderStyle="Groove" BorderWidth="2px" />
                      <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                      <RowStyle BackColor="White" ForeColor="#333333" BorderColor="Silver" BorderStyle="Groove" BorderWidth="3px" />
                      <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                      <SortedAscendingCellStyle BackColor="#E9E7E2" />
                      <SortedAscendingHeaderStyle BackColor="#506C8C" />
                      <SortedDescendingCellStyle BackColor="#FFFDF8" />
                      <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                  </asp:GridView>


                <asp:Label ID="lbl_CheckAcc" runat="server" class="title has-text-grey"></asp:Label>
                <br />


                </div>
              </div>
            </div>
        </section>
</asp:Content>

