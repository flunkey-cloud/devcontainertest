# create databases
CREATE DATABASE IF NOT EXISTS `einnahmeplattform`;
CREATE DATABASE IF NOT EXISTS `bgz`;

CREATE USER 'einnahmeplattform'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'einnahmeplattform'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON einnahmeplattform.* To 'einnahmeplattform'@'localhost';
GRANT ALL PRIVILEGES ON einnahmeplattform.* To 'einnahmeplattform'@'%';
flush privileges;

CREATE USER 'bgz'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'bgz'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON bgz.* To 'bgz'@'localhost';
GRANT ALL PRIVILEGES ON bgz.* To 'bgz'@'%';
flush privileges;