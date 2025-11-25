<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Stergere.aspx.cs" Inherits="TPW_proiect.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label2" runat="server" Text="Stergere angajati"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Nume:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_ANGAJAT" DataSourceID="SqlDataSource1">
        <Columns>
                  <asp:TemplateField HeaderText="Sterge">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnDelete" runat="server"
                            CommandName="Delete"
                            Text="Sterge"
                            OnClientClick="return confirm('Ești sigur că vrei să ștergi acest angajat?');">
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            <asp:BoundField DataField="ID_ANGAJAT" HeaderText="ID_ANGAJAT" ReadOnly="True" SortExpression="ID_ANGAJAT" />
            <asp:BoundField DataField="NUME" HeaderText="NUME" SortExpression="NUME" />
            <asp:BoundField DataField="PRENUME" HeaderText="PRENUME" SortExpression="PRENUME" />
            <asp:BoundField DataField="FUNCTIE" HeaderText="FUNCTIE" SortExpression="FUNCTIE" />
            <asp:BoundField DataField="SALAR_BAZA" HeaderText="SALAR_BAZA" SortExpression="SALAR_BAZA" />
            <asp:BoundField DataField="SPOR_PROCENT" HeaderText="SPOR_PROCENT" SortExpression="SPOR_PROCENT" />
            <asp:BoundField DataField="PREMII_BRUTE" HeaderText="PREMII_BRUTE" SortExpression="PREMII_BRUTE" />
            <asp:BoundField DataField="RETINERI" HeaderText="RETINERI" SortExpression="RETINERI" />
            <asp:BoundField DataField="TOTAL_BRUT" HeaderText="TOTAL_BRUT" SortExpression="TOTAL_BRUT" />
            <asp:BoundField DataField="CAS" HeaderText="CAS" SortExpression="CAS" />
            <asp:BoundField DataField="CASS" HeaderText="CASS" SortExpression="CASS" />
            <asp:BoundField DataField="IMPOZIT" HeaderText="IMPOZIT" SortExpression="IMPOZIT" />
            <asp:BoundField DataField="VIRAT_CARD" HeaderText="VIRAT_CARD" SortExpression="VIRAT_CARD" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ANGAJATI&quot; WHERE &quot;ID_ANGAJAT&quot; = :ID_ANGAJAT" InsertCommand="INSERT INTO &quot;ANGAJATI&quot; (&quot;ID_ANGAJAT&quot;, &quot;NUME&quot;, &quot;PRENUME&quot;, &quot;FUNCTIE&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR_PROCENT&quot;, &quot;PREMII_BRUTE&quot;, &quot;RETINERI&quot;, &quot;TOTAL_BRUT&quot;, &quot;CAS&quot;, &quot;CASS&quot;, &quot;IMPOZIT&quot;, &quot;VIRAT_CARD&quot;, &quot;POZA&quot;) VALUES (:ID_ANGAJAT, :NUME, :PRENUME, :FUNCTIE, :SALAR_BAZA, :SPOR_PROCENT, :PREMII_BRUTE, :RETINERI, :TOTAL_BRUT, :CAS, :CASS, :IMPOZIT, :VIRAT_CARD, :POZA)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ANGAJATI&quot; WHERE (&quot;NUME&quot; = :NUME)" UpdateCommand="UPDATE &quot;ANGAJATI&quot; SET &quot;NUME&quot; = :NUME, &quot;PRENUME&quot; = :PRENUME, &quot;FUNCTIE&quot; = :FUNCTIE, &quot;SALAR_BAZA&quot; = :SALAR_BAZA, &quot;SPOR_PROCENT&quot; = :SPOR_PROCENT, &quot;PREMII_BRUTE&quot; = :PREMII_BRUTE, &quot;RETINERI&quot; = :RETINERI, &quot;TOTAL_BRUT&quot; = :TOTAL_BRUT, &quot;CAS&quot; = :CAS, &quot;CASS&quot; = :CASS, &quot;IMPOZIT&quot; = :IMPOZIT, &quot;VIRAT_CARD&quot; = :VIRAT_CARD, &quot;POZA&quot; = :POZA WHERE &quot;ID_ANGAJAT&quot; = :ID_ANGAJAT">
        <DeleteParameters>
            <asp:Parameter Name="ID_ANGAJAT" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_ANGAJAT" Type="Decimal" />
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="FUNCTIE" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="SPOR_PROCENT" Type="Decimal" />
            <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="RETINERI" Type="Decimal" />
            <asp:Parameter Name="TOTAL_BRUT" Type="Decimal" />
            <asp:Parameter Name="CAS" Type="Decimal" />
            <asp:Parameter Name="CASS" Type="Decimal" />
            <asp:Parameter Name="IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="VIRAT_CARD" Type="Decimal" />
            <asp:Parameter Name="POZA" Type="Object" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="NUME" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="FUNCTIE" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="SPOR_PROCENT" Type="Decimal" />
            <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="RETINERI" Type="Decimal" />
            <asp:Parameter Name="TOTAL_BRUT" Type="Decimal" />
            <asp:Parameter Name="CAS" Type="Decimal" />
            <asp:Parameter Name="CASS" Type="Decimal" />
            <asp:Parameter Name="IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="VIRAT_CARD" Type="Decimal" />
            <asp:Parameter Name="POZA" Type="Object" />
            <asp:Parameter Name="ID_ANGAJAT" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
