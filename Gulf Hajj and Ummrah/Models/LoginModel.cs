using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Gulf_Hajj_and_Ummrah.Models
{
    public class LoginModel
    {
        [Required(ErrorMessage = "UserName is required")]
        public string username { get; set; }
        [Required(ErrorMessage = "Password is required")]
        [DataType(DataType.Password)]
        public string password { get; set; }
    }
}