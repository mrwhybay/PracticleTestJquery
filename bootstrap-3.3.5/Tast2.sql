select * from Customers 


CREATE FUNCTION GetBirthDayFromDate2(@CustomerBirthDate datetime)
RETURNS int
AS
BEGIN
	DECLARE @ResultVar int
		SELECT  @ResultVar= DATEDIFF(day, CURRENT_TIMESTAMP, DATEADD(year, DATEDIFF(year, @CustomerBirthDate, CURRENT_TIMESTAMP)
       + CASE WHEN DATEADD(year, DATEDIFF(year, @CustomerBirthDate, CURRENT_TIMESTAMP), @CustomerBirthDate) < CURRENT_TIMESTAMP 
       THEN 1 ELSE 0 END, @CustomerBirthDate))
	RETURN @ResultVar
END


select dbo.GetBirthDayFromDate2('11/01/2020') as DaysLeftForBirthDay;


