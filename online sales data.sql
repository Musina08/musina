use onlinesalesdata_db;

CREATE TABLE onlinesales (
    OrderID VARCHAR(20),
    Amount INT,
    Profit INT,
    Quantity INT,
    Category VARCHAR(50),
    SubCategory VARCHAR(50),
    PaymentMode VARCHAR(20)
);

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25681', 1096, 658, 7, 'Electronics', 'Electronic Games', 'COD');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-26055', 5729, 64, 14, 'Furniture', 'Chairs', 'EMI');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25955', 2927, 146, 8, 'Furniture', 'Bookcases', 'EMI');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-26093', 2847, 712, 8, 'Electronics', 'Printers', 'Credit Card');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25602', 2617, 1151, 4, 'Electronics', 'Phones', 'Credit Card');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25881', 2244, 247, 4, 'Clothing', 'Trousers', 'Credit Card');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25696', 275, -275, 4, 'Clothing', 'Saree', 'COD');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25687', 387, -213, 5, 'Clothing', 'Saree', 'UPI');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25643', 50, -44, 2, 'Clothing', 'Hankerchief', 'UPI');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25851', 135, -54, 5, 'Clothing', 'Kurti', 'COD');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25703', 231, -190, 9, 'Clothing', 'Hankerchief', 'COD');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25887', 2125, -234, 6, 'Electronics', 'Printers', 'EMI');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25923', 3873, -891, 6, 'Electronics', 'Phones', 'Credit Card');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25756', 729, -492, 5, 'Furniture', 'Bookcases', 'UPI');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25761', 2188, 1050, 5, 'Furniture', 'Bookcases', 'Credit Card');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25655', 6, -3, 1, 'Clothing', 'Hankerchief', 'UPI');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25786', 1854, 433, 5, 'Furniture', 'Bookcases', 'Credit Card');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-26095', 6, 1, 1, 'Clothing', 'Kurti', 'UPI');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25853', 2093, 721, 5, 'Furniture', 'Chairs', 'Credit Card');

INSERT INTO OnlineSales (OrderID, Amount, Profit, Quantity, Category, SubCategory, PaymentMode)
VALUES ('B-25735', 7, -1, 2, 'Clothing', 'Skirt', 'UPI');

select * from onlinesales where paymentmode='UPI';


select category, AVG(profit) as avgprofit
from onlinesales
group by category;


select orderID, profit from onlinesales 
order by profit DESC
limit 3;


select paymentmode, count(*) as usagecount
from onlinesales
group by paymentmode
order by usagecount DESC;


SELECT o.OrderID, o.Category, o.PaymentMode
FROM OnlineSales o WHERE o.Category = 'Furniture' AND o.PaymentMode = 'Credit Card';
