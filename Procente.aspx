<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Procente.aspx.cs" Inherits="TPW_proiect.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="PAROLA">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="CAS" HeaderText="CAS" SortExpression="CAS" />
            <asp:BoundField DataField="CASS" HeaderText="CASS" SortExpression="CASS" />
            <asp:BoundField DataField="IMPOZIT" HeaderText="IMPOZIT" SortExpression="IMPOZIT" />
            <asp:BoundField DataField="PAROLA" HeaderText="PAROLA" SortExpression="PAROLA" ReadOnly="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROCENTE&quot;" DeleteCommand="DELETE FROM &quot;PROCENTE&quot; WHERE &quot;PAROLA&quot; = :PAROLA" InsertCommand="INSERT INTO &quot;PROCENTE&quot; (&quot;CAS&quot;, &quot;CASS&quot;, &quot;IMPOZIT&quot;, &quot;PAROLA&quot;) VALUES (:CAS, :CASS, :IMPOZIT, :PAROLA)" UpdateCommand="UPDATE &quot;PROCENTE&quot; SET &quot;CAS&quot; = :CAS, &quot;CASS&quot; = :CASS, &quot;IMPOZIT&quot; = :IMPOZIT WHERE &quot;PAROLA&quot; = :PAROLA">
        <DeleteParameters>
            <asp:Parameter Name="PAROLA" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CAS" Type="Decimal" />
            <asp:Parameter Name="CASS" Type="Decimal" />
            <asp:Parameter Name="IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="PAROLA" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CAS" Type="Decimal" />
            <asp:Parameter Name="CASS" Type="Decimal" />
            <asp:Parameter Name="IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="PAROLA" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
