CREATE TABLE Invoice
  invoice_id SERIAL primary key,
  car_id INTEGER,
  service_id INTEGER,
  hours_service VARCHAR(10);

CREATE TABLE Parts
  parts_id SERIAL primary key
  part_number INTEGER,
  description VARCHAR(50),
  price NUMERIC(6,2),
  quantity INTEGER;

CREATE TABLE Service
  service_id SERIAL primary key,
  service_type VARCHAR(50),
  rate_per_hour NUMERIC(6,2),
  parts_id INTEGER,
  FOREIGN KEY (parts_id)
  REFERENCES Parts(parts_id);



CREATE TABLE Mechanic
  mechanic_id SERIAL primary key
  first_name VARCHAR(30),
  last_name VARCHAR(30);

CREATE TABLE Service Order Number
  service_order_number_id SERIAL primary key
  mechanic_id INTEGER,
  service_id INTEGER,
  FOREIGN KEY (service_order_number_id)
  REFERENCES Mechanic(mechanic_id);

CREATE INDEX "Fk" ON  "Service Order Number" ("mechanic_id");

CREATE TABLE Customer
  cutsomer_id SERIAL primary key
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  phone_number VARCHAR(16),
  email VARCHAR(50);

CREATE TABLE Car
  car_id SERIAL primary key
  make VARCHAR(30),
  model VARCHAR(30),
  year INTEGER,
  color VARCHAR(20),
  msrp NUMERIC(6,2);

CREATE TABLE Check_Out
  check_out_id SERIAL,
  customer_id INTEGER,
  sales_person_id INTEGER,
  invoice_id INTEGER,
  car_id INTEGER,
  total NUMERIC,
  constraint FK_Check_Out_invoice_id
  FOREIGN KEY (invoice_id)
  REFERENCES invoice(Invoice_id);

CREATE INDEX "Pk" ON  "Check Out" ("check_out_id");

CREATE TABLE Sales_Person
  sales_person_id SERIAL primary key
  first_name VARCHAR(30),
  last_name VARCHAR(30);



