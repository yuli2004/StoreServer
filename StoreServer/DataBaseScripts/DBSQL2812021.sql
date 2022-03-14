USE master
CREATE DATABASE StoreDB
GO
USE StoreDB
GO



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
    "sellerId" INT IDENTITY(1,1) NOT NULL,
    "username" NVARCHAR(255) NOT NULL,
    "picture" NVARCHAR(255) ,
    "info" NVARCHAR(255) NOT NULL,
    "name" NVARCHAR(255) NOT NULL,
    "isActive" BIT NOT NULL
);
ALTER TABLE
    "seller" ADD CONSTRAINT "seller_sellerid_primary" PRIMARY KEY("sellerId");
CREATE UNIQUE INDEX "seller_username_unique" ON
    "seller"("username");
CREATE TABLE "buyer"(
    "buyerId" INT IDENTITY(1,1) NOT NULL,
    "username" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "buyer" ADD CONSTRAINT "buyer_buyerid_primary" PRIMARY KEY("buyerId");
CREATE UNIQUE INDEX "buyer_username_unique" ON
    "buyer"("username");
CREATE TABLE "product"(
    "productID" INT IDENTITY(1,1) NOT NULL,
    "sellerId" INT NOT NULL,
    "picture" NVARCHAR(255) NOT NULL,
    "productName" NVARCHAR(255) NOT NULL,
    "details" NVARCHAR(255) NOT NULL,
    "advertisingDate" DATE NOT NULL,
    "price" FLOAT NOT NULL,
    "sMaterialID" INT NOT NULL,
    "colorID" INT NOT NULL,
    "styleID" INT NOT NULL,
    "height" INT NOT NULL,
    "width" INT NOT NULL,
    "isActive" BIT NOT NULL,
    "pMaterialID" INT NOT NULL
);
ALTER TABLE
    "product" ADD CONSTRAINT "product_productid_primary" PRIMARY KEY("productID");
CREATE TABLE "review"(
    "productID" INT IDENTITY(1,1) NOT NULL,
    "buyerId" INT NOT NULL,
    "text" NVARCHAR(255) NOT NULL,
    "sellerId" INT NOT NULL,
    "picture" NVARCHAR(255) NOT NULL,
    "reviewID" INT NOT NULL
);
ALTER TABLE
    "review" ADD CONSTRAINT "review_reviewid_primary" PRIMARY KEY("reviewID");
CREATE TABLE "colors"(
    "colorID" INT IDENTITY(1,1) NOT NULL,
    "color" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "colors" ADD CONSTRAINT "colors_colorid_primary" PRIMARY KEY("colorID");
CREATE TABLE "surfaceMaterials"(
    "sMaterialID" INT IDENTITY(1,1) NOT NULL,
    "sMaterial" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "surfaceMaterials" ADD CONSTRAINT "surfaceMaterials_sMaterialid_primary" PRIMARY KEY("sMaterialID");

CREATE TABLE "paintMaterials"(
    "pMaterialID" INT IDENTITY(1,1) NOT NULL,
    "pMaterial" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "paintMaterials" ADD CONSTRAINT "paintMaterials_pMaterialid_primary" PRIMARY KEY("pMaterialID");

CREATE TABLE "order"(
    "orderID" INT IDENTITY(1,1) NOT NULL,
    "totalPrice" FLOAT NOT NULL,
    "buyerId" INT NOT NULL,
    "date" DATE NOT NULL
);
ALTER TABLE
    "order" ADD CONSTRAINT "order_orderid_primary" PRIMARY KEY("orderID");

CREATE TABLE "productInOrder"(
    "productID" INT NOT NULL,
    "orderID" INT NOT NULL,
    "ID" INT IDENTITY(1,1) NOT NULL
);
ALTER TABLE
    "productInOrder" ADD CONSTRAINT "productinorder_id_primary" PRIMARY KEY("ID");
CREATE TABLE "styles"(
    "styleID" INT IDENTITY(1,1) NOT NULL,
    "style" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "styles" ADD CONSTRAINT "styles_styleid_primary" PRIMARY KEY("styleID");
ALTER TABLE
    "seller" ADD CONSTRAINT "seller_username_foreign" FOREIGN KEY("username") REFERENCES "user"("username");
ALTER TABLE
    "buyer" ADD CONSTRAINT "buyer_username_foreign" FOREIGN KEY("username") REFERENCES "user"("username");
ALTER TABLE
    "review" ADD CONSTRAINT "review_buyerId_foreign" FOREIGN KEY("buyerId") REFERENCES "buyer"("buyerId");
ALTER TABLE
    "review" ADD CONSTRAINT "review_productid_foreign" FOREIGN KEY("productID") REFERENCES "product"("productID");
ALTER TABLE
    "product" ADD CONSTRAINT "product_sellerid_foreign" FOREIGN KEY("sellerId") REFERENCES "seller"("sellerId");
ALTER TABLE
    "review" ADD CONSTRAINT "review_sellerid_foreign" FOREIGN KEY("sellerId") REFERENCES "seller"("sellerId");
ALTER TABLE
    "product" ADD CONSTRAINT "product_colorid_foreign" FOREIGN KEY("colorID") REFERENCES "colors"("colorID");
ALTER TABLE
    "product" ADD CONSTRAINT "product_sMaterialid_foreign" FOREIGN KEY("sMaterialID") REFERENCES "surfaceMaterials"("sMaterialID");
ALTER TABLE
    "product" ADD CONSTRAINT "product_pMaterialid_foreign" FOREIGN KEY("pMaterialID") REFERENCES "paintMaterials"("pMaterialID");
ALTER TABLE
    "order" ADD CONSTRAINT "order_buyerid_foreign" FOREIGN KEY("buyerId") REFERENCES "buyer"("buyerId");
ALTER TABLE
    "productInOrder" ADD CONSTRAINT "productinorder_productid_foreign" FOREIGN KEY("productID") REFERENCES "product"("productID");
ALTER TABLE
    "productInOrder" ADD CONSTRAINT "productinorder_orderid_foreign" FOREIGN KEY("orderID") REFERENCES "order"("orderID");
ALTER TABLE
    "product" ADD CONSTRAINT "product_styleid_foreign" FOREIGN KEY("styleID") REFERENCES "styles"("styleID");

   