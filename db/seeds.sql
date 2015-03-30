--
-- CUSTOMERS
--
INSERT INTO "customers" VALUES (
   1,
         'ADF', 
         'American Dream Factory, Inc.', 
         'Stan Smith', 
         '43 Cherry Street', NULL, 
         'Langley Falls', 
         'VA', 
         '24870', 
         'United States', 
         'stan.smith@americandreamfactory.com', 
         '587-555-6200', 
         '587-555-6201', 
         'Cash/Check', 
         'Can.t seem to catch up, always behind schedule.'
   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
);
INSERT INTO "customers" VALUES (
   2,
         'DM', 
         'Dunder Mifflin, Inc.', 
         'Michael Scott', 
         '78 Branch Street', NULL, 
         'Scranton', 
         'PA', 
         '38410', 
         'United States', 
         'michael.scott@dundermifflin.com', 
         '360-555-4410', 
         '360-555-4411', 
         'Net 30', 
         'Very weird manager.'
   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
);
INSERT INTO "customers" VALUES (
   3,
         'INI', 
         'Initech, Inc.', 
         'Bill Lumbergh', 
         '250 Industrial Parkway', NULL, 
         'Austin', 
         'TX', 
         '45100', 
         'United States', 
         'bill.lumbergh@initech.com', 
         '328-555-1247', 
         '328-555-1248', 
         'Net 60', NULL
   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
);
INSERT INTO "customers" VALUES (
   4,
         'VI', 
         'Vandelay Industries', 
         'George Costanza', 
         '102 West 34th Street', NULL, 
         'New York', 
         'NY', 
         '61578', 
         'United States', 
         'g.costanza@vandelay.com', 
         '212-555-7450', 
         '212-555-7451', 
         'Cash/Check', 
         'Do not give credit to Mr. Costanza - appears to be fake business.'
   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "customers" VALUES (
   5,
         'WAYNE', 
         'Wayne Enterprises, Inc.', 
         'Bruce Wayne', 
         '1200 Main Street', NULL, 
         'Gotham City', 
         'NY', 
         '15874', 
         'United States', 
         'bruce.wayne@wayneenterprises.com', 
         '701-555-2121', 
         '701-555-2122', 
         'Net 60', 
         'Very good customer, always pays on time.'
   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

--
-- PRODUCTS
--
INSERT INTO "products"
 VALUES (
   1,
         '9V-BATTERY-12PK', 
         '12-pack of 9-volt batteries', 20, 2   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   2,
         '9V-BATTERY-4PK', 
         '4-pack of 9-volt batteries', 4.5, 1.5   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   3,
         'CALCULATOR-BUSINESS', 
         'Business calculator', 10, 1   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   4,
         'CASH-REGISTER', 
         'Cash register with thermal printer', 170, 10   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   5,
         'FLASH-USB-16GB', 
         '16GB USB flash drive', 15, 0.5   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   6,
         'FLASH-USB-32GB', 
         '32GB USB flash drive', 25, 0.5   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   7,
         'FLASH-USB-8GB', 
         '8GB USB flash drive', 10, 0.5   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   8,
         'LABEL-MAKER', 
         'Label maker - plastic labels', 35, 2   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   9,
         'PEN-BP-12PK', 
         '12-pack of ballpoint pens', 12, 0.6   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   10,
         'PHONE-HEADSET', 
         'Hands-free phone headset', 15, 2   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   11,
         'PHONE-SYSTEM-4HS', 
         '4-handset phone system with main base', 120, 4   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   12,
         'PROJECTOR-HD', 
         '1080p HD Projector', 850, 56   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   13,
         'SCANNER-SF', 
         'Sheet-feed paper scanner', 150, 7   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   14,
         'SHREDDER-SF-CC', 
         'Sheet-feed, cross-cut shredder with bin', 8, 10   ,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "products"
 VALUES (
   15,
         'USB-CARD-READER', 
         'USB magnetic strip card reader', 25, 2,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

--
-- ORDERS
--
INSERT INTO "orders" VALUES (
   1,
   1,
         '2012-06-18', NULL, 
         'Cash/Check', 780, 39.5, 819.5, 500, 319, NULL,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "orders" VALUES (
   2,
   2,
         '2012-07-05', 
         '210054', 
         'Net 30', 400, 12, 412, 0, 412, NULL,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "orders" VALUES (
   3,
   5,
         '2012-07-05', 
         '897-A100', 
         'Net 60', 2265, 214, 2479, 0, 2479, NULL,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "orders" VALUES (
   4,
   5,
         '2015-03-28', 
         '12345', 
         'Net 60', 170, 10, 180, 0, 180, 
         'abcd',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
--
-- ORDER_ITEMS
--
INSERT INTO "order_items" VALUES (
   1,
   1,
      1, 
         5, 1, 15, 0.5, 15, 0.5,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "order_items" VALUES (
   2,1,
          2, 
         9, 50, 12, 0.6, 600, 30,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "order_items" VALUES (
   3,1,
        3, 
         13, 1, 150, 7, 150, 7,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "order_items" VALUES (
   4,1,
          4, 
         10, 1, 15, 2, 15, 2,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "order_items" VALUES (
   5,2,
        1, 
         13, 1, 150, 7, 150, 7,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "order_items" VALUES (
   6,2,
        2, 
         6, 10, 25, 0.5, 250, 5,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "order_items" VALUES (
   7,3,
        1, 
         1, 100, 20, 2, 2000, 200,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "order_items" VALUES (
   8,3,
        2, 
         15, 1, 25, 2, 25, 2,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "order_items" VALUES (
   9,3,
 3, 
         9, 20, 12, 0.6, 240, 12,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO "order_items" VALUES (
   10,4,
         1, 
         9, 1, 12, 0.6, 12, 0.6,CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
