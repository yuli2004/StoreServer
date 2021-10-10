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
    "shipsFrom" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "product" ADD CONSTRAINT "product_sellerusername_primary" PRIMARY KEY("sellerUsername");
CREATE UNIQUE INDEX "product_productid_unique" ON
    "product"("productID");
CREATE TABLE "review"(
    "productID" INT NOT NULL,
    "buyerUsername" NVARCHAR(255) NOT NULL,
    "text" NVARCHAR(255) NOT NULL,
    "sellerUsername" NVARCHAR(255) NOT NULL,
    "picture" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "review" ADD CONSTRAINT "review_productid_primary" PRIMARY KEY("productID");
ALTER TABLE
    "review" ADD CONSTRAINT "review_buyerusername_primary" PRIMARY KEY("buyerUsername");
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
CREATE TABLE "purchaseHistory"(
    "buyerUsername" NVARCHAR(255) NOT NULL,
    "date" DATE NOT NULL,
    "price" FLOAT NOT NULL,
    "productID" INT NOT NULL,
    "sellerUsername" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "purchaseHistory" ADD CONSTRAINT "purchasehistory_buyerusername_primary" PRIMARY KEY("buyerUsername");
ALTER TABLE
    "purchaseHistory" ADD CONSTRAINT "purchasehistory_productid_primary" PRIMARY KEY("productID");
CREATE TABLE "order"(
    "orderID" INT NOT NULL,
    "statusID" INT NOT NULL,
    "price" FLOAT NOT NULL,
    "productID" INT NOT NULL,
    "sellerUsername" NVARCHAR(255) NOT NULL,
    "buyerUsername" NVARCHAR(255) NOT NULL,
    "date" DATE NOT NULL
);
CREATE UNIQUE INDEX "order_orderid_unique" ON
    "order"("orderID");
ALTER TABLE
    "order" ADD CONSTRAINT "order_productid_primary" PRIMARY KEY("productID");
ALTER TABLE
    "order" ADD CONSTRAINT "order_sellerusername_primary" PRIMARY KEY("sellerUsername");
ALTER TABLE
    "order" ADD CONSTRAINT "order_buyerusername_primary" PRIMARY KEY("buyerUsername");
CREATE TABLE "orderStatus"(
    "statusID" INT NOT NULL,
    "status" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "orderStatus" ADD CONSTRAINT "orderstatus_statusid_primary" PRIMARY KEY("statusID");
ALTER TABLE
    "review" ADD CONSTRAINT "review_sellerusername_foreign" FOREIGN KEY("sellerUsername") REFERENCES "seller"("username");
ALTER TABLE
    "purchaseHistory" ADD CONSTRAINT "purchasehistory_sellerusername_foreign" FOREIGN KEY("sellerUsername") REFERENCES "seller"("username");
ALTER TABLE
    "order" ADD CONSTRAINT "order_date_foreign" FOREIGN KEY("date") REFERENCES "buyer"("username");
ALTER TABLE
    "product" ADD CONSTRAINT "product_productid_foreign" FOREIGN KEY("productID") REFERENCES "review"("productID");
ALTER TABLE
    "product" ADD CONSTRAINT "product_productid_foreign" FOREIGN KEY("productID") REFERENCES "order"("productID");
ALTER TABLE
    "product" ADD CONSTRAINT "product_colorid_foreign" FOREIGN KEY("colorID") REFERENCES "colors"("colorID");
ALTER TABLE
    "product" ADD CONSTRAINT "product_typeid_foreign" FOREIGN KEY("typeID") REFERENCES "productType"("typeID");
ALTER TABLE
    "product" ADD CONSTRAINT "product_productid_foreign" FOREIGN KEY("productID") REFERENCES "purchaseHistory"("productID");
ALTER TABLE
    "order" ADD CONSTRAINT "order_statusid_foreign" FOREIGN KEY("statusID") REFERENCES "orderStatus"("statusID");