﻿using Slim.Data.Model;

namespace Slim.Data.Entity
{
    public partial class ResourceAction :GeneralEntity
    {
        public ResourceAction()
        {
            PageSectionResources = new HashSet<PageSectionResource>();
            RazorPageResourceActionMaps = new HashSet<RazorPageResourceActionMap>();
        }

        public int Id { get; set; }
        public string ResourceAction1 { get; set; } = null!;
        public string? Description { get; set; }

        public virtual ICollection<PageSectionResource> PageSectionResources { get; set; }
        public virtual ICollection<RazorPageResourceActionMap> RazorPageResourceActionMaps { get; set; }
    }
}
