USE [StoreDB]
GO

INSERT INTO [dbo].[user]
           ([username]
           ,[password]
           ,[email]
           ,[isSeller]
           ,[isBuyer])
     VALUES
           ('PopArtPrints'
           ,'12345678'
           ,'romigeva@gmail.com'
           ,'1'
           ,'0')
GO
INSERT INTO [dbo].[seller]
           ([username]
           ,[picture]
           ,[info]
           ,[name]
           ,[isActive])
     VALUES
           ('PopArtPrints'
           ,'userProfile'
           ,'היי, אני רומי ואני אוהבת אומנות'
           ,'רומי גבע'
           ,'1')
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
           ('1'
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
           ('1'
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



INSERT INTO [dbo].[user]
           ([username]
           ,[password]
           ,[email]
           ,[isSeller]
           ,[isBuyer])
     VALUES
           ('LandScapes'
           ,'12345678'
           ,'gadisharon@gmail.com'
           ,'1'
           ,'0')
GO
INSERT INTO [dbo].[seller]
           ([username]
           ,[picture]
           ,[info]
           ,[name]
           ,[isActive])
     VALUES
           ('LandScapes'
           ,'manProfil'
           ,'היי, אני גדי, אני אוהב לצאת לטיולים ולצייר נופים שאני רואה. מוזמנים להתרשם מהיצירות שלי'
           ,'גדי שרון'
           ,'1')
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
           ,'sunsets'
           ,'שקיעה ים תיכונית'
           ,'ציור ריאליסטי אשר ציירתי על גדת חוף הים כאשר ביקרתי בקפריסין בחופשה '
           ,'2022-03-27'
           ,'350'
           ,'1'
           ,'5'
           ,'11'
           ,'40'
           ,'60'
           ,'1'
           ,'2')

GO

