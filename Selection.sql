USE BeautySalon;

SELECT _PaymentMethod_.Method, _Clients_.Surname FROM _Orders_
JOIN _PaymentMethod_ ON _PaymentMethod_.id = _Orders_.idPaymentMethod
JOIN _Clients_ ON _Clients_.id = _Orders_.idClients

SELECT * FROM _Clients_
WHERE Name = 'Анна'

SELECT * FROM _ClientStatus_
WHERE Discount BETWEEN 30 AND 60;

SELECT * FROM _Clients_
WHERE id NOT IN (SELECT idClients FROM _Orders_)


SELECT _ClientStatus_.Name, _Clients_.Surname FROM _ClientStatus_, _Clients_
WHERE _ClientStatus_.id = _Clients_.idClientStatus