/****** Script for Adding Stuufs  ******/
select * from slm.PageSection

-- Insert into RazorPage --
  insert into slm.RazorPage
  (PageName, [Description], [URL])
  values
  ('Home', 'This is the home page', '/'),
  ('Shop', 'This is the shop page', '/shop');

  --- Insert into Page Section --
  insert into slm.PageSection
  (RazorPageId, PageSectionName, [Description], CreatedBy, HasImage, CreatedDate)
  values 
  (1, 'Lip Gloss Feature',  'The Home Page Popular Product for Lip Gloss', 'a1d4e228-c865-4169-8fb6-96a520457590', 1, GETUTCDATE()),
  (1, 'Hair Feature',  'The Home Page Popular Product for Hair', 'a1d4e228-c865-4169-8fb6-96a520457590', 1, GETUTCDATE()),
  (1, 'Hair Day Photo',  'The Home Page Hair day Model picture', 'a1d4e228-c865-4169-8fb6-96a520457590', 1, GETUTCDATE()),
  (1, 'Eyelash Feature',  'The Home Page Popular Product for Eye Lashes', 'a1d4e228-c865-4169-8fb6-96a520457590', 1, GETUTCDATE()),
  (1, 'Model Picture',  'The Home Page Model', 'a1d4e228-c865-4169-8fb6-96a520457590', 1, GETUTCDATE()),
  (1, 'Banner Heading1',  'Hurry up! Limited time Offer.', 'a1d4e228-c865-4169-8fb6-96a520457590',0, GETUTCDATE()),
  (1, 'Banner Heading2',  'New Arrivals, Bundles and Sets', 'a1d4e228-c865-4169-8fb6-96a520457590',0, GETUTCDATE()),
  (1, 'Banner Heading3',  'Magnetic Lashes, Whites, Anytime & much more...', 'a1d4e228-c865-4169-8fb6-96a520457590',0, GETUTCDATE())
