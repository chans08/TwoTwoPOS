--==============================================================================================================================

--카드사(End)(민희)
INSERT INTO tblCardCompany(cardCompanySeq, cardCompanyName, validityYear, validityMonth) 
    VALUES(cardCompanySeq.NEXTVAL, '신한카드', 20, 1);
INSERT INTO tblCardCompany(cardCompanySeq, cardCompanyName, validityYear, validityMonth) 
    VALUES(cardCompanySeq.NEXTVAL, '현대카드', 20, 2);
INSERT INTO tblCardCompany(cardCompanySeq, cardCompanyName, validityYear, validityMonth) 
    VALUES(cardCompanySeq.NEXTVAL, '국민카드', 20, 3);
INSERT INTO tblCardCompany(cardCompanySeq, cardCompanyName, validityYear, validityMonth) 
    VALUES(cardCompanySeq.NEXTVAL, '우리카드', 20, 4);
INSERT INTO tblCardCompany(cardCompanySeq, cardCompanyName, validityYear, validityMonth) 
    VALUES(cardCompanySeq.NEXTVAL, '농협카드', 20, 5);
INSERT INTO tblCardCompany(cardCompanySeq, cardCompanyName, validityYear, validityMonth) 
    VALUES(cardCompanySeq.NEXTVAL, '비씨카드', 20, 6);
INSERT INTO tblCardCompany(cardCompanySeq, cardCompanyName, validityYear, validityMonth) 
    VALUES(cardCompanySeq.NEXTVAL, '하나카드', 20, 7);
INSERT INTO tblCardCompany(cardCompanySeq, cardCompanyName, validityYear, validityMonth) 
    VALUES(cardCompanySeq.NEXTVAL, '롯데카드', 20, 8);
INSERT INTO tblCardCompany(cardCompanySeq, cardCompanyName, validityYear, validityMonth) 
    VALUES(cardCompanySeq.NEXTVAL, '카카오뱅크카드', 20, 9);
INSERT INTO tblCardCompany(cardCompanySeq, cardCompanyName, validityYear, validityMonth) 
    VALUES(cardCompanySeq.NEXTVAL, '네이버페이카드', 20, 10);


--==============================================================================================================================

--할일리스트(END)
INSERT INTO tblTodoList(todoListSeq, todoListSubject, todoListContent, todoChecked, todoCheckedTime)
    VALUES(todoListSeq.NEXTVAL, '매장 정수기 점검입니다', '매장 정수기 필터 교체 부탁드립니다.', 1, sysdate);
INSERT INTO tblTodoList(todoListSeq, todoListSubject, todoListContent, todoChecked, todoCheckedTime)
    VALUES(todoListSeq.NEXTVAL, '과일 재고 조사', '딸기, 바나나, 수박, 청포도 재고 수량 확인 부탁드립니다.', 0, sysdate);
INSERT INTO tblTodoList(todoListSeq, todoListSubject, todoListContent, todoChecked, todoCheckedTime)
    VALUES(todoListSeq.NEXTVAL, '에어컨 온도 조절', '26도에서 27도로 올려주시기 바랍니다.', 1, sysdate);
INSERT INTO tblTodoList(todoListSeq, todoListSubject, todoListContent, todoChecked, todoCheckedTime)
    VALUES(todoListSeq.NEXTVAL, '물티슈 발주', '물티슈 재고가 얼마 남지 않았습니다. 300개 발주 부탁드립니다.', 0, sysdate);
INSERT INTO tblTodoList(todoListSeq, todoListSubject, todoListContent, todoChecked, todoCheckedTime)
    VALUES(todoListSeq.NEXTVAL, '이달의 점원', '우수 점원에게 제주도 여행 상품권을 드릴 예정입니다.', 1, sysdate);

--==============================================================================================================================

--매장(End)
insert into tblBranch (branchSeq, branchName, lat, lng, tel, owner) 
    values (branchSeq.nextval, 'TWOTWO', 0, 0, '02-745-2346', '차민희');
insert into tblBranch (branchSeq, branchName, lat, lng, tel, owner) 
    values (branchSeq.nextval, 'TWOTWO', 0, 0, '02-745-2346', '유성진');
insert into tblBranch (branchSeq, branchName, lat, lng, tel, owner) 
    values (branchSeq.nextval, 'TWOTWO', 0, 0, '02-745-2346', '유성남');

--==============================================================================================================================
select * from tblemployee;
--직원(END)
insert into tblEmployee (employeeSeq, userId, userPw, name, position, blNumber, birthDate, gender, email, address, tel,
workTime, ibsadate, quitdate, pwHintQ, pwHintA, healthCertificate, educationComplete, pic, branchSeq)
    values (employeeSeq.nextval, 'admin', 'pos1234', '차민희', '사장', '4520101212', '930527', 
    'f', 'seongjin527@gmail.com', '경기도 성남시 분당구', '010-7232-1519', 0, '2019-07-15', ' ', 
    '당신의 별명은 무엇인가요?','유성매직', 1, 1, 'profile.jpg', (select branchseq from tblbranch where owner  = '차민희'));
    
insert into vwEmployee (employeeSeq, userId, userPw, name, position, blNumber, birthDate, gender, email, address, tel,
workTime, ibsadate, quitdate, pwHintQ, pwHintA, healthCertificate, educationComplete, pic, branchSeq)
    values (employeeSeq.nextval, 'test', '1234', '유성남', ' ', '1234567890', '910802', 
    'm', 'sungnam0802@gmail.com', ' ', '010-3051-7930', 0, '2019-07-15', ' ',
    '당신의 집은 어디인가요?','성남', 0, 0, 'profile.jpg', (select branchseq from tblbranch where owner  = '차민희'));


--==============================================================================================================================

--상품분류(End)
insert into tblitemcategory (categorySeq, categoryName) values (1, '에스프레소');
insert into tblitemcategory (categorySeq, categoryName) values (2, '라떼');
insert into tblitemcategory (categorySeq, categoryName) values (3, '티');
insert into tblitemcategory (categorySeq, categoryName) values (4, '아이스블랜디드(스무디)');
insert into tblitemcategory (categorySeq, categoryName) values (5, '스파클링');
insert into tblitemcategory (categorySeq, categoryName) values (6, '생과일주스');
insert into tblitemcategory (categorySeq, categoryName) values (7, '베이커리');
insert into tblitemcategory (categorySeq, categoryName) values (8, '병음료');
insert into tblitemcategory (categorySeq, categoryName) values (9, null);
insert into tblitemcategory (categorySeq, categoryName) values (10, null);
    
--==============================================================================================================================

--상품명(End)

--에스프레소류
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 1, '에스프레소', 2500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '에스프레소'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 2, '아메리카노', 3000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '에스프레소'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 3, '카페라떼', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '에스프레소'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 4, '카푸치노', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '에스프레소'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 5, '바닐라라떼', 4000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '에스프레소'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 6, '카라멜마끼아또', 4000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '에스프레소'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 7, '민트모카라떼', 4000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '에스프레소'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 8, '카페모카', 4000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '에스프레소'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 9, '카라멜카페모카', 4000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '에스프레소'));

--------------------------------------------------------------------------------------------------------------------------------

--라떼류
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 1, '초코라떼', 3800, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '라떼'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 2, '고구마라떼', 3800, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '라떼'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 3, '밀크티라떼', 3800, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '라떼'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 4, '블랙빈라떼', 3800, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '라떼'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 5, '그린티라떼', 3800, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '라떼'));

--------------------------------------------------------------------------------------------------------------------------------

--티류
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 1, '얼그레이', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '티'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 2, '잉글리쉬블랙퍼스트', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '티'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 3, '캐모마일', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '티'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 4, '페퍼민트', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '티'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 5, '루이보스', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '티'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 6, '그린티', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '티'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 7, '자몽티', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '티'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 8, '레몬티', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '티'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 9, '유자티', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '티'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 10, '아이스티', 3000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '티'));

--------------------------------------------------------------------------------------------------------------------------------

--아이스 블랜디드류
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 1, '요거트', 4500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '아이스블랜디드(스무디)'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 2, '민트초코칩', 4500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '아이스블랜디드(스무디)'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 3, '쿠앤크', 4500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '아이스블랜디드(스무디)'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 4, '모카', 4500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '아이스블랜디드(스무디)'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 5, '자몽', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '아이스블랜디드(스무디)'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 6, '딸기', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '아이스블랜디드(스무디)'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 7, '청포도', 3500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '아이스블랜디드(스무디)'));

--------------------------------------------------------------------------------------------------------------------------------

--스파클링류
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 1, '자몽에이드', 4000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '스파클링'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 2, '레몬에이드', 4000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '스파클링'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 3, '청포도에이드', 4000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '스파클링'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 4, '오렌지에이드', 4000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '스파클링'));

--------------------------------------------------------------------------------------------------------------------------------

--생과일주스류
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 1, '바나나주스', 4500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '생과일주스'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 2, '토마토주스', 4500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '생과일주스'));

--------------------------------------------------------------------------------------------------------------------------------

--베이커리류
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 1, '허니브레드', 5000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '베이커리'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 2, '생크림와플', 3000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '베이커리'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 3, '크림치즈추가', 1000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '베이커리'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 4, '베이글(어니언)', 2500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '베이커리'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 5, '베이글(플레인)', 2500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '베이커리'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 6, '치즈케익', 5000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '베이커리'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 7, '쿠앤크치즈케익', 5000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '베이커리'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 8, '프렌치초콜릿케익', 5000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '베이커리'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 9, '티라미수케익', 5000, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '베이커리'));

--------------------------------------------------------------------------------------------------------------------------------

--병음료
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 1, '골드키위주스', 4500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '병음료'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 2, '케일사과주스', 4500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '병음료'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 3, '망고주스', 4500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '병음료'));
INSERT INTO tblItem(itemSeq, menuSeq, itemName, itemPrice, categorySeq) VALUES(itemSeq.NEXTVAL, 4, '애플주스', 4500, 
    (SELECT categorySeq FROM tblItemCategory WHERE categoryName = '병음료'));
    
--==============================================================================================================================
    
--회원(END)

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '차민희', 1, '890809', 'hoho@gmail.com', '010-6455-1224', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김병준', 0, '900211', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '유성진', 0, '930509', 'captain@gmail.com', '010-1234-2534', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '이다현', 1, '941215', 'bread@gmail.com', '010-6655-5321', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김정아', 1, '950612', 'food@gmail.com', '010-1232-3253', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '엄현철', 0, '950209', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '이어폰', 0, '090211', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '브을투', 0, '090311', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);    
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '유우성', 0, '090411', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '노구성', 0, '090511', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '내구성', 0, '090611', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '휴우지', 0, '080211', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '크아앙', 0, '080311', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '쿠오오', 0, '080411', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '아오오', 0, '080511', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '모오오', 0, '080611', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '째액짹', 1, '070211', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '짜르르', 1, '070212', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '뇨호호', 1, '070213', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '후후후', 1, '070214', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '푸우푸', 1, '070215', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '라며니', 1, '060211', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '고기니', 1, '060311', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '츠도니', 1, '060411', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '치키니', 1, '060511', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '차카니', 1, '060611', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '마카니', 0, '050211', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '카롱이', 0, '050311', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '곰돌이', 0, '050411', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '냐옹이', 0, '050511', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '댕댕이', 0, '050611', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '숙하이', 0, '040509', 'captain@gmail.com', '010-1234-2534', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '숙바이', 0, '040609', 'captain@gmail.com', '010-1234-2534', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '숙소이', 0, '040709', 'captain@gmail.com', '010-1234-2534', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '숙구이', 0, '040809', 'captain@gmail.com', '010-1234-2534', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '양구이', 0, '040909', 'captain@gmail.com', '010-1234-2534', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '브이구', 1, '031215', 'bread@gmail.com', '010-6655-5321', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '브이팔', 1, '031216', 'bread@gmail.com', '010-6655-5321', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '브이칠', 1, '031217', 'bread@gmail.com', '010-6655-5321', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '브이육', 1, '031218', 'bread@gmail.com', '010-6655-5321', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '브이통', 1, '031219', 'bread@gmail.com', '010-6655-5321', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '검냥이', 1, '020612', 'food@gmail.com', '010-1232-3253', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '백냥이', 1, '020613', 'food@gmail.com', '010-1232-3253', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '청냥이', 1, '020614', 'food@gmail.com', '010-1232-3253', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '백댕이', 1, '020615', 'food@gmail.com', '010-1232-3253', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '검댕이', 1, '020616', 'food@gmail.com', '010-1232-3253', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '스파니', 0, '010309', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '스파쿠', 0, '010409', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '스펀지', 0, '010509', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '퐁퍼니', 0, '010609', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '자이리', 0, '010709', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '모오통', 0, '000211', 'beer@gmail.com', '010-1523-9533', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '숙하하', 0, '000509', 'captain@gmail.com', '010-1234-2534', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '브이서', 1, '001215', 'bread@gmail.com', '010-6655-5321', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '갠역시', 1, '000612', 'food@gmail.com', '010-1232-3253', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '아이퐁', 0, '000209', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
    
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김우아', 1, '990101', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김태웅', 0, '991111', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김현빈', 0, '991012', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '장동건', 0, '990506', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '시우민', 0, '991201', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '강태형', 0, '980909', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '차은우', 0, '980112', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);  
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '아냐자', 1, '980103', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '사아자', 1, '980403', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '토오끼', 1, '980801', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
    
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '야나두', 0, '970104', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '코낄이', 0, '970204', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '하암마', 0, '970304', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '마암하', 1, '970404', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '꼬끼오', 1, '970504', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김규동', 0, '960105', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '이규동', 1, '960205', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박규동', 1, '960405', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '성규동', 1, '960805', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '고규동', 0, '961205', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '마카도', 1, '950106', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '마카두', 1, '950807', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '마카다', 1, '950908', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '마카여', 1, '951009', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '마카야', 1, '951110', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '하리보', 1, '940107', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '하여보', 1, '940207', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '하리동', 0, '940401', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '하리봉', 1, '940602', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '하리철', 0, '940804', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '자일이', 0, '930108', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '자우이', 0, '930808', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '임윤아', 1, '930508', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김태연', 1, '930208', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '송승연', 1, '930112', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김유리', 1, '920709', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '이순규', 1, '920609', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '송윤아', 1, '920509', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김수지', 1, '920409', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '배수지', 1, '920309', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김정윤', 0, '910110', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김정수', 0, '910210', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김정두', 0, '910310', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김정도', 0, '910410', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김정더', 0, '910510', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김우성', 0, '900202', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김우석', 0, '900302', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김우나', 1, '900402', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김윤서', 1, '900502', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김수서', 1, '900602', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '윤정우', 0, '890611', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '심정우', 0, '890511', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '신정우', 0, '890411', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '도정우', 0, '890311', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '지정우', 0, '890211', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김정후', 0, '880404', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '구정후', 0, '880804', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '이정훅', 0, '881004', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '호정후', 0, '881104', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '남궁후', 0, '881204', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '차정민', 1, '870303', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '차이민', 1, '870403', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '차삼민', 1, '870503', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '차사민', 1, '870603', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '차오민', 1, '870703', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '송강호', 0, '860202', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '이강호', 0, '860302', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '삼강호', 0, '860402', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '사강호', 0, '860502', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '오강호', 0, '860602', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김고은', 1, '850202', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김고이', 1, '850302', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김고삼', 1, '850402', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김고사', 1, '850502', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김고오', 1, '850602', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박소담', 1, '840202', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박수담', 1, '840302', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박성담', 1, '840402', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박사담', 1, '840502', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박고담', 1, '840602', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김태균', 0, '830202', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김텍구', 0, '830302', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김백구', 0, '830402', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김성구', 0, '830502', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김거구', 0, '830602', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '강슬기', 1, '820202', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김슬기', 1, '820302', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '엄슬기', 1, '820402', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박슬기', 1, '820502', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '서슬기', 1, '820602', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '배주현', 1, '810202', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '배주구', 0, '810302', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '배주팔', 0, '810402', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '배수구', 0, '810502', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '배주칠', 0, '810602', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박수영', 1, '800202', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '구수영', 1, '800302', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '팔수영', 1, '800402', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '칠수영', 1, '800502', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박육영', 1, '800602', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김예림', 1, '790202', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김이림', 1, '790902', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김삼림', 1, '790302', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김사림', 1, '790402', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김오림', 1, '790502', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '손승완', 1, '780202', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '손승구', 1, '780203', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '손승팔', 1, '780204', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '손승칠', 1, '780205', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '손승육', 1, '780206', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '모모링', 1, '770101', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '모모이', 1, '770801', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '모모사', 1, '770601', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '모모십', 1, '770501', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '모모영', 1, '770201', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '시나공', 1, '760606', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '양파링', 1, '760606', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '오징링', 1, '760606', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '사나공', 1, '760606', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '수리공', 1, '760606', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '임나연', 1, '750909', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '이나연', 1, '751009', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '삼나연', 1, '751109', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '삼다수', 1, '751209', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '이다솜', 1, '750409', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박지효', 1, '741211', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김지효', 1, '741111', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '이지효', 1, '741011', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김지횽', 1, '741216', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '배지효', 1, '741219', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김쯔위', 1, '730113', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김쯔이', 1, '730212', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김쯔삼', 1, '730301', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김쯔사', 1, '730802', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김쯔구', 1, '730903', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '이승현', 0, '720123', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '삼승현', 0, '720223', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '육승현', 0, '720323', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '칠승현', 0, '720423', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '팔승현', 0, '720523', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '바구현', 0, '710221', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김수현', 0, '710821', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '수성현', 0, '710721', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '토성현', 0, '710621', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '화성현', 0, '710521', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '권지용', 0, '700414', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '크레용', 0, '700514', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '크레요', 0, '700614', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '요프루', 0, '700714', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '루이비', 0, '700814', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '비토옹', 0, '690905', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김토옹', 0, '691004', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '노토옹', 0, '691203', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '수토옹', 0, '691102', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '소토옹', 0, '691001', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '강시지', 1, '680606', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '강시주', 1, '680506', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '강서지', 1, '680406', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '강사주', 1, '680306', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '강구현', 1, '680206', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '라이언', 0, '670707', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '라일언', 0, '670607', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '라팔언', 0, '670507', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '라칠언', 0, '670407', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '라구언', 0, '670307', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김피치', 0, '660808', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박피치', 0, '660508', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '배피치', 0, '660408', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '임피치', 0, '660308', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '서피치', 0, '660208', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '스카피', 1, '651212', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김카피', 1, '651112', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '성카피', 1, '651211', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '소카피', 1, '651210', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '수카피', 1, '651209', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '앙몬드', 0, '641111', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '앙몬둘', 0, '641011', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '앙몬삼', 0, '641112', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '앙몬사', 0, '641113', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '앙몬오', 0, '641114', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '네오링', 1, '631010', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '호호링', 1, '631011', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '네칠링', 1, '631012', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '네팔링', 1, '631013', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '네구링', 1, '631014', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '프로도', 0, '620515', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '프로동', 0, '620615', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '프로은', 0, '620715', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '프로금', 0, '620815', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '프로다', 0, '620915', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '케로니', 0, '610411', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '케로나', 0, '610412', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '케로너', 0, '610413', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '메론아', 0, '610414', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '더우아', 0, '610417', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '베로니', 1, '600419', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '베로구', 1, '600519', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '베로서', 1, '600619', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '베로성', 1, '600719', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '베로혁', 1, '600819', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '죠르디', 0, '590420', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '죠이디', 0, '590520', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '죠삼디', 0, '590620', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '죠사디', 0, '590720', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '죠오디', 0, '590820', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '두리기', 0, '580421', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '두리서', 0, '580521', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '두리구', 0, '580621', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '두구구', 0, '580721', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '두아아', 0, '580821', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '다리미', 0, '570212', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '펴지미', 0, '570312', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '구기미', 0, '570412', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '돌돌이', 0, '570512', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '치느님', 0, '570612', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '오셔니', 1, '560209', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '오지니', 1, '560309', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '지여니', 1, '560409', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '시여니', 1, '560509', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '구져니', 1, '560609', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박셔니', 0, '550305', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박루닝', 0, '550705', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박로넝', 0, '550605', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '박베닉', 0, '550505', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '닉네임', 0, '550405', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김하늘', 1, '540429', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김대지', 1, '540529', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김대집', 1, '540629', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김수집', 1, '540729', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '김소집', 1, '540829', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '강하늘', 1, '531215', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '흑하늘', 1, '531216', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '백하늘', 1, '531217', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '청하늘', 1, '531218', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '적하늘', 1, '531219', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '삼순이', 1, '520112', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '삼숨이', 1, '520212', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '삼숙이', 1, '520312', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '삼숩지', 1, '520412', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '삼더지', 1, '520512', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '사순이', 1, '510909', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '사순에', 1, '510109', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '사순엥', 1, '510209', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '사국에', 1, '510309', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '조국에', 1, '510409', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '오순이', 1, '500404', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '오순규', 1, '500504', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '오순튜', 1, '500604', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '오순큐', 1, '500704', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);
INSERT INTO tblMember(memberSeq, memberName, gender, birth, email, tel, stampAmount, couponAmount)
    VALUES(memberSeq.NEXTVAL, '오스튝', 1, '500408', 'haha@gmail.com', '010-8671-1243', DEFAULT, DEFAULT);

--==============================================================================================================================

--병준형 테스트
insert into tblTest values ('1000000', '123000', '9870000', '998000', '12300');

--==============================================================================================================================

COMMIT;