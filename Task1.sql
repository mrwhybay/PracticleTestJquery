CREATE PROC spGetCustomerbyPage
@PageIndex  int ,
@PageSize int
AS BEGIN 
SELECT CustomerID , CompanyName , ContactName
FROM   Customers
ORDER BY CustomerID
OFFSET (@PageIndex -1) * @PageSize ROWS
FETCH NEXT @PageSize ROW only
END

--exec spGetCustomerbyPage 5,10

--sp_helptext spGetCustomerbyPage