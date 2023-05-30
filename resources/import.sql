insert into users (login, password, first_name, second_name, last_name, email, phone) values ('admin', '$2a$10$6I3YxvPMTfZSVPveOufk4ei6pPWM3NYzsXX7FEKgVfZwiQ7GSVIC6', 'Иван', 'Иванович', 'Иванов', 'ivan@mail.com', '321');
insert into users (login, password, first_name, second_name, last_name, email, phone) values ('user', '$2a$10$zzs1n336kRt47mHBfTUVb.NmKvuih.ZNegDSWmrqnlFGRY3ZKnyTq', 'Петр', 'Петрович', 'Семенов', 'petr@mail.com', '1234');

insert into roles (role_name) values ('ROLE_ADMIN');
insert into roles (role_name) values ('ROLE_USER');

insert into users_roles values(1, 1);
insert into users_roles values(2, 2);