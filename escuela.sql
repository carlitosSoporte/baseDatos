CREATE DATABASE escuela;
USE escuela;

CREATE TABLE carrera (
idCarrera int identity,
nombreCarrera varchar(60) not null,
duracionCarrera float not null,
constraint clavePrimariaCarrera primary key(idCarrera))

CREATE TABLE alumno (
idAlumno int identity,
nombreAlumno varchar(70) not null,
edadAlumno int not null,
direccionAlumno varchar(50),
numeroContactoAlumno bigint not null,
idCarreraAlumno int not null,
constraint clavePrimariaAlumno primary key(idAlumno),
constraint claveForaneaAlumno foreign key(idCarreraAlumno) references carrera(idCarrera))


create table profesor(
idProfesor int identity,
nombreProfesor varchar(60) not null,
direccionProfesor varchar(50),
numeroContactoProfesor bigint not null,
constraint clavePrimariaProfesor primary key(idProfesor))


create table materia (
idMateria int identity,
nombreMateria varchar(50) not null unique,
creditosMateria float not null,
constraint clavePrimariaMateria primary key(idMateria))


create table materiaCarrera (
idMateriaRelacion int not null,
idCarreraRelacion int not null,
constraint claveForaneaMateriaCarrera foreign key(idMateriaRelacion) references materia(idMateria),
constraint claveForaneaMateriaCarrera2 foreign key(idCarreraRelacion) references carrera(idCarrera))


create table profesorMateria (
idProfesorRelacion int not null,
idMateriaRelacion int not null,
constraint claveForaneaProfesorMateria1 foreign key(idProfesorRelacion) references profesor(idProfesor),
constraint claveForaneaProfesorMateria2 foreign key(idMateriaRelacion) references materia(idMateria))

select * from carrera
insert into carrera values ('sistemas',5)
insert into carrera values ('medicina',7)
insert into carrera values ('veterinaria',4)
insert into carrera values ('ingenieria de software',5)

select * from alumno
insert into alumno values('sacarias piedras del rio',59,'circular 100 no me acuerdo',3434343,4)
insert into alumno values('Ramon rodriguez',5,'mas arriba de la pm',111222333,1)
insert into alumno values('sacarias piedras del monte',58,'circular 101 no me acuerdo',34322223,3)
insert into alumno(nombreAlumno,edadAlumno,numeroContactoAlumno,idCarreraAlumno) values('sacarias piedras del monte 2',20,34323,3)

select * from profesor
insert into profesor values ('Gregorio pernia','calle 14 24 32',56644679)
insert into profesor(nombreProfesor,numeroContactoProfesor) values ('Gregorio Rodirguez',56644679)
insert into profesor values ('samuel pernia','no tiene',111179)

select * from materia
insert into materia values('calculo',4)
insert into materia values('seguridad informatica',2)
insert into materia values('informatica forense',2)

select * from materiaCarrera
insert into materiaCarrera values (1,1)
insert into materiaCarrera values (1,4)
insert into materiaCarrera values (3,1)
insert into materiaCarrera values (3,4)

select * from profesor
select * from materia
select * from profesorMateria
insert into profesorMateria values (1,1)
insert into profesorMateria values (1,3)
insert into profesorMateria values (1,4)