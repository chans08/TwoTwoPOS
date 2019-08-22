
--TABLE DROP

DROP TABLE tblRefund;
DROP TABLE tblPayment;
DROP TABLE tblAnnouncement;
DROP TABLE tblScheduler;
DROP TABLE tblPromotion;
DROP TABLE tblSurvey;
DROP TABLE tblMember;
DROP TABLE tblCardCompany;
DROP TABLE tblItem;
DROP TABLE tblItemCategory;
DROP TABLE tblOperatingMoney;
DROP TABLE tblManualImage;
DROP TABLE tblWebsiteManual;
DROP TABLE tblAdminLock;
DROP TABLE tblDiligence;
DROP TABLE tblDutySchedule;
DROP TABLE tblEducation;
DROP TABLE tblPay;
DROP TABLE tblPayPolicy;
DROP TABLE tblEmployee;
DROP TABLE tblKeyRegistration;
DROP TABLE tblBookmark;
DROP TABLE tblDiscountKey;
DROP TABLE tblInventory;
DROP TABLE tblEndCalculate;
DROP TABLE tblEmployeeBoard;
DROP TABLE tblBranch;
DROP TABLE tblTodoList;
DROP TABLE tblOrderRequest;
DROP TABLE tblOrderPlace;
DROP TABLE tblOperateDate;
DROP TABLE tblTest;

--==============================================================================================================================

--SEQUENCE DROP

DROP SEQUENCE inventorySeq;
DROP SEQUENCE orderPlaceSeq;
DROP SEQUENCE orderRequestSeq;
DROP SEQUENCE paySeq;
DROP SEQUENCE employeeSeq;
DROP SEQUENCE dutyScheduleSeq;
DROP SEQUENCE payPolicySeq;
DROP SEQUENCE diligenceSeq;
DROP SEQUENCE educationSeq;
DROP SEQUENCE lockSeq;
DROP SEQUENCE announcementSeq;
DROP SEQUENCE branchSeq;
DROP SEQUENCE surveySeq;
DROP SEQUENCE schedulerSeq;
DROP SEQUENCE bookmarkSeq;
DROP SEQUENCE keyRegistrationSeq;
DROP SEQUENCE promotionSeq;
DROP SEQUENCE manualSeq;
DROP SEQUENCE discountKeySeq;
DROP SEQUENCE operatingMoneySeq;
DROP SEQUENCE imageSeq;
DROP SEQUENCE refundSeq;
DROP SEQUENCE paymentSeq;
DROP SEQUENCE itemSeq;
DROP SEQUENCE cardCompanySeq;
DROP SEQUENCE memberSeq;
DROP SEQUENCE employeeBoardSeq;
DROP SEQUENCE todoListSeq;

--==============================================================================================================================

--고정할인키 등록(민희)
CREATE TABLE tblDiscountKey(
    discountKeySeq NUMBER PRIMARY KEY,
    discountRate NUMBER NOT NULL,
    use NUMBER(1) NOT NULL --사용 유무
);

CREATE SEQUENCE discountKeySeq;

--------------------------------------------------------------------------------------------------------------------------------

--즐겨찾기(민희)
CREATE TABLE tblBookmark(
    bookmarkSeq NUMBER PRIMARY KEY,
    image VARCHAR2(100) NOT NULL,
    link VARCHAR2(100) NOT NULL,
    bookmarkLocation NUMBER NOT NULL
);

CREATE SEQUENCE bookmarkSeq;

--------------------------------------------------------------------------------------------------------------------------------

--키등록(민희)
CREATE TABLE tblKeyRegistration(
    keyRegistrationSeq NUMBER PRIMARY KEY,
    keyName VARCHAR2(50) NOT NULL,
    keyLocation NUMBER NOT NULL
);

CREATE SEQUENCE keyRegistrationSeq;

--==============================================================================================================================

--지점
CREATE TABLE tblBranch(
    branchSeq NUMBER PRIMARY KEY,
    branchName VARCHAR2(20) NOT NULL,
    lat NUMBER NOT NULL,
    lng NUMBER NOT NULL,
    tel VARCHAR2(30) NOT NULL,
    owner VARCHAR2(30) NOT NULL
);

CREATE SEQUENCE branchSeq;

--------------------------------------------------------------------------------------------------------------------------------

--직원
CREATE TABLE tblEmployee(
    employeeSeq NUMBER PRIMARY KEY,
    userId VARCHAR2(30) NOT NULL,
    userPw VARCHAR2(30) NOT NULL,
    name VARCHAR2(30) NOT NULL,
    position VARCHAR2(30) NOT NULL,
    blNumber VARCHAR2(30) NOT NULL,
    birthDate VARCHAR2(30) NOT NULL,
    gender VARCHAR2(1) NOT NULL, --0이면 남자 1이면 여자
    email VARCHAR2(30) NOT NULL,
    address VARCHAR2(200) NOT NULL,
    tel VARCHAR2(30) NOT NULL,
    workTime NUMBER NOT NULL,
    ibsadate VARCHAR(30) NOT NULL, -- varchar2로 수정
    quitdate VARCHAR(30) NOT NULL, -- varchar2로 수정
    pwHintQ VARCHAR2(100) NOT NULL,
    pwHintA VARCHAR2(100) NOT NULL,
    healthCertificate NUMBER NOT NULL,
    educationComplete NUMBER NOT NULL,
    pic varchar2(50) default 'profile.jpg' NOT NULL, --프로필 사진 없어서 ERD에 컬럼추가
    branchSeq NUMBER NOT NULL REFERENCES tblBranch(branchSeq)                                        
);

CREATE SEQUENCE employeeSeq;

--==============================================================================================================================

--급여정책
CREATE TABLE tblPayPolicy(
    payPolicySeq NUMBER PRIMARY KEY,
    managerMonthWage NUMBER NOT NULL,
    managerHourWage NUMBER NOT NULL,
    arbietMonthWage NUMBER NOT NULL,
    arbietHourWage NUMBER NOT NULL,
    minimumHourWage NUMBER NOT NULL
);

CREATE SEQUENCE payPolicySeq;

--------------------------------------------------------------------------------------------------------------------------------

--급여
CREATE TABLE tblPay(
    paySeq NUMBER PRIMARY KEY,
    payType NUMBER(1) NOT NULL,
    payDate DATE NOT NULL,
    employeeSeq NUMBER NOT NULL REFERENCES tblEmployee(employeeSeq),
    branchSeq NUMBER NOT NULL REFERENCES tblBranch(branchSeq),
    payPolicySeq NUMBER NOT NULL REFERENCES tblPayPolicy(payPolicySeq)
);

CREATE SEQUENCE paySeq;

--------------------------------------------------------------------------------------------------------------------------------

--교육
CREATE TABLE tblEducation(
    educationSeq NUMBER NOT NULL,
    educationNotice VARCHAR2(1000) NOT NULL,
    educationName VARCHAR2(100) NOT NULL,
    educationContent VARCHAR2(1000) NOT NULL,
    educationPeriod DATE NOT NULL,
    educationRegisterDate DATE NOT NULL,
    branchSeq NUMBER NOT NULL REFERENCES tblBranch(branchSeq),
    employeeSeq NUMBER NOT NULL REFERENCES tblEmployee(employeeSeq)
);

CREATE SEQUENCE educationSeq;

--------------------------------------------------------------------------------------------------------------------------------

--근무스케줄
CREATE TABLE tblDutySchedule(
    dutyScheduleSeq NUMBER PRIMARY KEY,
    workMonth VARCHAR2(10) NOT NULL,
    workWeek VARCHAR2(10) NOT NULL,
    workDay VARCHAR2(10) NOT NULL,
    workStartHour VARCHAR2(10) NOT NULL,
    workStartMinute VARCHAR2(10) NOT NULL,
    workEndHour VARCHAR2(10) NOT NULL,
    workEndMinute VARCHAR2(10) NOT NULL,
    workColor VARCHAR2(10) NOT NULL,
    workMemo VARCHAR2(10) NOT NULL,
    branchSeq NUMBER NOT NULL REFERENCES tblBranch(branchSeq),
    employeeSeq NUMBER NOT NULL REFERENCES tblEmployee(employeeSeq)
);

CREATE SEQUENCE dutyScheduleSeq;

--------------------------------------------------------------------------------------------------------------------------------

--근태
CREATE TABLE tblDiligence(
    dilligenceSeq NUMBER PRIMARY KEY,
    workdayByMonth NUMBER NOT NULL,
    totalWorkTime NUMBER NOT NULL,
    attendance NUMBER NOT NULL,
    late NUMBER NOT NULL,
    absence NUMBER NOT NULL,
    earlyLeave NUMBER NOT NULL,
    sickLeave NUMBER NOT NULL,
    vacation NUMBER NOT NULL,
    familyEvent NUMBER NOT NULL,
    memo VARCHAR2(100) NOT NULL,
    branchSeq NUMBER NOT NULL REFERENCES tblBranch(branchSeq),
    employeeSeq NUMBER NOT NULL REFERENCES tblEmployee(employeeSeq)
);

CREATE SEQUENCE diligenceSeq;

--------------------------------------------------------------------------------------------------------------------------------

--관리자잠금
CREATE TABLE tblAdminLock(
    lockSeq NUMBER PRIMARY KEY,
    functionName VARCHAR2(100) NOT NULL,
    lockStatus NUMBER(1) NOT NULL,
    adminLockPw VARCHAR2(30) NOT NULL,
    branchSeq NUMBER NOT NULL REFERENCES tblBranch(branchSeq),
    employeeSeq NUMBER NOT NULL REFERENCES tblEmployee(employeeSeq)
);

CREATE SEQUENCE lockSeq;

--==============================================================================================================================

--사이트 메뉴얼
CREATE TABLE tblWebsiteManual(
    manualSeq NUMBER PRIMARY KEY,
    functionSeq NUMBER NOT NULL,
    functionName VARCHAR2(100) NOT NULL,
    functionExplanation VARCHAR2(500) NOT NULL,
    branchSeq NUMBER NOT NULL REFERENCES tblBranch(branchSeq)
);

CREATE SEQUENCE manualSeq;

--------------------------------------------------------------------------------------------------------------------------------

--메뉴얼 이미지
CREATE TABLE tblManualImage(
    imageSeq NUMBER NOT NULL PRIMARY KEY,
    imageName VARCHAR2(50) NOT NULL,
    manualSeq NUMBER NOT NULL REFERENCES tblWebsiteManual(manualSeq)
);

CREATE SEQUENCE imageSeq;

--==============================================================================================================================

--영업준비금
CREATE TABLE tblOperatingMoney(
    operatingMoneySeq NUMBER PRIMARY KEY,
    totalMoney NUMBER NOT NULL,
    branchSeq NUMBER NOT NULL REFERENCES tblBranch(branchSeq)
);

CREATE SEQUENCE operatingMoneySeq;

--------------------------------------------------------------------------------------------------------------------------------

--정산
CREATE TABLE tblEndCalculate(
    endCalculateDate DATE DEFAULT sysdate PRIMARY KEY,
    endCalculateAmount NUMBER NOT NULL,
    branchSeq NUMBER NOT NULL REFERENCES tblBranch(branchSeq)
);

--------------------------------------------------------------------------------------------------------------------------------

--판매상품분류(민희)
CREATE TABLE tblItemCategory(
    categorySeq NUMBER PRIMARY KEY,
    categoryName VARCHAR2(50) NULL
);

--------------------------------------------------------------------------------------------------------------------------------

--판매상품(민희)
CREATE TABLE tblItem(
    itemSeq NUMBER PRIMARY KEY,
    menuSeq	NUMBER	NOT NULL,
    itemName VARCHAR2(100) NULL,
    itemPrice NUMBER NULL,
    categorySeq NUMBER NOT NULL REFERENCES tblItemCategory(categorySeq)
);

CREATE SEQUENCE itemSeq;

--------------------------------------------------------------------------------------------------------------------------------

--카드사(민희)
CREATE TABLE tblCardCompany(
    cardCompanySeq NUMBER PRIMARY KEY,
    cardCompanyName VARCHAR2(50) NOT NULL,
    validityYear NUMBER(2) NOT NULL,
    validityMonth NUMBER(2) NOT NULL,
    InstallmentPeriod NUMBER(2) NULL
);

CREATE SEQUENCE cardCompanySeq;

--------------------------------------------------------------------------------------------------------------------------------

--회원
CREATE TABLE tblMember(
    memberSeq NUMBER PRIMARY KEY,
    memberName VARCHAR2(30) NOT NULL,
    gender NUMBER NOT NULL, --0이면 남자, 1이면 여자
    birth DATE NOT NULL,
    email VARCHAR2(30) NOT NULL,
    tel VARCHAR2(30) NOT NULL,
    stampAmount NUMBER DEFAULT 0 NOT NULL,
    couponAmount NUMBER DEFAULT 0 NOT NULL
);

CREATE SEQUENCE memberSeq;

--------------------------------------------------------------------------------------------------------------------------------

--판매일시
CREATE TABLE tblOperateDate(
    operateDate DATE PRIMARY KEY,
    weatherName VARCHAR2(20) NOT NULL,
    temperature VARCHAR2(10) NOT NULL
);

--------------------------------------------------------------------------------------------------------------------------------

--설문조사
CREATE TABLE tblSurvey(
    surveySeq NUMBER PRIMARY KEY,
    surveyNum NUMBER NOT NULL,
    surveyContent VARCHAR2(500) NOT NULL,
    surveyReply VARCHAR2(500) NOT NULL,
    itemSeq NUMBER NOT NULL REFERENCES tblItem(itemSeq),
    branchSeq NUMBER NOT NULL REFERENCES tblBranch(branchSeq),
    employeeSeq NUMBER NOT NULL REFERENCES tblEmployee(employeeSeq),
    memberSeq NUMBER NOT NULL REFERENCES tblMember(memberSeq)
);

CREATE SEQUENCE surveySeq;

--------------------------------------------------------------------------------------------------------------------------------

--행사
CREATE TABLE tblPromotion(
    promotionSeq NUMBER PRIMARY KEY,
    promotionName VARCHAR2(50) NOT NULL,
    promotionContent VARCHAR2(500) NOT NULL,
    branchSeq NUMBER NOT NULL REFERENCES tblBranch(branchSeq)
);

CREATE SEQUENCE promotionSeq;

--------------------------------------------------------------------------------------------------------------------------------

--스케줄러
CREATE TABLE tblScheduler(
    schedulerSeq NUMBER PRIMARY KEY,
    subject VARCHAR2(100) NOT NULL,
    content VARCHAR2(500) NOT NULL,
    id VARCHAR2(30) NOT NULL,
    category VARCHAR2(50) NOT NULL,
    schedulerDate DATE NOT NULL,
    schedulerTime DATE NOT NULL,
    alarm VARCHAR2(100) NOT NULL,
    branchSeq NUMBER NOT NULL REFERENCES tblBranch(branchSeq)
);

CREATE SEQUENCE schedulerSeq;

--------------------------------------------------------------------------------------------------------------------------------

--공지사항
CREATE TABLE tblAnnouncement(
    announcementSeq NUMBER PRIMARY KEY,
    writer VARCHAR2(50) NOT NULL,
    announceOption VARCHAR2(50) NOT NULL,
    subject VARCHAR2(100) NOT NULL,
    content VARCHAR2(500) NOT NULL,
    registerDate DATE NOT NULL,
    alarmDate DATE NOT NULL,
    editDate DATE NOT NULL,
    readCount NUMBER NOT NULL,
    schedulerSeq NUMBER NOT NULL REFERENCES tblScheduler(schedulerSeq)
);

CREATE SEQUENCE announcementSeq;

--------------------------------------------------------------------------------------------------------------------------------

--결제내역(민희)
CREATE TABLE tblPayment(
    paymentSeq NUMBER PRIMARY KEY,
    orderNumber NUMBER NOT NULL,
    orderAmount NUMBER NOT NULL,
    entirePayAmount NUMBER NOT NULL,
    payAmount NUMBER NOT NULL,
    discountAmount NUMBER NOT NULL,
    card NUMBER NOT NULL, 
    cash NUMBER NOT NULL, 
    refund NUMBER(1) NOT NULL,
    takeout NUMBER(1) NOT NULL,
    memberSeq NUMBER NULL REFERENCES tblMember(memberSeq),
    cardCompanySeq NUMBER NULL REFERENCES tblCardCompany(cardCompanySeq),
    branchSeq NUMBER NOT NULL REFERENCES tblBranch(branchSeq),
    itemSeq NUMBER NOT NULL REFERENCES tblItem(itemSeq),
    operateDate DATE NOT NULL REFERENCES tblOperateDate(operateDate)
);

CREATE SEQUENCE paymentSeq;

--------------------------------------------------------------------------------------------------------------------------------

--반품내역
CREATE TABLE tblRefund(
    refundSeq NUMBER PRIMARY KEY,
    refundDate DATE NOT NULL,
    refundPrice NUMBER NOT NULL,
    paymentSeq NUMBER NOT NULL REFERENCES tblPayment(paymentSeq)
);

CREATE SEQUENCE refundSeq;

--------------------------------------------------------------------------------------------------------------------------------

--직원게시판
CREATE TABLE tblEmployeeBoard(
    employeeboardSeq NUMBER PRIMARY KEY,
    writer VARCHAR2(50) NOT NULL,
    employeeboardOption VARCHAR2(50) NOT NULL,
    subject VARCHAR2(100) NOT NULL,
    content VARCHAR2(500) NOT NULL,
    registerDate DATE NOT NULL, --values (sysdate)
    readCount NUMBER NOT NULL --values (0)
);

CREATE SEQUENCE employeeboardSeq;

--------------------------------------------------------------------------------------------------------------------------------

--할일 리스트
CREATE TABLE tblTodoList(
    todoListSeq NUMBER PRIMARY KEY,
    todoListSubject VARCHAR2(100) NOT NULL,
    todoListContent VARCHAR2(300) NOT NULL,
    todoChecked NUMBER(1) DEFAULT 0 NOT NULL,
    todoCheckedTime DATE
);

CREATE SEQUENCE todoListSeq;

--==============================================================================================================================

--비품--

--비품 발주처
CREATE TABLE tblOrderPlace(
    orderPlaceSeq NUMBER PRIMARY KEY,
    orderPlaceName VARCHAR2(50) NOT NULL,
    orderPlaceLink VARCHAR2(500) NOT NULL
);

CREATE SEQUENCE orderPlaceSeq;

--------------------------------------------------------------------------------------------------------------------------------

--비품 발주요청
CREATE TABLE tblOrderRequest(
    orderRequestSeq NUMBER PRIMARY KEY,
    orderRequestQuantity NUMBER	NOT NULL,
    orderRequestDate DATE NOT NULL,
    operateDate DATE NOT NULL REFERENCES tblOperateDate(operateDate),
    orderPlaceSeq NUMBER NOT NULL REFERENCES tblOrderPlace(orderPlaceSeq)
);

CREATE SEQUENCE orderRequestSeq;

--------------------------------------------------------------------------------------------------------------------------------

--재고
CREATE TABLE tblInventory (
    inventorySeq NUMBER PRIMARY KEY,
    inventoryType NUMBER(1) NOT NULL,
    inventoryName VARCHAR2(50) NOT NULL,
    inventoryCount NUMBER NOT NULL,
    operateDate DATE NOT NULL REFERENCES tblOperateDate(operateDate)
);

CREATE SEQUENCE inventorySeq;

--------------------------------------------------------------------------------------------------------------------------------

create table tblTest (
    totalSales varchar2(50) not null, -- 총매출액
    discountSales varchar2(50) not null, -- 할인금액
    rawSales varchar2(50) not null, -- 순매출액
    tax varchar2(50) not null, -- 세금
    refundSales varchar2(50) not null -- 환불금액  
);
