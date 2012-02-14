﻿namespace FLEx_ChorusPlugin.View
{
	internal partial class FwBridgeConflictView
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		#region Component Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this._splitContainer = new System.Windows.Forms.SplitContainer();
			this._pictureBox = new System.Windows.Forms.PictureBox();
			this._warninglabel1 = new System.Windows.Forms.Label();
			this._label1 = new System.Windows.Forms.Label();
			this.splitContainer1 = new System.Windows.Forms.SplitContainer();
			this._splitContainer.Panel1.SuspendLayout();
			this._splitContainer.Panel2.SuspendLayout();
			this._splitContainer.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this._pictureBox)).BeginInit();
			this.splitContainer1.SuspendLayout();
			this.SuspendLayout();
			//
			// _splitContainer
			//
			this._splitContainer.Dock = System.Windows.Forms.DockStyle.Fill;
			this._splitContainer.FixedPanel = System.Windows.Forms.FixedPanel.Panel1;
			this._splitContainer.IsSplitterFixed = true;
			this._splitContainer.Location = new System.Drawing.Point(0, 0);
			this._splitContainer.Name = "_splitContainer";
			this._splitContainer.Orientation = System.Windows.Forms.Orientation.Horizontal;
			//
			// _splitContainer.Panel1
			//
			this._splitContainer.Panel1.Controls.Add(this._pictureBox);
			this._splitContainer.Panel1.Controls.Add(this._warninglabel1);
			this._splitContainer.Panel1.Controls.Add(this._label1);
			//
			// _splitContainer.Panel2
			//
			this._splitContainer.Panel2.Controls.Add(this.splitContainer1);
			this._splitContainer.Size = new System.Drawing.Size(836, 418);
			this._splitContainer.TabIndex = 0;
			//
			// _pictureBox
			//
			this._pictureBox.Location = new System.Drawing.Point(342, 5);
			this._pictureBox.Name = "_pictureBox";
			this._pictureBox.Size = new System.Drawing.Size(32, 30);
			this._pictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this._pictureBox.TabIndex = 23;
			this._pictureBox.TabStop = false;
			//
			// _warninglabel1
			//
			this._warninglabel1.AutoSize = true;
			this._warninglabel1.Location = new System.Drawing.Point(382, 6);
			this._warninglabel1.Name = "_warninglabel1";
			this._warninglabel1.Size = new System.Drawing.Size(148, 13);
			this._warninglabel1.TabIndex = 22;
			this._warninglabel1.Text = "The selected project is in use,";
			//
			// _label1
			//
			this._label1.AutoSize = true;
			this._label1.Location = new System.Drawing.Point(7, 18);
			this._label1.Name = "_label1";
			this._label1.Size = new System.Drawing.Size(40, 13);
			this._label1.TabIndex = 20;
			this._label1.Text = "Project";
			//
			// splitContainer1
			//
			this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.splitContainer1.Location = new System.Drawing.Point(0, 0);
			this.splitContainer1.Name = "splitContainer1";
			this.splitContainer1.Size = new System.Drawing.Size(836, 364);
			this.splitContainer1.SplitterDistance = 417;
			this.splitContainer1.TabIndex = 0;
			//
			// FwBridgeConflictView
			//
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
			this.ClientSize = new System.Drawing.Size(836, 418);
			this.Controls.Add(this._splitContainer);
			this.Name = "FwBridgeConflictView";
			this._splitContainer.Panel1.ResumeLayout(false);
			this._splitContainer.Panel1.PerformLayout();
			this._splitContainer.Panel2.ResumeLayout(false);
			this._splitContainer.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this._pictureBox)).EndInit();
			this.splitContainer1.ResumeLayout(false);
			this.ResumeLayout(false);

		}

		#endregion

		private System.Windows.Forms.SplitContainer _splitContainer;
		private System.Windows.Forms.Label _label1;
		private System.Windows.Forms.Label _warninglabel1;
		private System.Windows.Forms.PictureBox _pictureBox;
		private System.Windows.Forms.SplitContainer splitContainer1;

	}
}