﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Slim.Core.Model;
using Slim.Data.Context;
using Slim.Data.Entity;
using Slim.Shared.Interfaces.Repo;
using Slim.Shared.Interfaces.Serv;

namespace Slim.Shared.Repositories
{
    public class PageSectionRepo : IBaseStore<PageSection>
    {
        private readonly SlimDbContext _context;
        private readonly ILogger<PageSectionRepo> _logger;
        private readonly ICacheService _cacheService;
        public PageSectionRepo(SlimDbContext context, ILogger<PageSectionRepo> logger, ICacheService cacheService)
        {
            _context = context;
            _logger = logger;
            _cacheService = cacheService;
        }

        public void AddEntity(PageSection entity, CacheKey cacheKey = CacheKey.None, bool hasCache = false)
        {
            throw new NotImplementedException();
        }

        public void UpdateEntity(PageSection entity, CacheKey cacheKey = CacheKey.None, bool hasCache = false)
        {
            try
            {
                _context.Attach(entity).State = EntityState.Modified;
                _context.SaveChanges();
            }
            catch (Exception e)
            {
                _logger.LogError("Unable to update Page Section: {message}", e.Message);
            }
            finally
            {
                if (hasCache)
                {
                    _cacheService.Remove(cacheKey);
                }
            }
        }

        public PageSection GetEntity(int id)
        {
            try
            {
                var pageSection = _context.PageSections.FirstOrDefault(x => x.RazorPageId == id);
                return pageSection ?? new PageSection();
            }
            catch (Exception e)
            {
                _logger.LogError("Unable to get Page Section: {message}", e.Message);
                throw;
            }
        }

        public IEnumerable<PageSection> GetAll()
        {
            return _context.PageSections.ToList();
        }
    }
}