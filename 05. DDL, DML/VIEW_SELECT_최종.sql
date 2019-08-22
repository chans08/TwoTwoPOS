
--vwItem
create or replace view vwItem
as
select 
    i.itemseq as itemseq, 
    i.menuseq as menuseq, 
    i.itemname as itemname, 
    i.itemprice as itemprice, 
    ic.categoryseq as categoryseq, 
    ic.categoryname as categoryname
from tblitem i, tblitemcategory ic
    where i.categorySeq(+) = ic.categoryseq;

--==============================================================================================================================

CREATE OR REPLACE VIEW vwEmployee as
(select e.*, (select name from tblbranch where owner = e.name) as cafeName from tblEmployee e);

--==============================================================================================================================

--날씨데이터
CREATE OR REPLACE VIEW vwDailyWeather
AS
SELECT
    a.operateDate AS operateDate, 
    a.dayName AS dayName,
    a.weathername AS weatherName,
    a.temperature AS temperature
        FROM (SELECT to_char(operateDate, 'day') AS dayName, operateDate, weathername, temperature 
            FROM tblOperateDate WHERE operateDate > sysdate-1) a WHERE ROWNUM <= 7;

--==============================================================================================================================

--재고
CREATE OR REPLACE VIEW vwInventory 
AS
SELECT 
    inventorySeq,
    inventoryName,
    inventoryCount,
    (SELECT operatePoint FROM tblOperateDate WHERE operateDateSeq = ?) AS inventoryDate
FROM tblInventory WHERE inventoryName = ?;

--==============================================================================================================================

--매출요약

SELECT 
    SUM(entirepayamount) AS entirePayAmount,
    SUM(CASE WHEN refund = 1 THEN entirepayamount END) AS refundAmount,
    SUM(discountAmount) AS discountAmount,
    SUM(entirepayamount / 20) AS tax,
    COUNT(paymentseq) AS sellCount,
    COUNT(CASE WHEN refund = 1 THEN 1 END) AS refundCount,
    SUM(cash) AS cashSell,
    COUNT(CASE WHEN cash != 0 THEN 1 END) AS cashSellCount,
    SUM(card) AS cardSell,
    COUNT(CASE WHEN card != 0 THEN 1 END) AS cardSellCount,
    0 AS etcSell,
    0 AS etcSellCount
FROM tblPayment
    WHERE operateDate = '2019-07-02';
    
-------------------------------------------------------------------------

SELECT 
    substr(TO_CHAR(sysdate, 'YYYY') - TO_CHAR(mem.birth, 'YYYY'), 1, 1) AS ageLevel,
    (CASE
        WHEN mem.gender = 0 THEN '0'
        WHEN mem.gender = 1 THEN '1'
    END) AS gender,
    SUM(pay.payAmount) AS salesAmount
FROM tblPayment pay
    INNER JOIN tblMember mem
        ON pay.memberSeq = mem.memberseq
            WHERE pay.operateDate = '2019-07-02'
                GROUP BY substr(TO_CHAR(sysdate, 'YYYY') - TO_CHAR(mem.birth, 'YYYY'), 1, 1), mem.gender
                    ORDER BY ageLevel;

--==============================================================================================================================

--판매내역조회

--판매내역 리스트
SELECT 
ROWNUM AS no, 
a.operateDate AS operateDate, 
a.orderNumber AS orderNumber, 
1 AS posNum, 
a.entirePayAmount AS entirePayAmount
    FROM (SELECT paymentSeq, operateDate, orderNumber, entirePayAmount 
        FROM tblPayment WHERE operateDate BETWEEN '2017-02-01' AND '2019-07-10' ) a;

--판매내역 영수증       
SELECT
    pay.orderNumber AS orderNumber,
    pay.operatedate AS operateDate,
    to_char(operateDate, 'day') AS operateDay,
    item.itemname AS itemName,
    item.itemprice AS itemPrice,
    pay.orderamount AS orderAmount
FROM tblpayment pay
    INNER JOIN tblItem item
        ON pay.itemseq = item.itemseq
        WHERE pay.orderNumber = 3 AND pay.operateDate = '2017-02-01';

--==============================================================================================================================

--할일리스트(END)
SELECT * FROM tblTodoList;

--영업일자(END)
SELECT * FROM tblOperateDate;

--회원(END)
SELECT * FROM tblMember;

--카드사(END)
SELECT * FROM tblCardCompany; 

--점포(END)
SELECT * FROM tblBranch;

--상품(END)
SELECT * FROM tblItem;

--결제내역
SELECT * FROM tblPayment;

--직원
SELECT * FROM tblEmployee;

--재고
SELECT * FROM tblInventory;


