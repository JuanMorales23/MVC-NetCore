using System.ComponentModel.DataAnnotations;

namespace ProyectoMVC.Models
{
    public class ContactoModel
    {
        //Columnas de la tabla Contacto
        public int IdContacto { get; set; }
        [Required(ErrorMessage = "El campo es obligatorio")]
        public string ? Nombre { get; set; }
        [Required(ErrorMessage = "El campo es obligatorio")]
        public string? Telefono { get; set; }
        [Required(ErrorMessage = "El campo es obligatorio")]
        public string? Correo { get; set; }
    }
}
