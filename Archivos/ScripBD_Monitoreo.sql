
CREATE TABLE Especialidad
(
	idespecialidad       VARCHAR(10) NOT NULL,
	denominacion         VARCHAR(50) NULL
);



ALTER TABLE Especialidad
ADD PRIMARY KEY (idespecialidad);



CREATE TABLE Evaluacion
(
	idmonitoreo          NUMERIC(4) NOT NULL,
	idformador           VARCHAR(11) NOT NULL,
	idSemestre           CHAR(6) NOT NULL,
	idDocente            VARCHAR(11) NOT NULL,
	idtipo               VARCHAR(10) NOT NULL,
	idindicador          NUMERIC(3) NOT NULL,
	idSubArea            VARCHAR(10) NOT NULL,
	idPlanEstudio        VARCHAR(10) NOT NULL,
	idArea               VARCHAR(10) NOT NULL,
	idItem               NUMERIC(3) NOT NULL,
	Observacion          VARCHAR(100) NULL,
	puntaje              NUMERIC(6,2) NULL
);



ALTER TABLE Evaluacion
ADD PRIMARY KEY (idmonitoreo,idformador,idSemestre,idDocente,idtipo,idindicador,idSubArea,idPlanEstudio,idArea,idItem);



CREATE TABLE Indicador
(
	idItem               NUMERIC(3) NOT NULL,
	idindicador          NUMERIC(3) NOT NULL,
	denominacion         VARCHAR(100) NULL
);



ALTER TABLE Indicador
ADD PRIMARY KEY (idItem,idindicador);



CREATE TABLE IndicadorValoracion
(
	idItem               NUMERIC(3) NOT NULL,
	idindicador          NUMERIC(3) NOT NULL,
	idtipo               VARCHAR(10) NOT NULL,
	Observacion          VARCHAR(100) NULL
);



ALTER TABLE IndicadorValoracion
ADD PRIMARY KEY (idItem,idindicador,idtipo);



CREATE TABLE Item
(
	idItem               NUMERIC(3) NOT NULL,
	Denominacion         VARCHAR(100) NULL
);



ALTER TABLE Item
ADD PRIMARY KEY (idItem);



CREATE TABLE Monitoreo
(
	idmonitoreo          NUMERIC(4) NOT NULL,
	idformador           VARCHAR(11) NOT NULL,
	idSemestre           CHAR(6) NOT NULL,
	idDocente            VARCHAR(11) NOT NULL,
	idSubArea            VARCHAR(10) NOT NULL,
	idPlanEstudio        VARCHAR(10) NOT NULL,
	idArea               VARCHAR(10) NOT NULL,
	observacion          VARCHAR(200) NULL,
	area                 VARCHAR(100) NULL,
	tema                 VARCHAR(100) NULL,
	fecha                DATETIME NULL,
	conclusiones         VARCHAR(200) NULL,
	compromisos          VARCHAR(200) NULL
);



ALTER TABLE Monitoreo
ADD PRIMARY KEY (idmonitoreo,idformador,idSemestre,idDocente,idSubArea,idPlanEstudio,idArea);



CREATE TABLE Supervisor
(
	idformador           VARCHAR(11) NOT NULL,
	Nombres              VARCHAR(30) NULL,
	ApPaterno            VARCHAR(30) NULL,
	ApMaterno            VARCHAR(30) NULL,
	Sexo                 CHAR(1) NULL,
	Tipo                 VARCHAR(50) NULL
);



ALTER TABLE Supervisor
ADD PRIMARY KEY (idformador);



CREATE TABLE tAlumno
(
	idAlumno             VARCHAR(11) NOT NULL,
	Nombres              varchar(30) NULL,
	ApPaterno            VARCHAR(30) NULL,
	ApMaterno            VARCHAR(30) NULL,
	FechaNacimiento      DATETIME NULL,
	DNI                  varchar(11) NULL,
	Direccion            VARCHAR(50) NULL,
	Sexo                 CHAR(1) NULL,
	Fecha                DATETIME NULL,
	idSemestre           CHAR(6) NULL,
	idespecialidad       VARCHAR(10) NULL,
	LenguaMaterna        VARCHAR(30) NULL,
	LenguaSecundaria     VARCHAR(30) NULL,
	Ubigeo               CHAR(18) NULL
);



ALTER TABLE tAlumno
ADD PRIMARY KEY (idAlumno);



CREATE TABLE tAnio
(
	Anio                 numeric(4) NOT NULL,
	Observacion          varchar(50) NOT NULL
);



ALTER TABLE tAnio
ADD PRIMARY KEY (Anio);



CREATE TABLE tArea
(
	idArea               VARCHAR(10) NOT NULL,
	idPlanEstudio        VARCHAR(10) NOT NULL,
	Nombre               VARCHAR(100) NULL
);



ALTER TABLE tArea
ADD PRIMARY KEY (idArea,idPlanEstudio);



CREATE TABLE tAsistencia
(
	idAlumno             VARCHAR(11) NOT NULL,
	NroSesion            NUMERIC(3) NOT NULL,
	idSemestre           CHAR(6) NOT NULL,
	idDocente            VARCHAR(11) NOT NULL,
	idAula               VARCHAR(10) NOT NULL,
	idPabellon           VARCHAR(10) NOT NULL,
	Dia                  VARCHAR(20) NOT NULL,
	HoraInicio           TIME NOT NULL,
	HoraFin              TIME NOT NULL,
	idSubArea            VARCHAR(10) NOT NULL,
	idPlanEstudio        VARCHAR(10) NOT NULL,
	idArea               VARCHAR(10) NOT NULL,
	Descripcion          VARCHAR(100) NULL,
	Fecha                DATETIME NULL
);



ALTER TABLE tAsistencia
ADD PRIMARY KEY (idAlumno,NroSesion,idSemestre,idDocente,idAula,idPabellon,Dia,HoraInicio,HoraFin,idSubArea,idPlanEstudio,idArea);



CREATE TABLE tAula
(
	idAula               VARCHAR(10) NOT NULL,
	idPabellon           VARCHAR(10) NOT NULL,
	Denominacion         VARCHAR(100) NULL,
	Ubicacion            VARCHAR(50) NULL,
	Tipo                 VARCHAR(30) NULL,
	Capacidad            NUMERIC(3) NULL
);



ALTER TABLE tAula
ADD PRIMARY KEY (idAula,idPabellon);



CREATE TABLE tCiclo
(
	idCiclo              numeric(2) NOT NULL,
	Denominacion         varchar(50) NULL
);



ALTER TABLE tCiclo
ADD PRIMARY KEY (idCiclo);



CREATE TABLE tComunicacion
(
	idComunicacion       NUMERIC(4) NOT NULL,
	Denominacion         VARCHAR(100) NULL,
	idTipoComunicacion   NUMERIC(4) NULL
);



ALTER TABLE tComunicacion
ADD PRIMARY KEY (idComunicacion);



CREATE TABLE tDetalleComunicacion
(
	idAlumno             VARCHAR(11) NOT NULL,
	idComunicacion       NUMERIC(4) NOT NULL,
	Denominacion         VARCHAR(100) NULL
);



ALTER TABLE tDetalleComunicacion
ADD PRIMARY KEY (idAlumno,idComunicacion);



CREATE TABLE tDetalleMatricula
(
	idSemestre           CHAR(6) NOT NULL,
	idAlumno             VARCHAR(11) NOT NULL,
	idSubArea            VARCHAR(10) NOT NULL,
	idPlanEstudio        VARCHAR(10) NOT NULL,
	idArea               VARCHAR(10) NOT NULL,
	Observacion          VARCHAR(50) NULL
);



ALTER TABLE tDetalleMatricula
ADD PRIMARY KEY (idSemestre,idAlumno,idSubArea,idPlanEstudio,idArea);



CREATE TABLE tDocente
(
	idDocente            VARCHAR(11) NOT NULL,
	Nombres              VARCHAR(30) NULL,
	ApPaterno            VARCHAR(30) NULL,
	ApMaterno            VARCHAR(30) NULL,
	Sexo                 CHAR(1) NULL
);



ALTER TABLE tDocente
ADD PRIMARY KEY (idDocente);



CREATE TABLE tHorario
(
	idSemestre           CHAR(6) NOT NULL,
	idDocente            VARCHAR(11) NOT NULL,
	idAula               VARCHAR(10) NOT NULL,
	idPabellon           VARCHAR(10) NOT NULL,
	Dia                  VARCHAR(20) NOT NULL,
	HoraInicio           TIME NOT NULL,
	HoraFin              TIME NOT NULL,
	idSubArea            VARCHAR(10) NOT NULL,
	idPlanEstudio        VARCHAR(10) NOT NULL,
	idArea               VARCHAR(10) NOT NULL,
	Observacion          VARCHAR(100) NULL
);



ALTER TABLE tHorario
ADD PRIMARY KEY (idSemestre,idDocente,idAula,idPabellon,Dia,HoraInicio,HoraFin,idSubArea,idPlanEstudio,idArea);



CREATE TABLE TipoValoracion
(
	idtipo               VARCHAR(10) NOT NULL,
	denominacion         VARCHAR(100) NULL
);



ALTER TABLE TipoValoracion
ADD PRIMARY KEY (idtipo);



CREATE TABLE tMatricula
(
	idSemestre           CHAR(6) NOT NULL,
	idAlumno             VARCHAR(11) NOT NULL,
	Fecha                DATETIME NULL
);



ALTER TABLE tMatricula
ADD PRIMARY KEY (idSemestre,idAlumno);



CREATE TABLE tPabellon
(
	idPabellon           VARCHAR(10) NOT NULL,
	Denominacion         VARCHAR(100) NULL,
	Ubicacion            VARCHAR(100) NULL
);



ALTER TABLE tPabellon
ADD PRIMARY KEY (idPabellon);



CREATE TABLE tPlanEstudio
(
	idPlanEstudio        VARCHAR(10) NOT NULL,
	NroCreditos          NUMERIC(3) NULL,
	Descripcion          VARCHAR(50) NULL,
	NroResolucion        VARCHAR(50) NULL,
	Anio                 numeric(4) NULL,
	idespecialidad       VARCHAR(10) NULL
);



ALTER TABLE tPlanEstudio
ADD PRIMARY KEY (idPlanEstudio);



CREATE TABLE tProgramacion
(
	idSemestre           CHAR(6) NOT NULL,
	idDocente            VARCHAR(11) NOT NULL,
	idSubArea            VARCHAR(10) NOT NULL,
	idPlanEstudio        VARCHAR(10) NOT NULL,
	idArea               VARCHAR(10) NOT NULL,
	Observacion          VARCHAR(50) NULL
);



ALTER TABLE tProgramacion
ADD PRIMARY KEY (idSemestre,idDocente,idSubArea,idPlanEstudio,idArea);



CREATE TABLE tSemestre
(
	idSemestre           CHAR(6) NOT NULL,
	FechaInicio          DATETIME NULL,
	FechaFin             DATETIME NULL,
	Anio                 numeric(4) NULL
);



ALTER TABLE tSemestre
ADD PRIMARY KEY (idSemestre);



CREATE TABLE tSesion
(
	NroSesion            NUMERIC(3) NOT NULL,
	idSemestre           CHAR(6) NOT NULL,
	idDocente            VARCHAR(11) NOT NULL,
	idAula               VARCHAR(10) NOT NULL,
	idPabellon           VARCHAR(10) NOT NULL,
	Dia                  VARCHAR(20) NOT NULL,
	HoraInicio           TIME NOT NULL,
	HoraFin              TIME NOT NULL,
	idSubArea            VARCHAR(10) NOT NULL,
	idPlanEstudio        VARCHAR(10) NOT NULL,
	idArea               VARCHAR(10) NOT NULL,
	Tema                 VARCHAR(100) NULL,
	Fecha                DATETIME NULL
);



ALTER TABLE tSesion
ADD PRIMARY KEY (NroSesion,idSemestre,idDocente,idAula,idPabellon,Dia,HoraInicio,HoraFin,idSubArea,idPlanEstudio,idArea);



CREATE TABLE tSubArea
(
	idSubArea            VARCHAR(10) NOT NULL,
	idPlanEstudio        VARCHAR(10) NOT NULL,
	idArea               VARCHAR(10) NOT NULL,
	Nombre               VARCHAR(50) NULL,
	NroCreditos          NUMERIC(3) NULL,
	HorasT               NUMERIC(3) NULL,
	idCiclo              numeric(2) NULL
);



ALTER TABLE tSubArea
ADD PRIMARY KEY (idSubArea,idPlanEstudio,idArea);



CREATE TABLE tTipoComunicacion
(
	idTipoComunicacion   NUMERIC(4) NOT NULL,
	Denominacion         VARCHAR(100) NULL
);



ALTER TABLE tTipoComunicacion
ADD PRIMARY KEY (idTipoComunicacion);



ALTER TABLE Evaluacion
ADD (idmonitoreo, idformador, idSemestre, idDocente, idSubArea, idPlanEstudio, idArea) REFERENCES Monitoreo (idmonitoreo, idformador, idSemestre, idDocente, idSubArea, idPlanEstudio, idArea);



ALTER TABLE Evaluacion
ADD (idItem, idindicador, idtipo) REFERENCES IndicadorValoracion (idItem, idindicador, idtipo);



ALTER TABLE Indicador
ADD (idItem) REFERENCES Item (idItem);



ALTER TABLE IndicadorValoracion
ADD (idtipo) REFERENCES TipoValoracion (idtipo);



ALTER TABLE IndicadorValoracion
ADD (idItem, idindicador) REFERENCES Indicador (idItem, idindicador);



ALTER TABLE Monitoreo
ADD (idformador) REFERENCES Supervisor (idformador);



ALTER TABLE Monitoreo
ADD (idSemestre, idDocente, idSubArea, idPlanEstudio, idArea) REFERENCES tProgramacion (idSemestre, idDocente, idSubArea, idPlanEstudio, idArea);



ALTER TABLE tAlumno
ADD (idSemestre) REFERENCES tSemestre (idSemestre);



ALTER TABLE tAlumno
ADD (idespecialidad) REFERENCES Especialidad (idespecialidad);



ALTER TABLE tArea
ADD (idPlanEstudio) REFERENCES tPlanEstudio (idPlanEstudio);



ALTER TABLE tAsistencia
ADD (idAlumno) REFERENCES tAlumno (idAlumno);



ALTER TABLE tAsistencia
ADD (NroSesion, idSemestre, idDocente, idAula, idPabellon, Dia, HoraInicio, HoraFin, idSubArea, idPlanEstudio, idArea) REFERENCES tSesion (NroSesion, idSemestre, idDocente, idAula, idPabellon, Dia, HoraInicio, HoraFin, idSubArea, idPlanEstudio, idArea);



ALTER TABLE tAula
ADD (idPabellon) REFERENCES tPabellon (idPabellon);



ALTER TABLE tComunicacion
ADD (idTipoComunicacion) REFERENCES tTipoComunicacion (idTipoComunicacion);



ALTER TABLE tDetalleComunicacion
ADD (idAlumno) REFERENCES tAlumno (idAlumno);



ALTER TABLE tDetalleComunicacion
ADD (idComunicacion) REFERENCES tComunicacion (idComunicacion);



ALTER TABLE tDetalleMatricula
ADD (idSemestre, idAlumno) REFERENCES tMatricula (idSemestre, idAlumno);



ALTER TABLE tDetalleMatricula
ADD (idSubArea, idPlanEstudio, idArea) REFERENCES tSubArea (idSubArea, idPlanEstudio, idArea);



ALTER TABLE tHorario
ADD (idSemestre, idDocente, idSubArea, idPlanEstudio, idArea) REFERENCES tProgramacion (idSemestre, idDocente, idSubArea, idPlanEstudio, idArea);



ALTER TABLE tHorario
ADD (idAula, idPabellon) REFERENCES tAula (idAula, idPabellon);



ALTER TABLE tMatricula
ADD (idSemestre) REFERENCES tSemestre (idSemestre);



ALTER TABLE tMatricula
ADD (idAlumno) REFERENCES tAlumno (idAlumno);



ALTER TABLE tPlanEstudio
ADD (Anio) REFERENCES tAnio (Anio);



ALTER TABLE tPlanEstudio
ADD (idespecialidad) REFERENCES Especialidad (idespecialidad);



ALTER TABLE tProgramacion
ADD (idSemestre) REFERENCES tSemestre (idSemestre);



ALTER TABLE tProgramacion
ADD (idDocente) REFERENCES tDocente (idDocente);



ALTER TABLE tProgramacion
ADD (idSubArea, idPlanEstudio, idArea) REFERENCES tSubArea (idSubArea, idPlanEstudio, idArea);



ALTER TABLE tSemestre
ADD (Anio) REFERENCES tAnio (Anio);



ALTER TABLE tSesion
ADD (idSemestre, idDocente, idAula, idPabellon, Dia, HoraInicio, HoraFin, idSubArea, idPlanEstudio, idArea) REFERENCES tHorario (idSemestre, idDocente, idAula, idPabellon, Dia, HoraInicio, HoraFin, idSubArea, idPlanEstudio, idArea);



ALTER TABLE tSubArea
ADD (idArea, idPlanEstudio) REFERENCES tArea (idArea, idPlanEstudio);



ALTER TABLE tSubArea
ADD (idCiclo) REFERENCES tCiclo (idCiclo);


