<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TPW_proiect.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f5f5f5;
        }
        
        .container {
            max-width: 1000px;
            margin: 0 auto;
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        
        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
        }
        
        h2 {
            color: #2c3e50;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
        }
        
        h3 {
            color: #34495e;
            margin-top: 20px;
        }
        
        .section {
            margin-bottom: 30px;
            padding: 15px;
            background: #f9f9f9;
            border-radius: 5px;
        }
        
        ul {
            padding-left: 20px;
        }
        
        li {
            margin-bottom: 8px;
        }
        
        .footer {
            text-align: center;
            margin-top: 30px;
            color: #7f8c8d;
            font-size: 14px;
        }
    </style>
     
        <div class="container">
            <h1>Aplicație Salarizare</h1>
            
            <div class="section">
                <h2>Funcționalități principale</h2>
                
                <h3>Navigare</h3>
                <ul>
                    <li><strong>Home</strong> - Pagina principală a aplicației</li>
                    <li><strong>Introducere date</strong> - Gestionarea datelor angajaților</li>
                    <li><strong>Rapoarte</strong> - Generarea rapoartelor salariale</li>
                    <li><strong>Procente</strong> - Managementul parametrilor salariali</li>
                </ul>
            </div>
            
            <div class="section">
                <h2>Gestionare Angajați</h2>
                
                <h3>Introducere date</h3>
                <ul>
                    <li>Date personale (Nume, Prenume)</li>
                    <li>Informații profesionale (Funcție, Salariu de bază)</li>
                    <li>Componente salariale (Spor, Premii, Retineri)</li>
                    <li>Încărcare fotografie</li>
                </ul>
                
                <h3>Actualizare date</h3>
                <ul>
                    <li>Căutare angajat după nume</li>
                    <li>Modificare date angajat</li>
                    <li>Vizualizare detalii angajat</li>
                    <li>Vizualizare listă completă angajați</li>
                </ul>
                
                <h3>Ștergere angajat</h3>
                <ul>
                    <li>Căutare angajat după nume</li>
                    <li>Ștergere definitivă din sistem</li>
                </ul>
            </div>
            
            <div class="section">
                <h2>Rapoarte</h2>
                <ul>
                    <li>Deduceri stat</li>
                    <li>Buget salarial</li>
                </ul>
            </div>
            
            <div class="footer">
                <p>Aplicație Salarizare © 2023 | Dezvoltat de Florea Toodor-Emil</p>
            </div>
        </div>     
</asp:Content>