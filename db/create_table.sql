-- http://benlieber.blogspot.com.es/2010/02/sql-create-script-to-rails-migration.html

CREATE TABLE "arb007s"
(
   "Codigo" CHAR(20) DESCRIPTION 'Código de Barras',
   "Articulo" CHAR(20) DESCRIPTION 'Artículo',
--PRIMARY KEY ("Codigo","RecordID") COMPRESS FULL
);


CREATE TABLE "art031s"
(
   "Codigo" CHAR(20) DESCRIPTION 'Código',
   "Nombre" CHAR(60),
   "Referencia" CHAR(20),
   "Familia" CHAR(40),
   "StockAlmCentral" FLOAT DESCRIPTION 'Stock Actual',
   "NombreFtoConv" CHAR(40),
   "CantConversion" FLOAT,
   "PedirPiezas" BOOLEAN DESCRIPTION 'Pedir Piezas',
   "Proveedor" INTEGER,
--PRIMARY KEY ("Codigo","RecordID") COMPRESS FULL
);


CREATE TABLE "pro032s"
(
   "Codigo" INTEGER DESCRIPTION 'Código',
   "Nombre" CHAR(40),
   "Email" CHAR(250),
   "Telefono" CHAR(80) DESCRIPTION 'Teléfono(s)',
   "Movil" CHAR(80) DESCRIPTION 'Móvil(es)',
   "Fax" CHAR(30) DESCRIPTION 'Fax(es)',
   "Nota" CHAR(150),
   "Comentario" MEMO,
--PRIMARY KEY ("Codigo","RecordID") COMPRESS FULL
);


CREATE TABLE "prr008s"
(
   "Referencia" CHAR(20) DESCRIPTION 'Referencia Proveedor',
   "Articulo" CHAR(20) DESCRIPTION 'Artículo',
   "Proveedor" INTEGER,
--PRIMARY KEY ("Referencia","Articulo","Proveedor","RecordID") COMPRESS FULL
);


CREATE TABLE "ruteros"
(
   "Almacen" SMALLINT DESCRIPTION 'Almacén Destino',
   "proveedor" INTEGER,
   "articulo" CHAR(20) DESCRIPTION 'Artículo',
   "fecha" DATE,
   "cantidad" FLOAT,
   "piezas" FLOAT,
--PRIMARY KEY ("Almacen","proveedor","articulo","fecha") COMPRESS FULL
);
