/****** Cleansed DIM-Customers Table  ******/
SELECT
	  [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName]
      --,[MiddleName]
      ,[LastName]
	  , c.[FirstName] + ' ' + c.[LastName] AS FullName
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE c.[Gender] WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.DateFirstPurchase AS DateFirstPurchase
      --,[CommuteDistance]
	  ,g.City AS [Cusomer City]
  FROM 
	dbo.DimCustomer AS c
	LEFT JOIN dbo.DimGeography AS g
	ON c.GeographyKey  = g.GeographyKey 
  ORDER BY 
    CustomerKey ASC