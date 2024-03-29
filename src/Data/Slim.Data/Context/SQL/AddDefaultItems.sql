/****** Script for Adding Stuufs  ******/
select * from slm.PageSection

-- Insert into RazorPage --
  insert into slm.RazorPage
  (PageName, [Description], [URL])
  values
  ('Home', 'This is the home page', '/Index'),
  ('Hair', 'This is the hair page', '/Hair'),
('Lashes', 'The Eye Lashes Page', '/Lashes', 1),
('Lip Gloss', 'The Lip Gloss Page', '/Lip', 1),
('Appointments', 'Book an appoinment page', '/Appointment', 1)
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
  (1, 'Banner Heading3',  'Magnetic Lashes, Whites, Anytime & much more...', 'a1d4e228-c865-4169-8fb6-96a520457590',0, GETUTCDATE());

  declare @hairId int = (select Id from slm.RazorPage p where p.PageName = 'Hair')
  insert into slm.PageSection
  (
       [RazorPageId]
      ,[PageSectionName]
      ,[Description]
      ,[Enabled]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[ModifiedBy]
      ,[ModifiedDate]
      ,[HasImage]
	  )
values
(@hairId, 'Section 1', 'Hurry up! Limited time slot.', 1, 'a1d4e228-c865-4169-8fb6-96a520457590', getutcdate(), null, null, 0),
(@hairId, 'Section 2', '$LIM Salon', 1, 'a1d4e228-c865-4169-8fb6-96a520457590', getutcdate(), null, null, 0),
(@hairId, 'Section 3', 'Across London...', 1, 'a1d4e228-c865-4169-8fb6-96a520457590', getutcdate(), null, null, 0),
(@hairId, 'Section 4', 'Since 1993, $LIM has committed to the craft of making hair.', 1, 'a1d4e228-c865-4169-8fb6-96a520457590', getutcdate(), null, null, 0),
(@hairId, 'Exceptional Service', 'Since 1993, $LIM has committed to the craft of making hair.', 1, 'a1d4e228-c865-4169-8fb6-96a520457590', getutcdate(), null, null, 0);


  declare @lashesId int = (select Id from slm.RazorPage p where p.PageName = 'Lashes')
  insert into slm.PageSection
  (
       [RazorPageId]
      ,[PageSectionName]
      ,[Description]
      ,[Enabled]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[ModifiedBy]
      ,[ModifiedDate]
      ,[HasImage]
	  )
values
(@lashesId, 'Section 1', 'Fake it till you make it', 1, 'a1d4e228-c865-4169-8fb6-96a520457590', getutcdate(), null, null, 0),
(@lashesId, 'Section 2', 'Let the holder find the beauty in your eyes.', 1, 'a1d4e228-c865-4169-8fb6-96a520457590', getutcdate(), null, null, 0)

  declare @lipGLossId int = (select Id from slm.RazorPage p where p.PageName = 'Lip Gloss')
  insert into slm.PageSection
  (
       [RazorPageId]
      ,[PageSectionName]
      ,[Description]
      ,[Enabled]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[ModifiedBy]
      ,[ModifiedDate]
      ,[HasImage]
	  )
values
(@lipGLossId, 'Section 1', 'Kiss me with all your lips', 1, 'a1d4e228-c865-4169-8fb6-96a520457590', getutcdate(), null, null, 0),
(@lipGLossId, 'Section 2', 'For you love is sweeter with $Lim', 1, 'a1d4e228-c865-4169-8fb6-96a520457590', getutcdate(), null, null, 0)