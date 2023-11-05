<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebformsTask._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
       <form id="form1">

<div>

<asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="false">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                 <div class="content">This is Step 1</div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                    <div class="content">This is Step 2</div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 3">
                   <div class="content">This is Step 3</div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep4" runat="server" Title="Step 4">
                    <div class="content">This is Step 4</div>
                </asp:WizardStep>
            <asp:WizardStep ID="WizardStep5" runat="server" Title="Step 5">
                    <div class="content">This is Step 5</div>
                </asp:WizardStep>
           </WizardSteps>
            <HeaderTemplate>
                <ul id="wizHeader">
                    <asp:Repeater ID="SideBarList" runat="server">
                        <ItemTemplate>
                            <li><a class="<%# GetClassForWizardStep(Container.DataItem) %>" title="<%#Eval("Name")%>">
                                <%# Eval("Name")%></a> </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </HeaderTemplate>
        </asp:Wizard>

</div>

</form>
    </main>

</asp:Content>
