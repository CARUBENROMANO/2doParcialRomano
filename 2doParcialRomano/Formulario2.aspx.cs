using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2doParcialRomano
{
    public partial class Formulario2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGrilla();
        }

       


        protected void Button1_Click(object sender, EventArgs e) // agregar
        {

            string nombreUsuario = Session["nombreVariable"].ToString();
            
            string path = $"{Server.MapPath(".")}/{nombreUsuario}";
            string result = string.Empty;

            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }

            foreach (HttpPostedFile archivo in FileUpload1.PostedFiles)
            {
        
                    if (File.Exists($"{path}/{archivo.FileName}"))
                    {
                        result += $"El archivo {archivo.FileName} ya existe - ";
                    }
                    else
                    {
                        FileUpload1.SaveAs($"{path}/{archivo.FileName}");
                    }
                }
                cargarGrilla();
            }

        public void cargarGrilla()
        {
            string nombreUsuario = Session["nombreVariable"].ToString();
            Label2.Text = nombreUsuario;

            string path = $"{Server.MapPath(".")}/{nombreUsuario}";

            if (Directory.Exists(path))
            {
                string[] files = Directory.GetFiles(path);
                List<Archivo> fileList = new List<Archivo>();
                foreach (string file in files)
                {
                    var fileNew = new Archivo(Path.GetFileName(file), file);
                    fileList.Add(fileNew);
                }
                GridView1.DataSource = fileList;
                GridView1.DataBind();
            }
        }
        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Descargar")
            {
                GridViewRow registro = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
                string filePath = registro.Cells[2].Text;

                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
             }
        }

    }
}
   
