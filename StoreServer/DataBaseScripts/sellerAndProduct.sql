USE [StoreDB]
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
           ,'���, ��� ���� ���� ����� ������'
           ,'���� ���'
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
           ('PopArtPrints'
           ,'12345678'
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
           ('4'
           ,'MarilynMonroePopArt'
           ,'������ ����� �����'
           ,'����� ������ ��� ��� �� ������� ��������� ������ �����'
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
           ('4'
           ,'PopPoster'
           ,'���! �����'
           ,'����� ��� ��� �� ����� ���!'
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

INSERT INTO [dbo].[seller]
           ([username]
           ,[picture]
           ,[info]
           ,[name]
           ,[isActive])
     VALUES
           ('LandScapes'
           ,'manProfil'
           ,'���, ��� ���, ��� ���� ���� ������� ������ ����� ���� ����. ������� ������ �������� ���'
           ,'��� ����'
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
           ('LandScapes'
           ,'12345678'
           ,'gadisharon@gmail.com'
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
           ('3'
           ,'sunsets'
           ,'����� �� �������'
           ,'���� �������� ��� ������ �� ��� ��� ��� ���� ������ �������� ������ '
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