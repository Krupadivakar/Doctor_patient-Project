create database doctor_patient;

create table doctor_patient.doctor(
doctor_name varchar(50) not null,
specialization varchar(100) not null,
doctor_id int not null auto_increment,
email varchar(50),
pwd char(10),
primary key(doctor_id));

alter table doctor_patient.doctor auto_increment=1000;



create table doctor_patient.treats(
doctor_id int not null ,
patient_id int not null ,
primary key(doctor_id,patient_id),
foreign key(doctor_id) references doctor_patient.doctor(doctor_id),
foreign key(patient_id) references doctor_patient.patients(patient_id));

create table doctor_patient.patients(
patient_id int not null auto_increment,
patient_address varchar(200) not null,
phone_no char(10),
medicalshop_id int not null,
patient_name varchar(50) not null,
email varchar(150),
pwd char(10),
primary key(patient_id),
foreign key(medicalshop_id) references medicalshop(medicalshop_id));

alter table doctor_patient.patients auto_increment=2000;

create table doctor_patient.prescription(
doctor_id int not null ,
patient_id int not null ,
medicine_name varchar(100) not null,
primary key(doctor_id,patient_id),
foreign key(doctor_id) references doctor_patient.doctor(doctor_id),
foreign key(patient_id) references doctor_patient.patients(patient_id)
);

create table doctor_patient.office(
office_id int not null auto_increment,
doctor_id int not null ,
patient_id int not null ,
medicalshop_id int not null,
primary key(office_id),
foreign key(doctor_id) references doctor_patient.doctor(doctor_id),
foreign key(patient_id) references doctor_patient.patients(patient_id),
foreign key(medicalshop_id) references doctor_patient.medicalshop(medicalshop_id)
);
alter table doctor_patient.office auto_increment=10000;

create table doctor_patient.medicalshop(
medicalshop_id int not null auto_increment,
medicalshop_name varchar(100) not null,
medicalshop_address varchar(300) not null,
phone_no char(10),
primary key(medicalshop_id));
alter table doctor_patient.medicalshop auto_increment=5000;

create table doctor_patient.medicalshop_includes(
medicalshop_id int not null,
medicine_id int not null,
primary key(medicalshop_id,medicine_id),
foreign key(medicine_id) references medicine(medicine_id),
foreign key(medicalshop_id) references medicalshop(medicalshop_id)
);

create table doctor_patient.medicine(
cost decimal(7,2),
medicine_id int not null auto_increment,
medical_name varchar(200) not null,
quantity int,
primary key(medicine_id));
alter table doctor_patient.medicine auto_increment=20000;



