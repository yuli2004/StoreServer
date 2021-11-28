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
    "sellerId" INT NOT NULL,
    "username" NVARCHAR(255) NOT NULL,
    "picture" NVARCHAR(255) NOT NULL,
    "info" NVARCHAR(255) NOT NULL,
    "name" NVARCHAR(255) NOT NULL,
    "isActive" BIT NOT NULL
);
ALTER TABLE
    "seller" ADD CONSTRAINT "seller_sellerid_primary" PRIMARY KEY("sellerId");
CREATE UNIQUE INDEX "seller_username_unique" ON
    "seller"("username");
CREATE TABLE "buyer"(
    "buyerId" INT NOT NULL,
    "username" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "buyer" ADD CONSTRAINT "buyer_buyerid_primary" PRIMARY KEY("buyerId");
CREATE UNIQUE INDEX "buyer_username_unique" ON
    "buyer"("username");
CREATE TABLE "product"(
    "productID" INT NOT NULL,
    "sellerId" INT NOT NULL,
    "picture" NVARCHAR(255) NOT NULL,
    "productName" NVARCHAR(255) NOT NULL,
    "details" NVARCHAR(255) NOT NULL,
    "advertisingDate" DATE NOT NULL,
    "price" FLOAT NOT NULL,
    "materialID" INT NOT NULL,
    "colorID" INT NOT NULL,
    "styleID" INT NOT NULL,
    "size" NVARCHAR(255) NOT NULL,
    "isActive" BIT NOT NULL
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
CREATE TABLE "materials"(
    "materialID" INT NOT NULL,
    "material" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "materials" ADD CONSTRAINT "materials_materialid_primary" PRIMARY KEY("materialID");
CREATE TABLE "order"(
    "orderID" INT NOT NULL,
    "statusID" INT NOT NULL,
    "totalPrice" FLOAT NOT NULL,
    "buyerId" INT NOT NULL,
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
    "ID" INT NOT NULL
);
ALTER TABLE
    "productInOrder" ADD CONSTRAINT "productinorder_id_primary" PRIMARY KEY("ID");
CREATE TABLE "styles"(
    "styleID" INT NOT NULL,
    "style" NVARCHAR(255) NOT NULL
);
ALTER TABLE
    "styles" ADD CONSTRAINT "styles_styleid_primary" PRIMARY KEY("styleID");
ALTER TABLE
    "seller" ADD CONSTRAINT "seller_username_foreign" FOREIGN KEY("username") REFERENCES "user"("username");
ALTER TABLE
    "buyer" ADD CONSTRAINT "buyer_username_foreign" FOREIGN KEY("username") REFERENCES "user"("username");
ALTER TABLE
    "review" ADD CONSTRAINT "review_buyerusername_foreign" FOREIGN KEY("buyerUsername") REFERENCES "buyer"("buyerId");
ALTER TABLE
    "review" ADD CONSTRAINT "review_productid_foreign" FOREIGN KEY("productID") REFERENCES "product"("productID");
ALTER TABLE
    "product" ADD CONSTRAINT "product_sellerid_foreign" FOREIGN KEY("sellerId") REFERENCES "seller"("sellerId");
ALTER TABLE
    "review" ADD CONSTRAINT "review_sellerusername_foreign" FOREIGN KEY("sellerUsername") REFERENCES "seller"("sellerId");
ALTER TABLE
    "product" ADD CONSTRAINT "product_colorid_foreign" FOREIGN KEY("colorID") REFERENCES "colors"("colorID");
ALTER TABLE
    "product" ADD CONSTRAINT "product_materialid_foreign" FOREIGN KEY("materialID") REFERENCES "materials"("materialID");
ALTER TABLE
    "order" ADD CONSTRAINT "order_buyerid_foreign" FOREIGN KEY("buyerId") REFERENCES "buyer"("buyerId");
ALTER TABLE
    "order" ADD CONSTRAINT "order_statusid_foreign" FOREIGN KEY("statusID") REFERENCES "orderStatus"("statusID");
ALTER TABLE
    "productInOrder" ADD CONSTRAINT "productinorder_productid_foreign" FOREIGN KEY("productID") REFERENCES "product"("productID");
ALTER TABLE
    "productInOrder" ADD CONSTRAINT "productinorder_orderid_foreign" FOREIGN KEY("orderID") REFERENCES "order"("orderID");
ALTER TABLE
    "product" ADD CONSTRAINT "product_styleid_foreign" FOREIGN KEY("styleID") REFERENCES "styles"("styleID");