<%@ Page Title="Advanced web controls" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="MyWebApplication.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

     <div class="jumbotron">
    <h3>Events Management </h3>
    <p>Add! Edit! Update! Delete! Events</p>
    </div>

    <div class="form-group">
        <label>Event Name</label>
        <asp:TextBox ID="txteventname" CssClass="form-control" runat="server" />
     </div>

    <div class="form-group">
        <label>Event Date</label>
        <asp:Calendar ID="calendarEvents" runat="server" />
    </div>

    <div class="form-group">
        .<asp:Button  ID="btnSubmit"   CssClass="btn btn-primary btn-large" Text="Add Event"  runat="server" OnClick="btnSubmit_Click" />
    </div>

    <h3>Events Repeater</h3>

    <div class="jumbotron">
        <asp:Repeater ID="rptEvents" runat="server">
            <ItemTemplate>
                <h3>
                    <%# DataBinder.Eval(Container.DataItem, "EventDate") %><small><%# DataBinder.Eval(Container.DataItem, "EventName") %><small>
                </h3>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    
</asp:Content>
