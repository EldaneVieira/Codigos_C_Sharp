using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MonitorRealTime
{
    public partial class Form1 : MetroFramework.Forms.MetroForm
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            float cpu = pCPU.NextValue();
            float ram = pRAM.NextValue();
            float hd = pHD.NextValue();
            metroProgressBarCPU.Value = (int)cpu;
            metroProgressBarRAM.Value = (int)ram;
            metroProgressBarHD.Value = (int)hd;
            labelCPU.Text = string.Format("{0:0.00}%", cpu);
            labelRAM.Text = string.Format("{0:0.00}%", ram);
            labelHD.Text = string.Format("{0:0.00}%", hd);
            chart1.Series["CPU"].Points.AddY(cpu);
            chart1.Series["RAM"].Points.AddY(ram);
            chart1.Series["HD"].Points.AddY(hd);
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            timer1.Start();

        }
    }
}
