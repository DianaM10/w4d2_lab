DROP TABLE IF EXISTS shoe_orders;

CREATE TABLE shoe_orders(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  style VARCHAR(255),
  size VARCHAR(255),
  quantity INT2
  );