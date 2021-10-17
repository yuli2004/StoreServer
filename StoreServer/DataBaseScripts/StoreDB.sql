use master
go

CREATE DATABASE StoreDB
go

USE StoreDB
go

CREATE TABLE "user"(
    "username" NVARCHAR(255) NOT NULL,
    "password" NVARCHAR(255) NOT NULL,
    "email" NVARCHAR(255) NOT NULL,
    "isAdmin" BIT NOT NULL,
    "isSeller" BIT NOT NULL,
    "isBuyer" BIT NOT NULL
);
ALTER TABLE
    "user" ADD CONSTRAINT "user_username_primary" PRIMARY KEY("username");
CREATE UNIQUE INDEX "user_email_unique" ON
    "user"("email");
CREATE TABLE "seller"(
    "username" NVARCHAR(255) NOT NULL,
    "picture" NVARCHAR(255) NOT NULL,
    "info" NVARCHAR(255) NOT NULL,
    "name" NVARCHAR(255) NOT NULL,
    "isActive" BIT NOT NULL,
    "country" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "seller" ADD CONSTRAINT "seller_username_primary" PRIMARY KEY("username");
CREATE TABLE "buyer"(
    "username" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "buyer" ADD CONSTRAINT "buyer_username_primary" PRIMARY KEY("username");
CREATE TABLE "product"(
    "sellerUsername" NVARCHAR(255) NOT NULL,
    "productName" NVARCHAR(255) NOT NULL,
    "details" NVARCHAR(255) NOT NULL,
    "productID" INT NOT NULL,
    "typeID" INT NOT NULL,
    "price" FLOAT NOT NULL,
    "material" NVARCHAR(255) NOT NULL,
    "colorID" INT NOT NULL,
    "isActive" BIT NOT NULL,
    "advertisingDate" DATE NOT NULL,
    "picture" NVARCHAR(255) NOT NULL,
    "shipsFrom" NVARCHAR(255) NOT NULL,
    "stock" INT NOT NULL
);
ALTER TABLE
    "product" ADD CONSTRAINT "product_productid_primary" PRIMARY KEY("productID");
CREATE TABLE "review"(
    "productID" INT NOT NULL,
    "buyerUsername" NVARCHAR(255) NOT NULL,
    "text" NVARCHAR(255) NOT NULL,
    "sellerUsername" NVARCHAR(255) NOT NULL,
    "picture" NVARCHAR(255) NOT NULL,
    "reviewID" INT NOT NULL
);
ALTER TABLE
    "review" ADD CONSTRAINT "review_reviewid_primary" PRIMARY KEY("reviewID");
CREATE TABLE "colors"(
    "colorID" INT NOT NULL,
    "color" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "colors" ADD CONSTRAINT "colors_colorid_primary" PRIMARY KEY("colorID");
CREATE TABLE "productType"(
    "typeID" INT NOT NULL,
    "type" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "productType" ADD CONSTRAINT "producttype_typeid_primary" PRIMARY KEY("typeID");
CREATE TABLE "order"(
    "orderID" INT NOT NULL,
    "statusID" INT NOT NULL,
    "totalPrice" FLOAT NOT NULL,
    "buyerUsername" NVARCHAR(255) NOT NULL,
    "date" DATE NOT NULL
);
ALTER TABLE
    "order" ADD CONSTRAINT "order_orderid_primary" PRIMARY KEY("orderID");
CREATE TABLE "orderStatus"(
    "statusID" INT NOT NULL,
    "status" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "orderStatus" ADD CONSTRAINT "orderstatus_statusid_primary" PRIMARY KEY("statusID");
CREATE TABLE "productInOrder"(
    "productID" INT NOT NULL,
    "orderID" INT NOT NULL,
    "ID" INT NOT NULL,
    "quantity" INT NOT NULL
);
ALTER TABLE
    "productInOrder" ADD CONSTRAINT "productinorder_id_primary" PRIMARY KEY("ID");
ALTER TABLE
    "review" ADD CONSTRAINT "review_sellerusername_foreign" FOREIGN KEY("sellerUsername") REFERENCES "seller"("username");
ALTER TABLE
    "product" ADD CONSTRAINT "product_sellerusername_foreign" FOREIGN KEY("sellerUsername") REFERENCES "seller"("username");
ALTER TABLE
    "review" ADD CONSTRAINT "review_buyerusername_foreign" FOREIGN KEY("buyerUsername") REFERENCES "buyer"("username");
ALTER TABLE
    "order" ADD CONSTRAINT "order_buyerusername_foreign" FOREIGN KEY("buyerUsername") REFERENCES "buyer"("username");
ALTER TABLE
    "review" ADD CONSTRAINT "review_productid_foreign" FOREIGN KEY("productID") REFERENCES "product"("productID");
ALTER TABLE
    "product" ADD CONSTRAINT "product_colorid_foreign" FOREIGN KEY("colorID") REFERENCES "colors"("colorID");
ALTER TABLE
    "product" ADD CONSTRAINT "product_typeid_foreign" FOREIGN KEY("typeID") REFERENCES "productType"("typeID");
ALTER TABLE
    "order" ADD CONSTRAINT "order_statusid_foreign" FOREIGN KEY("statusID") REFERENCES "orderStatus"("statusID");
ALTER TABLE
    "productInOrder" ADD CONSTRAINT "productinorder_productid_foreign" FOREIGN KEY("productID") REFERENCES "product"("productID");
ALTER TABLE
    "productInOrder" ADD CONSTRAINT "productinorder_orderid_foreign" FOREIGN KEY("orderID") REFERENCES "order"("orderID");


