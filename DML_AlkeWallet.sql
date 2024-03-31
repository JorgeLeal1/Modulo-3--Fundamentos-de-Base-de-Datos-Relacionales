
select m.currency_name
from usuario u
join transaccion t on u.user_id = t.sender_user_id 
join moneda m on t.currency_id = m.currency_id
where u.user_id = 1;


Select * from transaccion;

select * from usuario u join transaccion t on u.user_id = t.sender_user_id where u.user_id = 1;

update usuario set correo_electronico = "leal.jorge05@gmail.com" where user_id = 1;

delete from transaccion where transaction_id = 1;
