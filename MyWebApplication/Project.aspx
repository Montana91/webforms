<%@ Page Title="web controls" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="MyWebApplication.Project" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

     <div class="jumbotron">
    <h3>Project Calculations </h3>
    <p>Calculating Project Costs according to County.</p>
    </div>

    <div class="row">
        <h3>Get a qoute for your Custom Project</h3>
        <h2>Base Price: <asp:Literal ID="ItBasePrice" runat="server" /></h2>
        <p>We Provide services mainly around Peterborough, PE1 has a flat rate
            of £25 and PE4 £10. However prices vary according to Postcode. select your Postcode and 
            get your price..!
        </p>

        <div class="form-group">
        <label>Your Postcode</label>
        <asp:DropDownList ID="ddlcounty"  CssClass="form-control" OnSelectedIndexChanged="ddlcounty_SelectedIndexChanged"  AutoPostBack="true" runat="server">
            <asp:ListItem Value="">Select Your State</asp:ListItem>
            <asp:ListItem Value="PE1">Peterborough</asp:ListItem>
            <asp:ListItem Value="PE9">Stamford</asp:ListItem>
            <asp:ListItem Value="PE10">Bourne</asp:ListItem>
            <asp:ListItem Value="PE12">Spalding</asp:ListItem>
            <asp:ListItem Value="PE14">Wisbech</asp:ListItem>
            <asp:ListItem Value="PE15">March</asp:ListItem>
            <asp:ListItem Value="PE16">Chatteris</asp:ListItem>
            <asp:ListItem Value="PE19">ST.Neots</asp:ListItem>
            <asp:ListItem Value="PE22">Boston</asp:ListItem>
            <asp:ListItem Value="PE23">Spilsby</asp:ListItem>
            <asp:ListItem Value="PE25">Skegnes</asp:ListItem>
            <asp:ListItem Value="PE26">Huntingdon</asp:ListItem>
            <asp:ListItem Value="PE27">ST.Ives</asp:ListItem>         
            <asp:ListItem Value="PE31">Kings Lynn</asp:ListItem>
        </asp:DropDownList>
    </div>

        <div class="jumbotron">

            <h3>Your Custom Price: <asp:Literal ID="ItcustomPrice" runat="server" Text="(Select your Postcode to get your price)" /></h3>
        </div>
    </div>


</asp:Content>


