CREATE DATABASE `TCC_ORD` /*!40100 DEFAULT CHARACTER SET utf8 */;
CREATE TABLE `ORD_ORDER` (
  `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAYER_USER_ID` int(11) DEFAULT NULL,
  `PAYEE_USER_ID` int(11) DEFAULT NULL,
  `RED_PACKET_PAY_AMOUNT` decimal(10,0) DEFAULT NULL,
  `CAPITAL_PAY_AMOUNT` decimal(10,0) DEFAULT NULL,
  `STATUS` varchar(45) DEFAULT NULL,
  `MERCHANT_ORDER_NO` varchar(45) NOT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  UNIQUE KEY `MERCHANT_ORDER_NO_UNIQUE` (`MERCHANT_ORDER_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1188 DEFAULT CHARSET=utf8;

CREATE TABLE `ORD_ORDER_LINE` (
  `ORDER_LINE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) DEFAULT NULL,
  `QUANTITY` decimal(10,0) DEFAULT NULL,
  `UNIT_PRICE` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ORDER_LINE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `ORD_SHOP` (
  `SHOP_ID` int(11) NOT NULL,
  `OWNER_USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SHOP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `ORD_PRODUCT`(
  `PRODUCT_ID` int(11) NOT NULL,
  `SHOP_ID` int(11) NOT NULL,
  `PRODUCT_NAME` VARCHAR(64) DEFAULT NULL ,
  `PRICE` DECIMAL(10,0) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


INSERT INTO `ORD_SHOP` (`SHOP_ID`,`OWNER_USER_ID`) VALUES (1,1000);

INSERT INTO `ORD_PRODUCT` (`PRODUCT_ID`,`SHOP_ID`,`PRODUCT_NAME`,`PRICE`) VALUES (1,1,'IPhone6S',5288);
INSERT INTO `ORD_PRODUCT` (`PRODUCT_ID`,`SHOP_ID`,`PRODUCT_NAME`,`PRICE`) VALUES (2,1,'MAC Pro',10288);
INSERT INTO `ORD_PRODUCT` (`PRODUCT_ID`,`SHOP_ID`,`PRODUCT_NAME`,`PRICE`) VALUES (3,1,'IWatch',2288);