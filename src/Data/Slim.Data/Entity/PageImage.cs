﻿using Slim.Data.Model;

namespace Slim.Data.Entity
{
    public partial class PageImage : GeneralEntity
    {
        public PageImage()
        {
            PageSectionImages = new HashSet<PageSectionImage>();
        }

        public int Id { get; set; }
        public string PageImageName { get; set; } = null!;
        public string? Description { get; set; }
        public byte[] ActualImage { get; set; } = null!;

        public virtual ICollection<PageSectionImage> PageSectionImages { get; set; }
    }
}
