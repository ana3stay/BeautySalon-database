CREATE FUNCTION TableFunction()
RETURNS TABLE
AS
RETURN
(
SELECT Phone, Name+' '+Surname AS FIO
FROM _Clients_
)