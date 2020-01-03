<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyWebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Credit Card Elegibility Checker</h1>
        <p class="lead">Try our eligibility checker to see what type of credit cards you could get from selected providers</p>
        
    </div>

    <div class="row">
        <div class="col-md-4">

            <h2>About You</h2>

            <div>
             <label>Title</label>
                <br />
            <asp:DropDownList ID="ddlTitle" runat="server" >
                <asp:ListItem Text="Select Title" Value="" />
               <asp:ListItem Text="Mr" Value="Mr"/>
               <asp:ListItem Text="Mrs" Value="Mrs"/>
               <asp:ListItem Text="Miss" Value="Miss"/>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rvftitile" ControlToValidate="ddlTitle" ErrorMessage="Please Select Title" runat="server" />
            </div>
            
            <div>
             <label>First Name</label>
                <br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="*" />
            </div>
           
            <div>
            <label>Last Name</label>
            <br />
            <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastname" ErrorMessage="*" />
           
            </div>

            <div>
            <label>Age</label>
            <br />
            <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtage" ErrorMessage="*" />
           
            </div>
            
            <div>
            <label>Email</label>
           <br />

            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtemail" ErrorMessage="Valid Email Required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
           
            </div>
          
            </div> 
                           
        <div class="col-md-4">

            <div>
            <h2>Your Finances </h2>
            <label>Employment Status</label>
            <br />
             <asp:DropDownList ID="ddlemployment" runat="server" >
                 <asp:ListItem Text="Select Employment Status" Value="" />
               <asp:ListItem Text="Student" Value="Student"/>
               <asp:ListItem Text="Employed" Value="Employed"/>
               <asp:ListItem Text="UnEmployed" Value="UnEmployed"/>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rvfemployment" ControlToValidate="ddlemployment" ErrorMessage="Please Select Employment Status" runat="server" />
           
            <br />
            </div>

            <div>
            <label>Occupassion</label>
            <br />
            <asp:TextBox ID="txtoccupation" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtoccupation" ErrorMessage="*" />
            <br />
            </div>
            
            <div>
             <label>Anual Income</label>
            <br />
            <asp:TextBox ID="txtincome" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtincome" ErrorMessage="*" />
            <br />
            </div>         
           
        </div>
        <div class="col-md-4">
            <h2>Where You Live</h2>
            <label>Residential Status</label>
            <br />
             <asp:DropDownList ID="ddlHousestatus" runat="server" >
                 <asp:ListItem Text="Select Residential Status" Value="" />
               <asp:ListItem Text="Home Owner" Value="HomeOwner"/>
               <asp:ListItem Text="Living WithParents" Value="LivingWithParents"/>
               <asp:ListItem Text="Council House" Value="CouncilHouse"/>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rvfHouseStatus" ControlToValidate="ddlHousestatus" ErrorMessage="Please Select House Hold Status" runat="server" />
            <br />

            <label>Address 1</label>
            <br />
            <asp:TextBox ID="txtaddress1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtaddress1" ErrorMessage="*" />
            <br />
            <label>Address 2</label>
            <br />
            <asp:TextBox ID="txtaddress2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtaddress2" ErrorMessage="*" />
            <br />
                 
            <label>Post Code</label>
            <br />

            <asp:TextBox ID="txtpostcode" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtpostcode" ErrorMessage="*" />
            <br />         

        </div>
        </div>
               
    <br />
    <div class="row">
        <div >
            <asp:Button CssClass="btn btn-primary btn-lg" Text="Find Your Credit Card &raquo;" runat="server" OnClick="btnSubmit_Click" />
        </div>
        </div>

    <div class="jumbotron">
        <div class="row">
            <div class="message">
                <asp:Literal ID="ltmessage" runat="server" />
            </div>
        </div>
    </div>

       

       </asp:Content>

