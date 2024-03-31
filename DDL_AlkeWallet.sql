CREATE SCHEMA `alkewallet` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;

create table usuario(
	user_id int auto_increment primary key,
    nombre varchar(50)  not null,
    correo_electronico varchar(100) not null,
    contrasena varchar(50) not null,
    saldo decimal(10,2)
);

create table moneda(
	currency_id int auto_increment primary key,
    currency_name varchar(100) not null,
    currency_symbol varchar(30) not null
);

create table transaccion(
	transaction_id int auto_increment primary key,
    sender_user_id int  not null,
    receiver_user_id int  not null,
    importe decimal(10,2) not null,
    transaction_date date not null,
    currency_id int not null,
	CONSTRAINT fk_sender_user_id FOREIGN KEY (sender_user_id) REFERENCES usuario(user_id),
    CONSTRAINT fk_receiver_user_id FOREIGN KEY (receiver_user_id) REFERENCES usuario(user_id),
    CONSTRAINT fk_currency_id FOREIGN KEY (currency_id) REFERENCES moneda(currency_id)
);
    