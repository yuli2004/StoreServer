USE [StoreDB]
GO

INSERT INTO [dbo].[seller]
           ([username]
           ,[picture]
           ,[info]
           ,[name]
           ,[isActive])
     VALUES
           ('פופ ארט פרינטס'
           ,'userProfile'
           ,'היי, אני רומי ואני אוהבת אומנות'
           ,'רומי גבע'
           ,'1')
GO

INSERT INTO [dbo].[user]
           ([username]
           ,[password]
           ,[email]
           ,[isAdmin]
           ,[isSeller]
           ,[isBuyer])
     VALUES
           ('פופ ארט פרינטס'
           ,'רומי123'
           ,'romigeva@gmail.com'
           ,'0'
           ,'1'
           ,'0')
GO

INSERT INTO [dbo].[product]
           ([sellerId]
           ,[picture]
           ,[productName]
           ,[details]
           ,[advertisingDate]
           ,[price]
           ,[sMaterialID]
           ,[colorID]
           ,[styleID]
           ,[height]
           ,[width]
           ,[isActive]
           ,[pMaterialID])
     VALUES
           ('2'
           ,'MarilynMonroePopArt'
           ,'מרילין מונרו פוסטר'
           ,'פוסטר בסגנון פופ ארט של האייקון ההוליוודי מרילין מונרו'
           ,'2022-03-02'
           ,'90'
           ,'2'
           ,'12'
           ,'12'
           ,'45'
           ,'45'
           ,'1'
           ,'8')
GO
INSERT INTO [dbo].[product]
           ([sellerId]
           ,[picture]
           ,[productName]
           ,[details]
           ,[advertisingDate]
           ,[price]
           ,[sMaterialID]
           ,[colorID]
           ,[styleID]
           ,[height]
           ,[width]
           ,[isActive]
           ,[pMaterialID])
     VALUES
           ('2'
           ,'PopPoster'
           ,'פופ! פוסטר'
           ,'פוסטר פופ ארט עם כיתוב פופ!'
           ,'2022-03-06'
           ,'50'
           ,'2'
           ,'12'
           ,'12'
           ,'45'
           ,'45'
           ,'1'
           ,'8')
GO