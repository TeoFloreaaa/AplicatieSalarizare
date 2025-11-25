<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adaugare.aspx.cs" Inherits="TPW_proiect.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-container">
        <h2 class="page-title">Gestionare Angajați</h2>
        
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID_ANGAJAT" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserting="FormView1_ItemInserting" CssClass="styled-formview">
            
            <EditItemTemplate>
                <div class="form-section">
                    <h3>Editare Angajat</h3>
                    <div class="form-group">
                        <label class="form-label">ID_ANGAJAT:</label>
                        <asp:Label ID="ID_ANGAJATLabel1" runat="server" Text='<%# Eval("ID_ANGAJAT") %>' CssClass="form-value" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">NUME:</label>
                        <asp:TextBox ID="NUMETextBox" runat="server" Text='<%# Bind("NUME") %>' CssClass="form-input" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">PRENUME:</label>
                        <asp:TextBox ID="PRENUMETextBox" runat="server" Text='<%# Bind("PRENUME") %>' CssClass="form-input" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">FUNCTIE:</label>
                        <asp:TextBox ID="FUNCTIETextBox" runat="server" Text='<%# Bind("FUNCTIE") %>' CssClass="form-input" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">SALAR_BAZA:</label>
                        <asp:TextBox ID="SALAR_BAZATextBox" runat="server" Text='<%# Bind("SALAR_BAZA") %>' CssClass="form-input" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">SPOR_PROCENT:</label>
                        <asp:TextBox ID="SPOR_PROCENTTextBox" runat="server" Text='<%# Bind("SPOR_PROCENT") %>' CssClass="form-input" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">PREMII_BRUTE:</label>
                        <asp:TextBox ID="PREMII_BRUTETextBox" runat="server" Text='<%# Bind("PREMII_BRUTE") %>' CssClass="form-input" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">RETINERI:</label>
                        <asp:TextBox ID="RETINERITextBox" runat="server" Text='<%# Bind("RETINERI") %>' CssClass="form-input" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">TOTAL_BRUT:</label>
                        <asp:TextBox ID="TOTAL_BRUTTextBox" runat="server" Text='<%# Bind("TOTAL_BRUT") %>' CssClass="form-input" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">CAS:</label>
                        <asp:TextBox ID="CASTextBox" runat="server" Text='<%# Bind("CAS") %>' CssClass="form-input" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">CASS:</label>
                        <asp:TextBox ID="CASSTextBox" runat="server" Text='<%# Bind("CASS") %>' CssClass="form-input" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">IMPOZIT:</label>
                        <asp:TextBox ID="IMPOZITTextBox" runat="server" Text='<%# Bind("IMPOZIT") %>' CssClass="form-input" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">VIRAT_CARD:</label>
                        <asp:TextBox ID="VIRAT_CARDTextBox" runat="server" Text='<%# Bind("VIRAT_CARD") %>' CssClass="form-input" />
                    </div>
                    <div class="form-group">
                        <label class="form-label">POZA:</label>
                        <asp:TextBox ID="POZATextBox" runat="server" Text='<%# Bind("POZA") %>' CssClass="form-input" />
                    </div>
                    <div class="form-actions">
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-secondary" />
                    </div>
                </div>
            </EditItemTemplate>
            
            <InsertItemTemplate>
                <div class="form-section">
                    <h3>Adăugare Angajat Nou</h3>
                    <div class="form-group">
                        <label class="form-label">NUME:</label>
                        <asp:TextBox ID="NUMETextBox" runat="server" Text='<%# Bind("NUME") %>' CssClass="form-input" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="NUMETextBox" ErrorMessage="Numele contine doar litere mari si mici" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" CssClass="validator-error"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NUMETextBox" ErrorMessage="Camp Obligatoriu"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label class="form-label">PRENUME:</label>
                        <asp:TextBox ID="PRENUMETextBox" runat="server" Text='<%# Bind("PRENUME") %>' CssClass="form-input" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PRENUMETextBox" ErrorMessage="Numele contine doar litere mari si mici" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" CssClass="validator-error"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PRENUMETextBox" ErrorMessage="Camp Obligatoriu"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label class="form-label">FUNCTIE:</label>
                        <asp:TextBox ID="FUNCTIETextBox" runat="server" Text='<%# Bind("FUNCTIE") %>' CssClass="form-input" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="FUNCTIETextBox" ErrorMessage="Numele contine doar litere mari si mici" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" CssClass="validator-error"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FUNCTIETextBox" ErrorMessage="Camp Obligatoriu"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label class="form-label">SALAR_BAZA:</label>
                        <asp:TextBox ID="SALAR_BAZATextBox" runat="server" Text='<%# Bind("SALAR_BAZA") %>' CssClass="form-input" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="SALAR_BAZATextBox" ErrorMessage="Introdu un numar pozitiv" ValidationExpression="^\d+$" CssClass="validator-error"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SALAR_BAZATextBox" ErrorMessage="Camp Obligatoriu"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label class="form-label">SPOR_PROCENT:</label>
                        <asp:TextBox ID="SPOR_PROCENTTextBox" runat="server" Text='0' CssClass="form-input" ReadOnly="True" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="SPOR_PROCENTTextBox" ErrorMessage="Introdu un numar pozitiv" ValidationExpression="^\d+$" CssClass="validator-error"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <label class="form-label">PREMII_BRUTE:</label>
                        <asp:TextBox ID="PREMII_BRUTETextBox" runat="server" Text='0' CssClass="form-input" ReadOnly="True" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="PREMII_BRUTETextBox" ErrorMessage="Introdu un numar pozitiv" ValidationExpression="^\d+$" CssClass="validator-error"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <label class="form-label">RETINERI:</label>
                        <asp:TextBox ID="RETINERITextBox" runat="server" Text='0' CssClass="form-input" ReadOnly="True" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="RETINERITextBox" ErrorMessage="Introdu un numar pozitiv" ValidationExpression="^\d+$" CssClass="validator-error"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <label class="form-label">POZA:</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file-upload" />
                    </div>
                    <div class="form-actions">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Adaugare" CssClass="btn btn-success" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Abandoneaza" CssClass="btn btn-secondary" />
                    </div>
                </div>
            </InsertItemTemplate>
            
            <ItemTemplate>
                <div class="form-section">
                    <h3>Detalii Angajat</h3>
                    <div class="employee-details">
                        <div class="detail-row">
                            <span class="detail-label">NUME:</span>
                            <span class="detail-value"><asp:Label ID="NUMELabel" runat="server" Text='<%# Bind("NUME") %>' /></span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">PRENUME:</span>
                            <span class="detail-value"><asp:Label ID="PRENUMELabel" runat="server" Text='<%# Bind("PRENUME") %>' /></span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">FUNCTIE:</span>
                            <span class="detail-value"><asp:Label ID="FUNCTIELabel" runat="server" Text='<%# Bind("FUNCTIE") %>' /></span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">SALAR_BAZA:</span>
                            <span class="detail-value"><asp:Label ID="SALAR_BAZALabel" runat="server" Text='<%# Bind("SALAR_BAZA") %>' /></span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">SPOR_PROCENT:</span>
                            <span class="detail-value"><asp:Label ID="SPOR_PROCENTLabel" runat="server" Text='<%# Bind("SPOR_PROCENT") %>' /></span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">PREMII_BRUTE:</span>
                            <span class="detail-value"><asp:Label ID="PREMII_BRUTELabel" runat="server" Text='<%# Bind("PREMII_BRUTE") %>' /></span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">RETINERI:</span>
                            <span class="detail-value"><asp:Label ID="RETINERILabel" runat="server" Text='<%# Bind("RETINERI") %>' /></span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">TOTAL_BRUT:</span>
                            <span class="detail-value"><asp:Label ID="TOTAL_BRUTLabel" runat="server" Text='<%# Bind("TOTAL_BRUT") %>' /></span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">CAS:</span>
                            <span class="detail-value"><asp:Label ID="CASLabel" runat="server" Text='<%# Bind("CAS") %>' /></span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">CASS:</span>
                            <span class="detail-value"><asp:Label ID="CASSLabel" runat="server" Text='<%# Bind("CASS") %>' /></span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">IMPOZIT:</span>
                            <span class="detail-value"><asp:Label ID="IMPOZITLabel" runat="server" Text='<%# Bind("IMPOZIT") %>' /></span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">VIRAT_CARD:</span>
                            <span class="detail-value"><asp:Label ID="VIRAT_CARDLabel" runat="server" Text='<%# Bind("VIRAT_CARD") %>' /></span>
                        </div>
                        <div class="detail-row">
                            <span class="detail-label">POZA:</span>
                            <span class="detail-value">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "GetImage.ashx?id=" + Eval("ID_ANGAJAT") %>' Width="120px" Height="120px" CssClass="employee-photo" />
                            </span>
                        </div>
                    </div>
                    <div class="form-actions">
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-primary" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn-success" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:FormView>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnInserting="SqlDataSource2_Inserting" DeleteCommand="DELETE FROM &quot;ANGAJATI&quot; WHERE &quot;ID_ANGAJAT&quot; = :ID_ANGAJAT" InsertCommand="INSERT INTO &quot;ANGAJATI&quot; (&quot;NUME&quot;, &quot;PRENUME&quot;, &quot;FUNCTIE&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR_PROCENT&quot;, &quot;PREMII_BRUTE&quot;, &quot;RETINERI&quot;, &quot;POZA&quot;) VALUES ( :NUME, :PRENUME, :FUNCTIE, :SALAR_BAZA, :SPOR_PROCENT, :PREMII_BRUTE, :RETINERI, :POZA)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ANGAJATI&quot;" UpdateCommand="UPDATE &quot;ANGAJATI&quot; SET &quot;NUME&quot; = :NUME, &quot;PRENUME&quot; = :PRENUME, &quot;FUNCTIE&quot; = :FUNCTIE, &quot;SALAR_BAZA&quot; = :SALAR_BAZA, &quot;SPOR_PROCENT&quot; = :SPOR_PROCENT, &quot;PREMII_BRUTE&quot; = :PREMII_BRUTE, &quot;RETINERI&quot; = :RETINERI, &quot;TOTAL_BRUT&quot; = :TOTAL_BRUT, &quot;CAS&quot; = :CAS, &quot;CASS&quot; = :CASS, &quot;IMPOZIT&quot; = :IMPOZIT, &quot;VIRAT_CARD&quot; = :VIRAT_CARD, &quot;POZA&quot; = :POZA WHERE &quot;ID_ANGAJAT&quot; = :ID_ANGAJAT">
        <DeleteParameters>
            <asp:Parameter Name="ID_ANGAJAT" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="FUNCTIE" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="SPOR_PROCENT" Type="Decimal" />
            <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="RETINERI" Type="Decimal" />
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
            <asp:Parameter Name="POZA" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <style>
        .form-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        
        .page-title {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
            font-size: 28px;
            font-weight: 600;
        }
        
        .styled-formview {
            width: 100%;
        }
        
        .form-section {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        
        .form-section h3 {
            color: #2c3e50;
            margin-bottom: 25px;
            padding-bottom: 10px;
            border-bottom: 2px solid #3498db;
            font-size: 22px;
        }
        
        .form-group {
            margin-bottom: 20px;
            display: flex;
            flex-direction: column;
        }
        
        .form-label {
            font-weight: 600;
            color: #34495e;
            margin-bottom: 5px;
            font-size: 14px;
        }
        
        .form-input {
            padding: 10px 12px;
            border: 2px solid #ddd;
            border-radius: 6px;
            font-size: 14px;
            transition: border-color 0.3s ease;
        }
        
        .form-input:focus {
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.1);
        }
        
        .form-value {
            font-weight: 500;
            color: #2c3e50;
            padding: 8px 0;
        }
        
        .file-upload {
            padding: 8px 0;
        }
        
        .validator-error {
            color: #e74c3c;
            font-size: 12px;
            margin-top: 5px;
            display: block;
        }
        
        .employee-details {
            display: grid;
            gap: 15px;
        }
        
        .detail-row {
            display: flex;
            align-items: center;
            padding: 8px 0;
            border-bottom: 1px solid #ecf0f1;
        }
        
        .detail-label {
            font-weight: 600;
            color: #34495e;
            width: 150px;
            flex-shrink: 0;
        }
        
        .detail-value {
            color: #2c3e50;
            flex-grow: 1;
        }
        
        .employee-photo {
            border-radius: 8px;
            border: 2px solid #bdc3c7;
        }
        
        .form-actions {
            margin-top: 25px;
            padding-top: 20px;
            border-top: 1px solid #ecf0f1;
            text-align: center;
        }
        
        .btn {
            display: inline-block;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            font-size: 14px;
        }
        
        .btn-primary {
            background: #3498db;
            color: white;
        }
        
        .btn-primary:hover {
            background: #2980b9;
            transform: translateY(-1px);
        }
        
        .btn-success {
            background: #27ae60;
            color: white;
        }
        
        .btn-success:hover {
            background: #219a52;
            transform: translateY(-1px);
        }
        
        .btn-danger {
            background: #e74c3c;
            color: white;
        }
        
        .btn-danger:hover {
            background: #c0392b;
            transform: translateY(-1px);
        }
        
        .btn-secondary {
            background: #95a5a6;
            color: white;
        }
        
        .btn-secondary:hover {
            background: #7f8c8d;
            transform: translateY(-1px);
        }
        
        @media (max-width: 768px) {
            .form-container {
                padding: 10px;
            }
            
            .form-section {
                padding: 20px 15px;
            }
            
            .detail-row {
                flex-direction: column;
                align-items: flex-start;
            }
            
            .detail-label {
                width: 100%;
                margin-bottom: 5px;
            }
        }
    </style>
</asp:Content>