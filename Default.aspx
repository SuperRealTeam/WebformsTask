<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebformsTask._Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>  
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
       <form id="form1">
        
<div>

<asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="false" OnNextButtonClick="Wizard1_NextButtonClick" FinishCompleteButtonText="Submit">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Personal Information">
                   <table style="width:100%;">  
                    
                    <tr>  
                        <td class="style1">  
                        </td>  
                        <td class="style2">  
                        </td>  
                        <td>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="style1">  
                            <asp:Label ID="Label1" runat="server" Text="FullName:"></asp:Label>  
                        </td>  
                        <td class="style2">  
                            <asp:TextBox ID="TextBox1" runat="server" Height="30px"  Width="200px"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter your Full Name" ForeColor="#CC0000"></asp:RequiredFieldValidator>  
                        </td>  
                        
                        <td>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ValidationExpression="^([a-zA-Z]+)\s+([a-zA-Z ]+)$" ErrorMessage="Full Name must be at least two words" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                        </td>
                    </tr>  
                       <tr>
                    <td class="style1">Address</td>
                    <td class="style2">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                          
                            <asp:ListItem Text="Value1" Value="Value1"></asp:ListItem>
                            <asp:ListItem Text="Value2" Value="Value2"></asp:ListItem>
                            <asp:ListItem Text="Value3" Value="Value3"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                           
                          
                </tr>
                       <tr>
                           <td class="style1">

                           </td>
                            <td class="style2">
                                  <asp:TextBox ID="TextBox2" runat="server" Height="30px"  Width="200px"></asp:TextBox>  
                           </td>
                           <td>
                               <asp:RegularExpressionValidator ID="RegExp1" runat="server" ErrorMessage="At least 10 characters" ControlToValidate="TextBox2" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{10,}$" />
                           </td>
                       </tr>
                       </table>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Account Setup">
                     <table style="width:100%;">  
      
      <tr>  
          <td class="style1">  
          </td>  
          <td class="style2">  
          </td>  
          <td>  
          </td>  
      </tr>  
      <tr>  
          <td class="style1">  
              <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>  
          </td>  
          <td class="style2">  
              <asp:TextBox ID="usrnametxt" runat="server" Height="30px"  Width="200px"></asp:TextBox>  
          </td>  
          <td>  
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usrnametxt" ErrorMessage="Please Enter Username" ForeColor="#CC0000"></asp:RequiredFieldValidator>  
          </td>  
          
          <td>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="usrnametxt" ValidationExpression="^\w*(?=\w*\d)(?=\w*[a-zA-Z])\w{6,}$" ErrorMessage="UserName must be at least 6 alphanumeric" ForeColor="#CC0000"></asp:RegularExpressionValidator>
          </td>
      </tr>  
         <tr>
      <td class="style1">Password</td>
         <td class="style2">
         <asp:TextBox ID="passwordtxt" runat="server" Height="30px"  Width="200px" TextMode="Password"></asp:TextBox>  
  </td>
  <td>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="At least 8 characters long and Contains mix of letters, numbers, and special characters" ControlToValidate="passwordtxt" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,}$"  ForeColor="Red"/>
  </td>
             
            
  </tr>
                <tr>
    <td class="style1">Confirm Password</td>
       <td class="style2">
       <asp:TextBox ID="confrmpasstxt" runat="server" Height="30px"  Width="200px" TextMode="Password"></asp:TextBox>  
</td>
<td>
    <asp:CompareValidator runat="server" ControlToCompare="passwordtxt" ControlToValidate="confrmpasstxt"
                ErrorMessage="Passwords do not match." ForeColor="Red" Display="Dynamic">
            </asp:CompareValidator>

</td>
           
          
</tr>
         </table>
                </asp:WizardStep>
                <asp:WizardStep ID="Confirmation" runat="server" Title="Step 3">
                                 <table style="width:100%;">  

<tr>  
    <td class="style1">  
    </td>  
    <td class="style2">  
    </td>  
    <td>  
    </td>  
</tr>  
<tr>  
    <td class="style1">  
        <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>  
    </td>  
    <td class="style2">  
         <asp:Label ID="lblFullName" runat="server"></asp:Label>  
    </td>
    </tr>
                                     <tr>  
    <td class="style1">  
        <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>  
    </td>  
    <td class="style2">  
         <asp:Label ID="lbladdressval" runat="server"></asp:Label>  
    </td>
    </tr>
                                     <tr>  
    <td class="style1">  
       
    </td>  
    <td class="style2">  
         <asp:Label ID="lbladdress" runat="server"></asp:Label>  
    </td>
    </tr>
                                 <tr>  
<td class="style1">  
    <asp:Label ID="Label5" runat="server" Text="Username:"></asp:Label>  
</td>  
<td class="style2">  
     <asp:Label ID="lblusername" runat="server"></asp:Label>  
</td>
</tr>
                                             <tr>  
<td class="style1">  
    <asp:Label ID="Label6" runat="server" Text="Password:"></asp:Label>  
</td>  
<td class="style2">  
     <asp:Label ID="lblPassword" runat="server"></asp:Label>  
</td>
</tr>                         </table>
                </asp:WizardStep>
                <asp:WizardStep ID="Complete" runat="server" Title="Complete" StepType="Complete">

<br />

Thank you for registraion with us.<br />


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
