using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Techfix_windows_app
{
    public partial class Form6 : Form
    {
        public Form6()
        {
            InitializeComponent();
        }

        private void Form6_Load(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form5 frms = new Form5();
            frms.Show();
            this.Hide();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form4 frms = new Form4();
            frms.Show();
            this.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
           
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Form3 frms = new Form3();
            frms.Show();
            this.Hide();
        }

        private void button5_Click(object sender, EventArgs e)
        {
           supplier01 frms = new supplier01();
            frms.Show();
            this.Hide();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            supplier2 frms = new supplier2();
            frms.Show();
            this.Hide();
        }
    }
}
