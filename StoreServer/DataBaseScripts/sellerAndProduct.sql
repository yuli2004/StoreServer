USE [StoreDB]
GO

INSERT INTO [dbo].[user]
           ([username]
           ,[password]
           ,[email]
           ,[isSeller]
           ,[isBuyer])
     VALUES
           ('��� ��� ���'
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
           ('��� ��� ���'
           ,'userProfile'
           ,'��� ��� ����, �� �� ���� ������� ������� ������ ���� ���� ����� ���������. ��� ����� ������ ��� ��� ������ ��� ������ ������.'
           ,'���� ���'
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
           ,'������ ����� �����'
           ,'����� ������ ��� ��� �� ������� ��������� ������ �����'
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
           ,'���! �����'
           ,'����� ��� ��� �� ����� ���!'
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
           ,'������ - ���� ������'
           ,'����� ��� ��� ������ �� ���� ������ ����� ����� ��� �������� '
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
           ,'���� �������'
           ,'���� ������� ������� ����� �� ��������� ����� �������� ��� ������� ���'
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
           ('��� ������'
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
           ('��� ������'
           ,'manProfil'
           ,'���, ��� ���, ��� ����� ����� ���� ������� ������ ����� ���� ����. ������� ������ �������� ���'
           ,'��� ����'
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
           ,'���� ��'
           ,'���� �������� ����� ��� ������� ���� ������ ���� ����� ��� ����� �������. ����� �������, ���� ����� ������� ������.'
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
           ,'����� �� �������'
           ,'���� �������� ����� ��� ������� �������� ������ �� ����.'
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
           ,'���� �����'
           ,'���� �������� ����� ��� ������� ��� ����� ���� ����� �������, ��� ������.'
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
           ('����������'
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
           ('����������'
           ,'artStudent'
           ,'��� ��� ����, ��� ������ ����� ������ ����� ����� �����. ��� ��� �� ���� ���� ������� ��� �� ��� ����� ����... ���� �� ����� ��� �����'
           ,'���� ���'
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
           ,'���'
           ,'���� ������� ���. ������� ���� ���� ��� ���� �����. '
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