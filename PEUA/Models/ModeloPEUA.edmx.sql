
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/11/2018 17:21:24
-- Generated from EDMX file: C:\Users\pablo\source\repos\PEUA\PEUA\Models\ModeloPEUA.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [peuaDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CarreraConvenio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Convenio] DROP CONSTRAINT [FK_CarreraConvenio];
GO
IF OBJECT_ID(N'[dbo].[FK_CarreraFacultad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Carrera] DROP CONSTRAINT [FK_CarreraFacultad];
GO
IF OBJECT_ID(N'[dbo].[FK_Contacto_inherits_Persona]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contacto] DROP CONSTRAINT [FK_Contacto_inherits_Persona];
GO
IF OBJECT_ID(N'[dbo].[FK_ContactoConvenio]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Convenio] DROP CONSTRAINT [FK_ContactoConvenio];
GO
IF OBJECT_ID(N'[dbo].[FK_ConvenioFacultad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Facultad] DROP CONSTRAINT [FK_ConvenioFacultad];
GO
IF OBJECT_ID(N'[dbo].[FK_ConvenioOrganizacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Convenio] DROP CONSTRAINT [FK_ConvenioOrganizacion];
GO
IF OBJECT_ID(N'[dbo].[FK_Empleador_inherits_Persona]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Empleador] DROP CONSTRAINT [FK_Empleador_inherits_Persona];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadorOrganizacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Empleador] DROP CONSTRAINT [FK_EmpleadorOrganizacion];
GO
IF OBJECT_ID(N'[dbo].[FK_ActividadEmpleador_Actividad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActividadEmpleador] DROP CONSTRAINT [FK_ActividadEmpleador_Actividad];
GO
IF OBJECT_ID(N'[dbo].[FK_ActividadEmpleador_Empleador]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActividadEmpleador] DROP CONSTRAINT [FK_ActividadEmpleador_Empleador];
GO
IF OBJECT_ID(N'[dbo].[FK_ActividadOrganizacion_Actividad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActividadOrganizacion] DROP CONSTRAINT [FK_ActividadOrganizacion_Actividad];
GO
IF OBJECT_ID(N'[dbo].[FK_ActividadOrganizacion_Organizacion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActividadOrganizacion] DROP CONSTRAINT [FK_ActividadOrganizacion_Organizacion];
GO
IF OBJECT_ID(N'[dbo].[FK_CarreraActividad_Actividad]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CarreraActividad] DROP CONSTRAINT [FK_CarreraActividad_Actividad];
GO
IF OBJECT_ID(N'[dbo].[FK_CarreraActividad_Carrera]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CarreraActividad] DROP CONSTRAINT [FK_CarreraActividad_Carrera];
GO
IF OBJECT_ID(N'[dbo].[FK_CarreraEmpleador_Carrera]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CarreraEmpleador] DROP CONSTRAINT [FK_CarreraEmpleador_Carrera];
GO
IF OBJECT_ID(N'[dbo].[FK_CarreraEmpleador_Empleador]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CarreraEmpleador] DROP CONSTRAINT [FK_CarreraEmpleador_Empleador];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadorEncuesta_Empleador]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadorEncuesta] DROP CONSTRAINT [FK_EmpleadorEncuesta_Empleador];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadorEncuesta_Encuesta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadorEncuesta] DROP CONSTRAINT [FK_EmpleadorEncuesta_Encuesta];
GO
IF OBJECT_ID(N'[dbo].[FK_EncuestaPregunta_Encuesta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EncuestaPregunta] DROP CONSTRAINT [FK_EncuestaPregunta_Encuesta];
GO
IF OBJECT_ID(N'[dbo].[FK_EncuestaPregunta_Pregunta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EncuestaPregunta] DROP CONSTRAINT [FK_EncuestaPregunta_Pregunta];
GO
IF OBJECT_ID(N'[dbo].[FK_RespuestaEmpleador]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Respuesta] DROP CONSTRAINT [FK_RespuestaEmpleador];
GO
IF OBJECT_ID(N'[dbo].[FK_RespuestaPregunta]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Respuesta] DROP CONSTRAINT [FK_RespuestaPregunta];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Actividad]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Actividad];
GO
IF OBJECT_ID(N'[dbo].[Carrera]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Carrera];
GO
IF OBJECT_ID(N'[dbo].[Contacto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contacto];
GO
IF OBJECT_ID(N'[dbo].[Convenio]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Convenio];
GO
IF OBJECT_ID(N'[dbo].[Empleador]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Empleador];
GO
IF OBJECT_ID(N'[dbo].[Encuesta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Encuesta];
GO
IF OBJECT_ID(N'[dbo].[Facultad]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Facultad];
GO
IF OBJECT_ID(N'[dbo].[Organizacion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Organizacion];
GO
IF OBJECT_ID(N'[dbo].[Persona]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Persona];
GO
IF OBJECT_ID(N'[dbo].[Pregunta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pregunta];
GO
IF OBJECT_ID(N'[dbo].[Respuesta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Respuesta];
GO
IF OBJECT_ID(N'[dbo].[ActividadEmpleador]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActividadEmpleador];
GO
IF OBJECT_ID(N'[dbo].[ActividadOrganizacion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActividadOrganizacion];
GO
IF OBJECT_ID(N'[dbo].[CarreraActividad]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CarreraActividad];
GO
IF OBJECT_ID(N'[dbo].[CarreraEmpleador]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CarreraEmpleador];
GO
IF OBJECT_ID(N'[dbo].[EmpleadorEncuesta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmpleadorEncuesta];
GO
IF OBJECT_ID(N'[dbo].[EncuestaPregunta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EncuestaPregunta];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Actividad'
CREATE TABLE [dbo].[Actividad] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [CantidadInscritos] int  NOT NULL,
    [CantidadParticipante] int  NOT NULL,
    [Fecha] datetime  NOT NULL,
    [Semestre] nvarchar(max)  NOT NULL,
    [Año] datetime  NOT NULL,
    [Tipo] nvarchar(max)  NOT NULL,
    [GrupoEnfoque] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Carrera'
CREATE TABLE [dbo].[Carrera] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Facultad_Id] int  NOT NULL
);
GO

-- Creating table 'Contacto'
CREATE TABLE [dbo].[Contacto] (
    [Id] int  NOT NULL
);
GO

-- Creating table 'Convenio'
CREATE TABLE [dbo].[Convenio] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Fecha] nvarchar(max)  NOT NULL,
    [Documento] nvarchar(max)  NOT NULL,
    [Numero_Decreto] int  NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [Fecha_expiracion] datetime  NOT NULL,
    [Periocidad] nvarchar(max)  NOT NULL,
    [Contacto_Id] int  NOT NULL,
    [Organizacion_Id] int  NULL,
    [Carrera_Id] int  NOT NULL
);
GO

-- Creating table 'Empleador'
CREATE TABLE [dbo].[Empleador] (
    [Cargo] nvarchar(max)  NOT NULL,
    [Area] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL,
    [Organizacion_Id] int  NULL
);
GO

-- Creating table 'Encuesta'
CREATE TABLE [dbo].[Encuesta] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Facultad'
CREATE TABLE [dbo].[Facultad] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Convenio_Id] int  NOT NULL
);
GO

-- Creating table 'Organizacion'
CREATE TABLE [dbo].[Organizacion] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Direccion] nvarchar(max)  NOT NULL,
    [Ciudad] nvarchar(max)  NOT NULL,
    [Tipo] nvarchar(max)  NOT NULL,
    [SectorEconomico] nvarchar(max)  NOT NULL,
    [Tamaño] nvarchar(max)  NOT NULL,
    [RangoTitulados] bigint  NOT NULL
);
GO

-- Creating table 'Persona'
CREATE TABLE [dbo].[Persona] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Fono] int  NOT NULL,
    [Apellido_Materno] nvarchar(max)  NOT NULL,
    [Apellido_Paterno] nvarchar(max)  NOT NULL,
    [Rut] bigint  NULL
);
GO

-- Creating table 'Pregunta'
CREATE TABLE [dbo].[Pregunta] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Respuesta'
CREATE TABLE [dbo].[Respuesta] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Texto] nvarchar(max)  NOT NULL,
    [Tipo] nvarchar(max)  NOT NULL,
    [Empleador_Id] int  NOT NULL,
    [Pregunta_Id] int  NOT NULL
);
GO

-- Creating table 'ActividadEmpleador'
CREATE TABLE [dbo].[ActividadEmpleador] (
    [Actividad_Id] int  NOT NULL,
    [Empleador_Id] int  NOT NULL
);
GO

-- Creating table 'ActividadOrganizacion'
CREATE TABLE [dbo].[ActividadOrganizacion] (
    [Actividad_Id] int  NOT NULL,
    [Organizacion_Id] int  NOT NULL
);
GO

-- Creating table 'CarreraActividad'
CREATE TABLE [dbo].[CarreraActividad] (
    [Actividad_Id] int  NOT NULL,
    [Carrera_Id] int  NOT NULL
);
GO

-- Creating table 'CarreraEmpleador'
CREATE TABLE [dbo].[CarreraEmpleador] (
    [Carrera_Id] int  NOT NULL,
    [Empleador_Id] int  NOT NULL
);
GO

-- Creating table 'EmpleadorEncuesta'
CREATE TABLE [dbo].[EmpleadorEncuesta] (
    [Empleador_Id] int  NOT NULL,
    [Encuesta_Id] int  NOT NULL
);
GO

-- Creating table 'EncuestaPregunta'
CREATE TABLE [dbo].[EncuestaPregunta] (
    [Encuesta_Id] int  NOT NULL,
    [Pregunta_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Actividad'
ALTER TABLE [dbo].[Actividad]
ADD CONSTRAINT [PK_Actividad]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Carrera'
ALTER TABLE [dbo].[Carrera]
ADD CONSTRAINT [PK_Carrera]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Contacto'
ALTER TABLE [dbo].[Contacto]
ADD CONSTRAINT [PK_Contacto]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Convenio'
ALTER TABLE [dbo].[Convenio]
ADD CONSTRAINT [PK_Convenio]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Empleador'
ALTER TABLE [dbo].[Empleador]
ADD CONSTRAINT [PK_Empleador]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Encuesta'
ALTER TABLE [dbo].[Encuesta]
ADD CONSTRAINT [PK_Encuesta]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Facultad'
ALTER TABLE [dbo].[Facultad]
ADD CONSTRAINT [PK_Facultad]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Organizacion'
ALTER TABLE [dbo].[Organizacion]
ADD CONSTRAINT [PK_Organizacion]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Persona'
ALTER TABLE [dbo].[Persona]
ADD CONSTRAINT [PK_Persona]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Pregunta'
ALTER TABLE [dbo].[Pregunta]
ADD CONSTRAINT [PK_Pregunta]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Respuesta'
ALTER TABLE [dbo].[Respuesta]
ADD CONSTRAINT [PK_Respuesta]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Actividad_Id], [Empleador_Id] in table 'ActividadEmpleador'
ALTER TABLE [dbo].[ActividadEmpleador]
ADD CONSTRAINT [PK_ActividadEmpleador]
    PRIMARY KEY CLUSTERED ([Actividad_Id], [Empleador_Id] ASC);
GO

-- Creating primary key on [Actividad_Id], [Organizacion_Id] in table 'ActividadOrganizacion'
ALTER TABLE [dbo].[ActividadOrganizacion]
ADD CONSTRAINT [PK_ActividadOrganizacion]
    PRIMARY KEY CLUSTERED ([Actividad_Id], [Organizacion_Id] ASC);
GO

-- Creating primary key on [Actividad_Id], [Carrera_Id] in table 'CarreraActividad'
ALTER TABLE [dbo].[CarreraActividad]
ADD CONSTRAINT [PK_CarreraActividad]
    PRIMARY KEY CLUSTERED ([Actividad_Id], [Carrera_Id] ASC);
GO

-- Creating primary key on [Carrera_Id], [Empleador_Id] in table 'CarreraEmpleador'
ALTER TABLE [dbo].[CarreraEmpleador]
ADD CONSTRAINT [PK_CarreraEmpleador]
    PRIMARY KEY CLUSTERED ([Carrera_Id], [Empleador_Id] ASC);
GO

-- Creating primary key on [Empleador_Id], [Encuesta_Id] in table 'EmpleadorEncuesta'
ALTER TABLE [dbo].[EmpleadorEncuesta]
ADD CONSTRAINT [PK_EmpleadorEncuesta]
    PRIMARY KEY CLUSTERED ([Empleador_Id], [Encuesta_Id] ASC);
GO

-- Creating primary key on [Encuesta_Id], [Pregunta_Id] in table 'EncuestaPregunta'
ALTER TABLE [dbo].[EncuestaPregunta]
ADD CONSTRAINT [PK_EncuestaPregunta]
    PRIMARY KEY CLUSTERED ([Encuesta_Id], [Pregunta_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Carrera_Id] in table 'Convenio'
ALTER TABLE [dbo].[Convenio]
ADD CONSTRAINT [FK_CarreraConvenio]
    FOREIGN KEY ([Carrera_Id])
    REFERENCES [dbo].[Carrera]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CarreraConvenio'
CREATE INDEX [IX_FK_CarreraConvenio]
ON [dbo].[Convenio]
    ([Carrera_Id]);
GO

-- Creating foreign key on [Facultad_Id] in table 'Carrera'
ALTER TABLE [dbo].[Carrera]
ADD CONSTRAINT [FK_CarreraFacultad]
    FOREIGN KEY ([Facultad_Id])
    REFERENCES [dbo].[Facultad]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CarreraFacultad'
CREATE INDEX [IX_FK_CarreraFacultad]
ON [dbo].[Carrera]
    ([Facultad_Id]);
GO

-- Creating foreign key on [Id] in table 'Contacto'
ALTER TABLE [dbo].[Contacto]
ADD CONSTRAINT [FK_Contacto_inherits_Persona]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Persona]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Contacto_Id] in table 'Convenio'
ALTER TABLE [dbo].[Convenio]
ADD CONSTRAINT [FK_ContactoConvenio]
    FOREIGN KEY ([Contacto_Id])
    REFERENCES [dbo].[Contacto]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContactoConvenio'
CREATE INDEX [IX_FK_ContactoConvenio]
ON [dbo].[Convenio]
    ([Contacto_Id]);
GO

-- Creating foreign key on [Convenio_Id] in table 'Facultad'
ALTER TABLE [dbo].[Facultad]
ADD CONSTRAINT [FK_ConvenioFacultad]
    FOREIGN KEY ([Convenio_Id])
    REFERENCES [dbo].[Convenio]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ConvenioFacultad'
CREATE INDEX [IX_FK_ConvenioFacultad]
ON [dbo].[Facultad]
    ([Convenio_Id]);
GO

-- Creating foreign key on [Organizacion_Id] in table 'Convenio'
ALTER TABLE [dbo].[Convenio]
ADD CONSTRAINT [FK_ConvenioOrganizacion]
    FOREIGN KEY ([Organizacion_Id])
    REFERENCES [dbo].[Organizacion]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ConvenioOrganizacion'
CREATE INDEX [IX_FK_ConvenioOrganizacion]
ON [dbo].[Convenio]
    ([Organizacion_Id]);
GO

-- Creating foreign key on [Id] in table 'Empleador'
ALTER TABLE [dbo].[Empleador]
ADD CONSTRAINT [FK_Empleador_inherits_Persona]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Persona]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Organizacion_Id] in table 'Empleador'
ALTER TABLE [dbo].[Empleador]
ADD CONSTRAINT [FK_EmpleadorOrganizacion]
    FOREIGN KEY ([Organizacion_Id])
    REFERENCES [dbo].[Organizacion]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadorOrganizacion'
CREATE INDEX [IX_FK_EmpleadorOrganizacion]
ON [dbo].[Empleador]
    ([Organizacion_Id]);
GO

-- Creating foreign key on [Actividad_Id] in table 'ActividadEmpleador'
ALTER TABLE [dbo].[ActividadEmpleador]
ADD CONSTRAINT [FK_ActividadEmpleador_Actividad]
    FOREIGN KEY ([Actividad_Id])
    REFERENCES [dbo].[Actividad]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Empleador_Id] in table 'ActividadEmpleador'
ALTER TABLE [dbo].[ActividadEmpleador]
ADD CONSTRAINT [FK_ActividadEmpleador_Empleador]
    FOREIGN KEY ([Empleador_Id])
    REFERENCES [dbo].[Empleador]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActividadEmpleador_Empleador'
CREATE INDEX [IX_FK_ActividadEmpleador_Empleador]
ON [dbo].[ActividadEmpleador]
    ([Empleador_Id]);
GO

-- Creating foreign key on [Actividad_Id] in table 'ActividadOrganizacion'
ALTER TABLE [dbo].[ActividadOrganizacion]
ADD CONSTRAINT [FK_ActividadOrganizacion_Actividad]
    FOREIGN KEY ([Actividad_Id])
    REFERENCES [dbo].[Actividad]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Organizacion_Id] in table 'ActividadOrganizacion'
ALTER TABLE [dbo].[ActividadOrganizacion]
ADD CONSTRAINT [FK_ActividadOrganizacion_Organizacion]
    FOREIGN KEY ([Organizacion_Id])
    REFERENCES [dbo].[Organizacion]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActividadOrganizacion_Organizacion'
CREATE INDEX [IX_FK_ActividadOrganizacion_Organizacion]
ON [dbo].[ActividadOrganizacion]
    ([Organizacion_Id]);
GO

-- Creating foreign key on [Actividad_Id] in table 'CarreraActividad'
ALTER TABLE [dbo].[CarreraActividad]
ADD CONSTRAINT [FK_CarreraActividad_Actividad]
    FOREIGN KEY ([Actividad_Id])
    REFERENCES [dbo].[Actividad]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Carrera_Id] in table 'CarreraActividad'
ALTER TABLE [dbo].[CarreraActividad]
ADD CONSTRAINT [FK_CarreraActividad_Carrera]
    FOREIGN KEY ([Carrera_Id])
    REFERENCES [dbo].[Carrera]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CarreraActividad_Carrera'
CREATE INDEX [IX_FK_CarreraActividad_Carrera]
ON [dbo].[CarreraActividad]
    ([Carrera_Id]);
GO

-- Creating foreign key on [Carrera_Id] in table 'CarreraEmpleador'
ALTER TABLE [dbo].[CarreraEmpleador]
ADD CONSTRAINT [FK_CarreraEmpleador_Carrera]
    FOREIGN KEY ([Carrera_Id])
    REFERENCES [dbo].[Carrera]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Empleador_Id] in table 'CarreraEmpleador'
ALTER TABLE [dbo].[CarreraEmpleador]
ADD CONSTRAINT [FK_CarreraEmpleador_Empleador]
    FOREIGN KEY ([Empleador_Id])
    REFERENCES [dbo].[Empleador]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CarreraEmpleador_Empleador'
CREATE INDEX [IX_FK_CarreraEmpleador_Empleador]
ON [dbo].[CarreraEmpleador]
    ([Empleador_Id]);
GO

-- Creating foreign key on [Empleador_Id] in table 'EmpleadorEncuesta'
ALTER TABLE [dbo].[EmpleadorEncuesta]
ADD CONSTRAINT [FK_EmpleadorEncuesta_Empleador]
    FOREIGN KEY ([Empleador_Id])
    REFERENCES [dbo].[Empleador]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Encuesta_Id] in table 'EmpleadorEncuesta'
ALTER TABLE [dbo].[EmpleadorEncuesta]
ADD CONSTRAINT [FK_EmpleadorEncuesta_Encuesta]
    FOREIGN KEY ([Encuesta_Id])
    REFERENCES [dbo].[Encuesta]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadorEncuesta_Encuesta'
CREATE INDEX [IX_FK_EmpleadorEncuesta_Encuesta]
ON [dbo].[EmpleadorEncuesta]
    ([Encuesta_Id]);
GO

-- Creating foreign key on [Encuesta_Id] in table 'EncuestaPregunta'
ALTER TABLE [dbo].[EncuestaPregunta]
ADD CONSTRAINT [FK_EncuestaPregunta_Encuesta]
    FOREIGN KEY ([Encuesta_Id])
    REFERENCES [dbo].[Encuesta]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Pregunta_Id] in table 'EncuestaPregunta'
ALTER TABLE [dbo].[EncuestaPregunta]
ADD CONSTRAINT [FK_EncuestaPregunta_Pregunta]
    FOREIGN KEY ([Pregunta_Id])
    REFERENCES [dbo].[Pregunta]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EncuestaPregunta_Pregunta'
CREATE INDEX [IX_FK_EncuestaPregunta_Pregunta]
ON [dbo].[EncuestaPregunta]
    ([Pregunta_Id]);
GO

-- Creating foreign key on [Empleador_Id] in table 'Respuesta'
ALTER TABLE [dbo].[Respuesta]
ADD CONSTRAINT [FK_RespuestaEmpleador]
    FOREIGN KEY ([Empleador_Id])
    REFERENCES [dbo].[Empleador]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RespuestaEmpleador'
CREATE INDEX [IX_FK_RespuestaEmpleador]
ON [dbo].[Respuesta]
    ([Empleador_Id]);
GO

-- Creating foreign key on [Pregunta_Id] in table 'Respuesta'
ALTER TABLE [dbo].[Respuesta]
ADD CONSTRAINT [FK_RespuestaPregunta]
    FOREIGN KEY ([Pregunta_Id])
    REFERENCES [dbo].[Pregunta]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RespuestaPregunta'
CREATE INDEX [IX_FK_RespuestaPregunta]
ON [dbo].[Respuesta]
    ([Pregunta_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------