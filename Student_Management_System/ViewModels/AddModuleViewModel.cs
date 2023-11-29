using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Student_Management_System.Models;
using System.Collections.ObjectModel;
using Student_Management_System.DataBase;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using System.Windows;
using System;

namespace Student_Management_System.ViewModels
{
    public partial class AddModuleViewModel:ObservableObject
    {
        [ObservableProperty]
        public Student selectedStudent1;

        [ObservableProperty]
        public Module selectedModule;

        [ObservableProperty]
        public Module selectedModule1;

        [ObservableProperty]
        public ObservableCollection<Module> listAllModule;

        [ObservableProperty]
        public ObservableCollection<Module> listRegModules;

        [ObservableProperty]
        public ObservableCollection<StudentModule> studentModules;

        [ObservableProperty]
        public int mark;

        public Action Close3Action { get; internal set; }

        DataBaseContext moduledb;

        public AddModuleViewModel() 
        {
            
        }

        public AddModuleViewModel(Student student)
        {
            SelectedStudent1 = student;
            moduledb = new DataBaseContext();
            ListAllModule = new ObservableCollection<Module>(moduledb.Modules.ToList());
            StudentModules = new ObservableCollection<StudentModule>(moduledb.StudentModules.ToList());
            LoadRegModules();
        }

        public void LoadRegModules()
        {
            ListRegModules = new ObservableCollection<Module>();
            foreach (var M in studentModules)
            {
                if (M.StudentReg == SelectedStudent1.RegNo)
                {
                    if (M.Module != null)
                    {
                        ListRegModules.Add(M.Module);
                    }
                    else
                        MessageBox.Show("Error...!");
                }
            }
        }

        [RelayCommand]
        public void Register()
        {
            if (SelectedModule != null && SelectedStudent1 != null)
            {
                bool isregisted = moduledb.StudentModules.Any(sm => sm.ModuleCode == SelectedModule.Code && sm.StudentReg == SelectedStudent1.RegNo);
                if (isregisted==false)
                {
                    var studentModule = new StudentModule
                    {
                        ModuleCode = SelectedModule.Code,
                        StudentReg = SelectedStudent1.RegNo,
                        Grade = "None"
                    };
                    moduledb.StudentModules.Add(studentModule);
                    moduledb.SaveChanges();
                    ListRegModules.Add(studentModule.Module);
                    MessageBox.Show("Done..!");
                }
                else
                    MessageBox.Show("Already Registered that Module..!");
            }
            else
                MessageBox.Show("Error...!");
        }

        [RelayCommand]
        public void Remove()
        {
            if (SelectedModule1 != null && SelectedStudent1 != null)
            {
                bool isregisted = moduledb.StudentModules.Any(sm => sm.ModuleCode == SelectedModule1.Code && sm.StudentReg == SelectedStudent1.RegNo);
                if (isregisted)
                {
                    var smToDelete = moduledb.StudentModules.FirstOrDefault(sm => sm.ModuleCode == SelectedModule1.Code && sm.StudentReg == SelectedStudent1.RegNo);
                    moduledb.StudentModules.Remove(smToDelete);
                    moduledb.SaveChanges();
                    
                    ListRegModules.Remove(SelectedModule1);
                    MessageBox.Show("Removed Successfully..!");
                }
            }
        }
        [RelayCommand]
        public void Close3()
        {
            Close3Action();
        }

    }
}
