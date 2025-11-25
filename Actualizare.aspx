<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Actualizare.aspx.cs" Inherits="TPW_proiect.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container mt-4">

        <!-- Căutare Section -->

       <div class="search-section card border-0 shadow-lg mb-4">
    <div class="card-header bg-gradient-primary text-white py-4 border-0">
        <div class="d-flex align-items-center">
            <div class="search-icon-wrapper me-3">
                <i class="fas fa-search fs-4"></i>
            </div>
            <div>
                <h4 class="mb-1 fw-bold">Căutare Angajat</h4>
                <p class="mb-0 opacity-75">Găsiți rapid angajații în baza de date</p>
            </div>
        </div>
    </div>
    <div class="card-body p-4">
        <div class="row g-4 align-items-end">
            <div class="col-lg-4 col-md-6">
                <div class="form-group">
                    <label class="form-label fw-semibold text-dark mb-2">
                        <i class="fas fa-filter me-2 text-primary"></i>Criteriu căutare
                    </label>
                    <asp:DropDownList ID="ddlCautare" runat="server" 
                        CssClass="form-select form-select-lg border-2 shadow-sm">
                        <asp:ListItem Value="NUME" Text="🔍 După Nume" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="PRENUME" Text="👤 După Prenume"></asp:ListItem>
                        <asp:ListItem Value="FUNCTIE" Text="💼 După Funcție"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </div>
            </div>
            <div class="col-lg-5 col-md-6">
                <div class="form-group">
                    <label class="form-label fw-semibold text-dark mb-2">
                        Căutare
                    </label>
                    <asp:TextBox ID="TextBox1" runat="server" 
                        CssClass="form-control form-control-lg border-2 shadow-sm"
                        placeholder="Introduceți datele pentru căutare..."
                        Width="32%"></asp:TextBox>
                    <br />
                </div>
            </div>
            <div class="col-lg-3 col-md-12">
                <div class="form-group">
                    <label class="form-label fw-semibold text-dark mb-2" style="visibility: hidden;">Acțiune</label>
                    <asp:Button ID="Button1" runat="server" Text="🔍 Caută" 
                        CssClass="btn btn-primary btn-lg w-100 fw-bold shadow-sm"
                        OnClick="Button1_Click"
                        Style="height: 48px; font-size: 1.1rem;" />
                </div>
            </div>
        </div>
    </div>
</div>

<style>
.search-section {
    background: linear-gradient(135deg, #ffffff 0%, #f8f9fa 100%);
    border-radius: 15px;
    overflow: hidden;
}

.bg-gradient-primary {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%) !important;
}

.card-header {
    border-radius: 15px 15px 0 0 !important;
    padding: 1.5rem !important;
}

.search-icon-wrapper {
    background: rgba(255, 255, 255, 0.2);
    padding: 12px;
    border-radius: 12px;
    backdrop-filter: blur(10px);
}

.card-header h4 {
    font-size: 1.5rem;
    font-weight: 700;
}

.card-header p {
    font-size: 0.95rem;
    opacity: 0.9;
}

.form-select, .form-control {
    border: 2px solid #e9ecef;
    transition: all 0.3s ease;
    font-size: 1rem;
    padding: 0.75rem 1rem;
}

.form-select:focus, .form-control:focus {
    border-color: #667eea;
    box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.25);
    transform: translateY(-2px);
}

.btn-primary {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    border: none;
    transition: all 0.3s ease;
}

.btn-primary:hover {
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
}

.form-label {
    font-size: 0.95rem;
    letter-spacing: 0.5px;
}

.shadow-lg {
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1) !important;
}

.shadow-sm {
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08) !important;
}
</style>

        <!-- GridView pentru Editare -->

        <div class="card shadow-sm mb-4">
            <div class="card-header bg-info text-white">
                <h2 class="mb-0"><i class="fas fa-edit"></i> Editare Date Angajat</h2>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="ID_ANGAJAT" DataSourceID="SqlDataSource1" 
                        OnUpdating="SqlDataSource1_Updating" 
                        CssClass="table table-striped table-bordered table-hover"
                        GridLines="None">
                        <Columns>
                            <asp:BoundField DataField="ID_ANGAJAT" HeaderText="ID" ReadOnly="True" 
                                SortExpression="ID_ANGAJAT" ItemStyle-CssClass="fw-bold" >
<ItemStyle CssClass="fw-bold"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="NUME" HeaderText="Nume" SortExpression="NUME" />
                            <asp:BoundField DataField="PRENUME" HeaderText="Prenume" SortExpression="PRENUME" />
                            <asp:BoundField DataField="FUNCTIE" HeaderText="Funcție" SortExpression="FUNCTIE" />
                            <asp:BoundField DataField="SALAR_BAZA" HeaderText="Salar Bază" 
                                SortExpression="SALAR_BAZA" DataFormatString="{0:C}" />
                            <asp:BoundField DataField="SPOR_PROCENT" HeaderText="Spor %" 
                                SortExpression="SPOR_PROCENT" DataFormatString="{0}%" />
                            <asp:BoundField DataField="PREMII_BRUTE" HeaderText="Premii" 
                                SortExpression="PREMII_BRUTE" DataFormatString="{0:C}" />
                            <asp:BoundField DataField="RETINERI" HeaderText="Retineri" 
                                SortExpression="RETINERI" DataFormatString="{0:C}" />
                            <asp:BoundField DataField="TOTAL_BRUT" HeaderText="Total Brut" 
                                SortExpression="TOTAL_BRUT" ReadOnly="True" DataFormatString="{0:C}" 
                                ItemStyle-CssClass="fw-bold text-success" >
<ItemStyle CssClass="fw-bold text-success"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="CAS" HeaderText="CAS" SortExpression="CAS" 
                                ReadOnly="True" DataFormatString="{0:C}" />
                            <asp:BoundField DataField="CASS" HeaderText="CASS" SortExpression="CASS" 
                                ReadOnly="True" DataFormatString="{0:C}" />
                            <asp:BoundField DataField="IMPOZIT" HeaderText="Impozit" 
                                SortExpression="IMPOZIT" ReadOnly="True" DataFormatString="{0:C}" />
                            <asp:BoundField DataField="VIRAT_CARD" HeaderText="Virat Card" 
                                SortExpression="VIRAT_CARD" ReadOnly="True" DataFormatString="{0:C}" 
                                ItemStyle-CssClass="fw-bold text-primary" >
<ItemStyle CssClass="fw-bold text-primary"></ItemStyle>
                            </asp:BoundField>
                            <asp:CommandField CancelText="Abandoneaza" 
                                EditText="Editeaza" 
                                HeaderText="Editare" ShowEditButton="True" 
                                UpdateText="Actualizează" 
                                ButtonType="Button" ControlStyle-CssClass="btn btn-sm btn-outline-primary" >
<ControlStyle CssClass="btn btn-sm btn-outline-primary"></ControlStyle>
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle CssClass="table-dark" />
                        <RowStyle CssClass="align-middle" />
                        <AlternatingRowStyle CssClass="table-light" />
                    </asp:GridView>
                </div>
            </div>
        </div>

        <!-- FormView pentru Detalii -->
     <!-- FormView pentru Detalii -->
<div class="card shadow-sm mb-4">
    <div class="card-header bg-warning text-dark">
        <h3 class="mb-0"><i class="fas fa-user"></i> Detalii Angajat</h3>
    </div>
    <div class="card-body">
        <div class="form-view-container">
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_ANGAJAT" 
                DataSourceID="SqlDataSource1" OnDataBound="FormView1_DataBound" 
                RenderOuterTable="false">
                <ItemTemplate>
                    <div class="row">
                        <!-- Coloana pentru imagine -->
                        <div class="col-md-4 text-center">
                            <asp:Image ID="Image1" runat="server" 
                                ImageUrl='<%# "GetImage.ashx?id=" + Eval("ID_ANGAJAT") %>' 
                                CssClass="img-thumbnail mb-3" Width="200px" Height="200px" 
                                AlternateText='<%# Eval("NUME") + " " + Eval("PRENUME") %>' />
                            <h3 class="fw-bold mt-2"><%# Eval("NUME") %> <%# Eval("PRENUME") %></h3>
                           
                        </div>
                        
                        <!-- Coloana pentru detalii -->
                        <div class="col-md-8">
                            <div class="row g-3">
                                <!-- Informații de bază -->
                                <div class="col-md-6">
                                    <label class="form-label fw-bold">ID Angajat:</label>
                                    <div class="form-control bg-light">
                                        <asp:Label ID="ID_ANGAJATLabel" runat="server" 
                                            Text='<%# Eval("ID_ANGAJAT") %>' />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label fw-bold">Nume:</label>
                                    <div class="form-control bg-light">
                                        <asp:Label ID="NUMELabel" runat="server" Text='<%# Bind("NUME") %>' />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label fw-bold">Prenume:</label>
                                    <div class="form-control bg-light">
                                        <asp:Label ID="PRENUMELabel" runat="server" Text='<%# Bind("PRENUME") %>' />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label fw-bold">Funcție:</label>
                                    <div class="form-control bg-light">
                                        <asp:Label ID="FUNCTIELabel" runat="server" Text='<%# Bind("FUNCTIE") %>' />
                                    </div>
                                </div>

                                <!-- Venituri -->
                                <div class="col-12 mt-3">
                                    <h6 class="fw-bold border-bottom pb-2 text-primary">
                                        <i class="fas fa-money-bill-wave"></i> Venituri
                                    </h6>
                                </div>
                                
                                <div class="col-md-6">
                                    <label class="form-label fw-bold">Salar Bază:</label>
                                    <div class="form-control bg-light">
                                        <asp:Label ID="SALAR_BAZALabel" runat="server" 
                                            Text='<%# string.Format("{0:C}", Eval("SALAR_BAZA")) %>' />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label fw-bold">Spor %:</label>
                                    <div class="form-control bg-light">
                                        <asp:Label ID="SPOR_PROCENTLabel" runat="server" 
                                            Text='<%# string.Format("{0}%", Eval("SPOR_PROCENT")) %>' />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label fw-bold">Premii:</label>
                                    <div class="form-control bg-light">
                                        <asp:Label ID="PREMII_BRUTELabel" runat="server" 
                                            Text='<%# string.Format("{0:C}", Eval("PREMII_BRUTE")) %>' />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label fw-bold">Retineri:</label>
                                    <div class="form-control bg-light">
                                        <asp:Label ID="RETINERILabel" runat="server" 
                                            Text='<%# string.Format("{0:C}", Eval("RETINERI")) %>' />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <label class="form-label fw-bold text-success">Total Brut:</label>
                                    <div class="form-control bg-light fw-bold text-success">
                                        <asp:Label ID="TOTAL_BRUTLabel" runat="server" 
                                            Text='<%# string.Format("{0:C}", Eval("TOTAL_BRUT")) %>' />
                                    </div>
                                </div>

                                <!-- Contribuții și Impozite -->
                                <div class="col-12 mt-3">
                                    <h6 class="fw-bold border-bottom pb-2 text-danger">
                                        <i class="fas fa-file-invoice-dollar"></i> Contribuții și Impozite
                                    </h6>
                                </div>
                                
                                <div class="col-md-6">
                                    <label class="form-label fw-bold">CAS:</label>
                                    <div class="form-control bg-light">
                                        <asp:Label ID="CASLabel" runat="server" 
                                            Text='<%# string.Format("{0:C}", Eval("CAS")) %>' />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label fw-bold">CASS:</label>
                                    <div class="form-control bg-light">
                                        <asp:Label ID="CASSLabel" runat="server" 
                                            Text='<%# string.Format("{0:C}", Eval("CASS")) %>' />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <label class="form-label fw-bold">Impozit:</label>
                                    <div class="form-control bg-light">
                                        <asp:Label ID="IMPOZITLabel" runat="server" 
                                            Text='<%# string.Format("{0:C}", Eval("IMPOZIT")) %>' />
                                    </div>
                                </div>

                                <!-- Suma finală -->
                                <div class="col-12 mt-3">
                                    <h6 class="fw-bold border-bottom pb-2 text-success">
                                        <i class="fas fa-credit-card"></i> Suma Finală
                                    </h6>
                                </div>
                                
                                <div class="col-md-12">
                                    <label class="form-label fw-bold text-primary">Virat în Card:</label>
                                    <div class="form-control bg-light fw-bold text-primary fs-5">
                                        <asp:Label ID="VIRAT_CARDLabel" runat="server" 
                                            Text='<%# string.Format("{0:C}", Eval("VIRAT_CARD")) %>' />
                                    </div>
                                </div>

                                <!-- Sumar financiar -->
                                <div class="col-12 mt-4">
                                    <div class="card bg-light">
                                        <div class="card-body">
                                            <h6 class="card-title fw-bold text-dark">
                                                <i class="fas fa-chart-bar"></i> Sumar Financiar
                                            </h6>
                                            <div class="row text-center">
                                                <div class="col-md-4">
                                                    <small class="text-muted">Total Brut</small>
                                                    <div class="fw-bold text-success fs-5">
                                                        <%# string.Format("{0:C}", Eval("TOTAL_BRUT")) %>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <small class="text-muted">Total Contribuții</small>
                                                    <div class="fw-bold text-danger fs-5">
                                                        <%# string.Format("{0:C}", Convert.ToDecimal(Eval("CAS")) + Convert.ToDecimal(Eval("CASS")) + Convert.ToDecimal(Eval("IMPOZIT"))) %>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <small class="text-muted">Net în Mână</small>
                                                    <div class="fw-bold text-primary fs-5">
                                                        <%# string.Format("{0:C}", Eval("VIRAT_CARD")) %>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:FormView>

        <!-- Toți Angajații -->
        <div class="card shadow-sm">
    <div class="card-header bg-light text-dark">
        <h2 class="mb-0 fw-bold"><i class="fas fa-users me-2"></i>Toți Angajații</h2>
    </div>
    <div class="card-body p-0">
        <div class="table-responsive">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="ID_ANGAJAT" DataSourceID="SqlDataSource2" 
                CssClass="table table-hover table-bordered mb-0"
                GridLines="None"
                ShowHeaderWhenEmpty="true"
                EmptyDataText="Nu există angajați în baza de date">
                <Columns>
                    <asp:BoundField DataField="ID_ANGAJAT" HeaderText="ID" ReadOnly="True" 
                        SortExpression="ID_ANGAJAT" 
                        ItemStyle-CssClass="fw-bold text-center"
                        HeaderStyle-CssClass="text-center" />

                    <asp:BoundField DataField="NUME" HeaderText="Nume" SortExpression="NUME" 
                        ItemStyle-CssClass="fw-bold" />

                    <asp:BoundField DataField="PRENUME" HeaderText="Prenume" SortExpression="PRENUME" />

                    <asp:BoundField DataField="FUNCTIE" HeaderText="Funcție" SortExpression="FUNCTIE" 
                        ItemStyle-CssClass="text-muted" />

                    <asp:BoundField DataField="SALAR_BAZA" HeaderText="Salar Bază" 
                        SortExpression="SALAR_BAZA" DataFormatString="{0:C}" 
                        ItemStyle-CssClass="text-end"
                        HeaderStyle-CssClass="text-end" />

                    <asp:BoundField DataField="SPOR_PROCENT" HeaderText="Spor %" 
                        SortExpression="SPOR_PROCENT" DataFormatString="{0}%" 
                        ItemStyle-CssClass="text-center text-success fw-bold"
                        HeaderStyle-CssClass="text-center" />

                    <asp:BoundField DataField="PREMII_BRUTE" HeaderText="Premii" 
                        SortExpression="PREMII_BRUTE" DataFormatString="{0:C}" 
                        ItemStyle-CssClass="text-end text-info"
                        HeaderStyle-CssClass="text-end" />

                    <asp:BoundField DataField="RETINERI" HeaderText="Retineri" 
                        SortExpression="RETINERI" DataFormatString="{0:C}" 
                        ItemStyle-CssClass="text-end text-danger"
                        HeaderStyle-CssClass="text-end" />

                    <asp:BoundField DataField="TOTAL_BRUT" HeaderText="Total Brut" 
                        SortExpression="TOTAL_BRUT" DataFormatString="{0:C}" 
                        ItemStyle-CssClass="text-end fw-bold border-start text-success"
                        HeaderStyle-CssClass="text-end" />

                    <asp:BoundField DataField="CAS" HeaderText="CAS" SortExpression="CAS" 
                        DataFormatString="{0:C}" 
                        ItemStyle-CssClass="text-end text-muted"
                        HeaderStyle-CssClass="text-end" />

                    <asp:BoundField DataField="CASS" HeaderText="CASS" SortExpression="CASS" 
                        DataFormatString="{0:C}" 
                        ItemStyle-CssClass="text-end text-muted"
                        HeaderStyle-CssClass="text-end" />

                    <asp:BoundField DataField="IMPOZIT" HeaderText="Impozit" 
                        SortExpression="IMPOZIT" DataFormatString="{0:C}" 
                        ItemStyle-CssClass="text-end text-muted"
                        HeaderStyle-CssClass="text-end" />

                    <asp:BoundField DataField="VIRAT_CARD" HeaderText="Virat Card" 
                        SortExpression="VIRAT_CARD" DataFormatString="{0:C}" 
                        ItemStyle-CssClass="text-end fw-bold border-start text-primary"
                        HeaderStyle-CssClass="text-end" />
                </Columns>

                <HeaderStyle CssClass="table-secondary align-middle" Font-Bold="true" />
                <RowStyle CssClass="align-middle" />
                <AlternatingRowStyle CssClass="bg-light" />
            </asp:GridView>
        </div>
    </div>
</div>

<style>
    .table-hover tbody tr:hover {
        background-color: #f8f9fa !important;
    }
    
    .border-start {
        border-left: 2px solid #dee2e6 !important;
    }
    
    .table > :not(caption) > * > * {
        padding: 0.5rem;
    }
</style>

    <!-- Data Sources -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        OnUpdating="SqlDataSource1_Updating" 
        SelectCommand="SELECT * FROM &quot;ANGAJATI&quot; WHERE (&quot;NUME&quot; = :NUME)"
        DeleteCommand="DELETE FROM &quot;ANGAJATI&quot; WHERE &quot;ID_ANGAJAT&quot; = :ID_ANGAJAT" 
        InsertCommand="INSERT INTO &quot;ANGAJATI&quot; (&quot;ID_ANGAJAT&quot;, &quot;NUME&quot;, &quot;PRENUME&quot;, &quot;FUNCTIE&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR_PROCENT&quot;, &quot;PREMII_BRUTE&quot;, &quot;RETINERI&quot;, &quot;TOTAL_BRUT&quot;, &quot;CAS&quot;, &quot;CASS&quot;, &quot;IMPOZIT&quot;, &quot;VIRAT_CARD&quot;, &quot;POZA&quot;) VALUES (:ID_ANGAJAT, :NUME, :PRENUME, :FUNCTIE, :SALAR_BAZA, :SPOR_PROCENT, :PREMII_BRUTE, :RETINERI, :TOTAL_BRUT, :CAS, :CASS, :IMPOZIT, :VIRAT_CARD, :POZA)" 
        UpdateCommand="UPDATE &quot;ANGAJATI&quot; SET &quot;NUME&quot; = :NUME, &quot;PRENUME&quot; = :PRENUME, &quot;FUNCTIE&quot; = :FUNCTIE, &quot;SALAR_BAZA&quot; = :SALAR_BAZA, &quot;SPOR_PROCENT&quot; = :SPOR_PROCENT, &quot;PREMII_BRUTE&quot; = :PREMII_BRUTE, &quot;RETINERI&quot; = :RETINERI, &quot;TOTAL_BRUT&quot; = :TOTAL_BRUT, &quot;CAS&quot; = :CAS, &quot;CASS&quot; = :CASS, &quot;IMPOZIT&quot; = :IMPOZIT, &quot;VIRAT_CARD&quot; = :VIRAT_CARD, &quot;POZA&quot; = :POZA WHERE &quot;ID_ANGAJAT&quot; = :ID_ANGAJAT">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="NUME" PropertyName="Text" Type="String" />
        </SelectParameters>
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

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;ANGAJATI&quot;"></asp:SqlDataSource>

    <style>
        .form-view-container {
            width: 100%;
        }
        .form-view-container label {
            margin-bottom: 0.5rem;
            display: block;
        }
        .table th {
            font-weight: 600;
            font-size: 0.9rem;
        }
        .card-header h5 {
            font-weight: 600;
        }
        .form-control {
            background-color: #f8f9fa;
            border: 1px solid #dee2e6;
            padding: 0.375rem 0.75rem;
            min-height: 38px;
            display: flex;
            align-items: center;
        }
        .img-thumbnail {
            border: 1px solid #dee2e6;
            border-radius: 0.375rem;
        }
    </style>
</asp:Content>