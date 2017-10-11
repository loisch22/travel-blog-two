using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;

namespace TravelBlogTwo.Models
{
    [Table("Locations")]
    public class Location
  {
        public Location()
        {
            this.Experiences = new HashSet<Experience>();'
        }

        [Key]
        public int LocationId { get; set; }
        public string LocationCity { get; set; }
        public string LocationCountry { get; set; }
        public virtual ICollection<Experience> Experiences { get; set; }
  }

}

