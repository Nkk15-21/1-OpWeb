<%@ Page Title="Lisa auto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About4.aspx.cs" Inherits="_1_OpWeb.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.<asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1_autod" DefaultMode="Insert" Height="237px" Width="482px" AutoGenerateRows="False">
            <Fields>
                <asp:CommandField ShowInsertButton="True" />
                <asp:BoundField DataField="autoID" HeaderText="autoID" InsertVisible="False" ReadOnly="True" SortExpression="autoID" />
                <asp:BoundField DataField="regNum" HeaderText="Registratsiooni Number" SortExpression="regNum" />
                <asp:BoundField DataField="mark" HeaderText="mark" SortExpression="mark" />
                <asp:BoundField DataField="aasta" HeaderText="aasta" SortExpression="aasta" />
                <asp:TemplateField HeaderText="omanikID" SortExpression="omanikID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("omanikID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1_omanik" DataTextField="nimi" DataValueField="omanikID" SelectedValue='<%# Bind("omanikID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1_omanik" runat="server" ConnectionString="<%$ ConnectionStrings:OPIConnectionString2 %>" DeleteCommand="DELETE FROM [omanik] WHERE [omanikID] = @omanikID" InsertCommand="INSERT INTO [omanik] ([nimi]) VALUES (@nimi)" SelectCommand="SELECT [omanikID], [nimi] FROM [omanik]" UpdateCommand="UPDATE [omanik] SET [nimi] = @nimi WHERE [omanikID] = @omanikID">
                            <DeleteParameters>
                                <asp:Parameter Name="omanikID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nimi" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nimi" Type="String" />
                                <asp:Parameter Name="omanikID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("omanikID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1_autod" runat="server" ConnectionString="<%$ ConnectionStrings:OPIConnectionString2 %>" DeleteCommand="DELETE FROM [auto] WHERE [autoID] = @autoID" InsertCommand="INSERT INTO [auto] ([mark], [regNum], [aasta], [omanikID]) VALUES (@mark, @regNum, @aasta, @omanikID)" ProviderName="<%$ ConnectionStrings:OPIConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [auto]" UpdateCommand="UPDATE [auto] SET [mark] = @mark, [regNum] = @regNum, [aasta] = @aasta, [omanikID] = @omanikID WHERE [autoID] = @autoID">
                <DeleteParameters>
                    <asp:Parameter Name="autoID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="mark" Type="String" />
                    <asp:Parameter Name="regNum" Type="String" />
                    <asp:Parameter Name="aasta" Type="Int32" />
                    <asp:Parameter Name="omanikID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="mark" Type="String" />
                    <asp:Parameter Name="regNum" Type="String" />
                    <asp:Parameter Name="aasta" Type="Int32" />
                    <asp:Parameter Name="omanikID" Type="Int32" />
                    <asp:Parameter Name="autoID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</h2>
<p>&nbsp;</p>
           
        Toolbox-->Data-->Detailsview

    </main>
</asp:Content>
