--RUN:
SET @ClientId = 1;
-- update import_iha_new
--     set DGHID = '01-009-0107'
--     where DGHID = '01-009-0177'

-- update import_iha_new
--     set DGHID = '01-009-0123'
--     where DGHID = '01-009-0178'





-- not in update and should review and marked as inactive 
-- update tblid
-- set isActive = 0
-- where DGHID in(
--  '01-004-0088', 
--  '01-018-0115', 
--  '01-025-0132', 
--  '01-030-0143')

 -- NOT RUN YET