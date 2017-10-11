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
	[Table("ExperienceLocation")]
	public class ExperienceLocation
	{
		[Key]
		public int LocationPeopleId { get; set; }
		public int LocationId { get; set; }
		public int PeopleId { get; set; }
	}

}
