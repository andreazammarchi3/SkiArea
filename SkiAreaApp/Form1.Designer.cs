namespace SkiAreaApp
{
    partial class Form1
    {
        /// <summary>
        /// Variabile di progettazione necessaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Pulire le risorse in uso.
        /// </summary>
        /// <param name="disposing">ha valore true se le risorse gestite devono essere eliminate, false in caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Codice generato da Progettazione Windows Form

        /// <summary>
        /// Metodo necessario per il supporto della finestra di progettazione. Non modificare
        /// il contenuto del metodo con l'editor di codice.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.skiAreaDBDataSetBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.skiAreaDBDataSet = new SkiAreaApp.SkiAreaDBDataSet();
            this.webBrowser1 = new System.Windows.Forms.WebBrowser();
            ((System.ComponentModel.ISupportInitialize)(this.skiAreaDBDataSetBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.skiAreaDBDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // skiAreaDBDataSetBindingSource
            // 
            this.skiAreaDBDataSetBindingSource.DataSource = this.skiAreaDBDataSet;
            this.skiAreaDBDataSetBindingSource.Position = 0;
            // 
            // skiAreaDBDataSet
            // 
            this.skiAreaDBDataSet.DataSetName = "SkiAreaDBDataSet";
            this.skiAreaDBDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // webBrowser1
            // 
            this.webBrowser1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.webBrowser1.Location = new System.Drawing.Point(0, 0);
            this.webBrowser1.MinimumSize = new System.Drawing.Size(20, 20);
            this.webBrowser1.Name = "webBrowser1";
            this.webBrowser1.Size = new System.Drawing.Size(800, 450);
            this.webBrowser1.TabIndex = 0;
            this.webBrowser1.Url = new System.Uri("https://winter.intermaps.com/skiarea_campiglio_dolomiti_di_brenta?lang=it&pos=122" +
        "0_900_18.4", System.UriKind.Absolute);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.webBrowser1);
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.skiAreaDBDataSetBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.skiAreaDBDataSet)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.BindingSource skiAreaDBDataSetBindingSource;
        private SkiAreaDBDataSet skiAreaDBDataSet;
        private System.Windows.Forms.WebBrowser webBrowser1;
    }
}

