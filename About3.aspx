<%@ Page Title="Autod" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About3.aspx.cs" Inherits="_1_OpWeb.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="1035px" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="mark" HeaderText="Mark" SortExpression="mark" />
                    <asp:BoundField DataField="aasta" HeaderText="Aasta" SortExpression="aasta" />
                    <asp:BoundField DataField="regNumber" HeaderText="Registratsiooni Number" SortExpression="regNumber" />
                    <asp:BoundField DataField="nimi" HeaderText="Nimi" SortExpression="nimi" />
                    <asp:BoundField DataField="telefon" HeaderText="Telefon" SortExpression="telefon" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AutoTARgvConnectionString1 %>" DeleteCommand="DELETE FROM [auto] WHERE [autoID] = @autoID" InsertCommand="INSERT INTO [auto] ([mark], [aasta], [regNumber], [omanikID]) VALUES (@mark, @aasta, @regNumber, @omanikID)" SelectCommand="SELECT auto.mark, auto.aasta, auto.regNumber, omanik.nimi, omanik.telefon FROM auto INNER JOIN omanik ON auto.omanikID = omanik.omanikID" UpdateCommand="UPDATE [auto] SET [mark] = @mark, [aasta] = @aasta, [regNumber] = @regNumber, [omanikID] = @omanikID WHERE [autoID] = @autoID">
                <DeleteParameters>
                    <asp:Parameter Name="autoID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="mark" Type="String" />
                    <asp:Parameter Name="aasta" Type="Int32" />
                    <asp:Parameter Name="regNumber" Type="String" />
                    <asp:Parameter Name="omanikID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="mark" Type="String" />
                    <asp:Parameter Name="aasta" Type="Int32" />
                    <asp:Parameter Name="regNumber" Type="String" />
                    <asp:Parameter Name="omanikID" Type="Int32" />
                    <asp:Parameter Name="autoID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</h2>
    </main>
</asp:Content>
