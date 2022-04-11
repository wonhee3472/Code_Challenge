<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"
Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title></title>
    <style type="text/css">
      .auto-style1 {
        width: 500px;
      }
      .auto-style2 {
        height: 26px;
      }
    </style>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        <table class="auto-style1">
          <tr>
            <td>Wolfram ID</td>
            <td>
              <asp:TextBox ID="txtWolframID" runat="server"></asp:TextBox>
            </td>
          </tr>
          <tr>
            <td class="auto-style2">Password</td>
            <td class="auto-style2">
              <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </td>
          </tr>
          <tr>
            <td>Name</td>
            <td>
              <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
          </tr>
          <tr>
            <td>Address</td>
            <td>
              <asp:TextBox
                ID="txtAddress"
                runat="server"
                Rows="4"
                TextMode="MultiLine"
              ></asp:TextBox>
            </td>
          </tr>
          <tr>
            <td>Mobile</td>
            <td>
              <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            </td>
          </tr>
          <tr>
            <td>Email</td>
            <td>
              <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
          </tr>
          <tr>
            <td>Gender</td>
            <td>
              <asp:RadioButton
                ID="RadioMale"
                Text="Male"
                runat="server"
                GroupName="gender"
              />
              <asp:RadioButton
                ID="RadioFemale"
                Text="Female"
                runat="server"
                GroupName="gender"
              />
            </td>
          </tr>
          <tr>
            <td>Favorite City</td>
            <td>
              <asp:RadioButton
                ID="RadioLA"
                Text="LA"
                runat="server"
                GroupName="city"
              />
              <asp:RadioButton
                ID="RadioNY"
                Text="MY"
                runat="server"
                GroupName="city"
              />
              <asp:RadioButton
                ID="RadioSF"
                Text="SF"
                runat="server"
                GroupName="city"
              />
              <asp:RadioButton
                ID="RadioChampaign"
                Text="Champaign"
                runat="server"
                GroupName="city"
              />
            </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>
              <asp:Button
                ID="btnSubmit"
                runat="server"
                OnClick="btnSubmit_Click"
                Text="Submit"
              />
            </td>
          </tr>
          <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2">
              <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
          </tr>
        </table>
      </div>
    </form>
  </body>
</html>
