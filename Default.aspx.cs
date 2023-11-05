using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebformsTask.Models;

namespace WebformsTask
{
    public partial class _Default : Page
    {
        public string username { get { return Session["usrnametxt"].ToString(); } }
        protected void Page_Load(object sender, EventArgs e)
        {
            Wizard1.PreRender += new EventHandler(Wizard1_PreRender);
        }
        protected void Wizard1_PreRender(object sender, EventArgs e)
        {
            Repeater SideBarList = Wizard1.FindControl("HeaderContainer").FindControl("SideBarList") as Repeater;
            SideBarList.DataSource = Wizard1.WizardSteps;
            SideBarList.DataBind();

        }

        protected string GetClassForWizardStep(object wizardStep)
        {
            WizardStep step = wizardStep as WizardStep;

            if (step == null)
            {
                return "";
            }
            int stepIndex = Wizard1.WizardSteps.IndexOf(step);

            if (stepIndex < Wizard1.ActiveStepIndex)
            {
                return "prevStep";
            }
            else if (stepIndex > Wizard1.ActiveStepIndex)
            {
                return "nextStep";
            }
            else
            {
                return "currentStep";
            }
        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (e.NextStepIndex == 1)
            {
                PersonalInfo personalInfo = new PersonalInfo();
                personalInfo.FullName=TextBox1.Text;
                personalInfo.AddressValue = DropDownList1.SelectedValue;
                personalInfo.Address = TextBox2.Text;
                Session["personalInfo"] = personalInfo;

            }
            if (e.NextStepIndex == 2)
            {
                PersonalInfo personalInfo = (PersonalInfo)Session["personalInfo"];
                lblFullName.Text = personalInfo.FullName;
                lbladdressval.Text = personalInfo.AddressValue;
                lbladdress.Text = personalInfo.Address;
                lblusername.Text=usrnametxt.Text;
                lblPassword.Text=passwordtxt.Text;
            }
            }
    }
}