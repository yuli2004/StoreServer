USE [StoreDB]
GO

INSERT INTO [dbo].[seller]
           ([username]
           ,[picture]
           ,[info]
           ,[name]
           ,[isActive])
     VALUES
           ('��� ��� ������'
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
           ('��� ��� ������'
           ,'����123'
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
           ('2'
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