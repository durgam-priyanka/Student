using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Studentresultmgmt.views.Admin
{
    public partial class Students : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowStudents();
        }
        private void ShowStudents()
        {
            string Query = "Select StUSN as [Roll Number],StName as [Student Name],FName as [Father's Name],StDOB as [Student D.O.B],StAdd as [Address],StPhone as [Phone],StGen as [Gender] from StudentTb1";
            StudentGV.DataSource = Con.GetDatas(Query);
            StudentGV.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Usn = UsnTb.Value;
                string SName = NameTb.Value;
                string FName = FNameTb.Value;
                string DOB = DOBTb.Value;
                string Address = AddressTb.Value;
                string Phone = PhoneTb.Value;
                string Gender = GenderCb.SelectedItem.ToString();
                string Query="insert into StudentTb1 values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')";
                Query = string.Format(Query, Usn, SName, FName, DOB, Address, Phone, Gender);
                Con.SetData(Query);
                ShowStudents();
                ErrMsg.InnerText = "Student Added!!!";
                UsnTb.Value="";
                NameTb.Value="";
                FNameTb.Value="";
                AddressTb.Value="";
                PhoneTb.Value="";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        protected void StudentGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            UsnTb.Value = StudentGV.SelectedRow.Cells[1].Text;
            NameTb.Value = StudentGV.SelectedRow.Cells[2].Text;
            FNameTb.Value = StudentGV.SelectedRow.Cells[3].Text;
            DOBTb.Value = StudentGV.SelectedRow.Cells[4].Text;
            AddressTb.Value = StudentGV.SelectedRow.Cells[5].Text;
            PhoneTb.Value = StudentGV.SelectedRow.Cells[6].Text;
            GenderCb.SelectedItem.Value = StudentGV.SelectedRow.Cells[7].Text;
        }
        public void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Usn = UsnTb.Value;
                string SName = NameTb.Value;
                string FName = FNameTb.Value;
                string DOB = DOBTb.Value;
                string Address = AddressTb.Value;
                string Phone = PhoneTb.Value;
                string Gender = GenderCb.SelectedItem.ToString();
                string Query = "update StudentTb1 set StName='{0}',FName='{1}',StDOB='{2}',StAdd='{3}',StPhone='{4}',StGen='{5}' where StUsn='{6}'";
                Query = string.Format(Query, SName, FName, DOB, Address, Phone, Gender, Usn);
                Con.SetData(Query);
                ShowStudents();
                ErrMsg.InnerText = "Student Updated!!!";
                UsnTb.Value = "";
                NameTb.Value = "";
                FNameTb.Value = "";
                AddressTb.Value = "";
                PhoneTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string Usn = UsnTb.Value;
                string Query = "delete from StudentTb1 where StUsn='{0}'";
                Con.SetData(Query);
                ShowStudents();
                ErrMsg.InnerText = "Student Deleted!!!";
                UsnTb.Value = "";
                NameTb.Value = "";
                FNameTb.Value = "";
                AddressTb.Value = "";
                PhoneTb.Value = "";
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}