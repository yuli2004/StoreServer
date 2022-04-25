USE [StoreDB]
GO

INSERT INTO [dbo].[user]
           ([username]
           ,[password]
           ,[email]
           ,[isSeller]
           ,[isBuyer])
     VALUES
           ('פופ ארט שופ'
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
           ('פופ ארט שופ'
           ,'userProfile'
           ,'היי אני רומי, יש לי תואר בתולדות האומנות ממכללת שנקר ואני עובדת כגרפיקאית. אני אוהבת בייחוד פופ ארט ומוכרת כאן הדפסים שאספתי.'
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
           ,'4'
           ,'12'
           ,'3'
           ,'45'
           ,'45'
           ,'1'
           ,'3')
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
           ,'4'
           ,'12'
           ,'3'
           ,'45'
           ,'45'
           ,'1'
           ,'3')
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
           ,'soups'
           ,'קמפבלס - אנדי וורהול'
           ,'פוסטר פופ ארט קמפבלס של אנדי וורהול המציג פחיות מרק צבעוניות '
           ,'2022-03-25'
           ,'70'
           ,'4'
           ,'12'
           ,'3'
           ,'30'
           ,'60'
           ,'1'
           ,'3')
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
           ,'soups'
           ,'אישה מודרנית'
           ,'ציור אקריליק שציירתי המציג את סטריאוטיפ האישה המודרנית דרך העיניים שלי'
           ,'2022-04-13'
           ,'150'
           ,'4'
           ,'12'
           ,'3'
           ,'60'
           ,'20'
           ,'1'
           ,'1')
GO

INSERT INTO [dbo].[user]
           ([username]
           ,[password]
           ,[email]
           ,[isSeller]
           ,[isBuyer])
     VALUES
           ('נוף טיולים'
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
           ('נוף טיולים'
           ,'manProfil'
           ,'היי, אני גדי, אני גמלאי שאוהב לצאת לטיולים ולצייר נופים שאני רואה. מוזמנים להתרשם מהיצירות שלי'
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
           ,'greenField'
           ,'ירוק עד'
           ,'ציור ריאליסטי בצבעי שמן שציירתי כאשר ביקרתי בכפר ציורי קטן בשולי באנגליה. העצים הירוקים, האגם העמוק והאוויר המקפיא.'
           ,'2022-04-06'
           ,'350'
           ,'6'
           ,'3'
           ,'13'
           ,'40'
           ,'60'
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
           ,'greenField'
           ,'שקיעה ים תיכונית'
           ,'ציור ריאליסטי בצבעי שמן שציירתי בקפריסין בחופשה עם אשתי.'
           ,'2022-04-23'
           ,'350'
           ,'6'
           ,'5'
           ,'13'
           ,'40'
           ,'60'
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
           ,'autumm'
           ,'שלכת שמשית'
           ,'ציור ריאליסטי בצבעי שמן שציירתי בעת הליכה ביער באזור ירושלים, עיר מגוריי.'
           ,'2022-03-27'
           ,'350'
           ,'6'
           ,'5'
           ,'13'
           ,'50'
           ,'60'
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
           ('אבסטרקטיזם'
           ,'12345678'
           ,'mayagill@gmail.com'
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
           ('אבסטרקטיזם'
           ,'artStudent'
           ,'היי אני מאיה, אני תלמידת תיכון ואוהבת לצייר בזמני הפנוי. כבר אין לי מקום בחדר לעבודות שלי אז אני מוכרת אותן... אשמח אם תעיפו מבט עליהן'
           ,'מאיה גיל'
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
           ('3'
           ,'abstracrCity'
           ,'עיר'
           ,'ציור אבסטרטי שלי. מוזמנים לפרש אותו איך שאתם רוצים. '
           ,'2022-03-27'
           ,'220'
           ,'5'
           ,'12'
           ,'1'
           ,'50'
           ,'50'
           ,'1'
           ,'8')
GO