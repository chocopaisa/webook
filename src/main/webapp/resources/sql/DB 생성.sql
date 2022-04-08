-- 장르 목록 테이블

CREATE TABLE genre_list(
    genre_no varchar2(20), -- 장르번호
    genre_name varchar2(30) NOT NULL, -- 장르명

    CONSTRAINT pk_genre_list PRIMARY KEY(genre_no)
);
-- 고객정보 테이블
create table customer_info (
    user_email varchar2(50) Primary Key, -- 고객 아이디
    user_pass varchar2(50), -- 고객 비밀번호
    user_name varchar2(50), -- 고객명
    user_Addr varchar2(200), -- 배송지
    gender char(1), -- 성별 M,F
    user_Birth date, -- 생년월일
    user_Tel VARCHAR2(13), -- 전화번호
    blackList char(1), -- 블랙리스트 여부
    user_regdate date -- 회원 가입 날짜
);

-- 상품 목록 테이블

CREATE TABLE product_list(
    product_no char(13), -- 상품번호
    product_name varchar2(60) not null, -- 상품명
    product_price int default 0, -- 상품 가격
    product_desc varchar2(4000), -- 상품 설명
    product_cnt int default 0, -- 상품 재고
    product_sale int default 0, -- 상품 할인 가격
    genre_no varchar2(30), -- 장르 번호
	product_writer varchar2(60), -- 작가명
	product_publisher varchar2(60), -- 출판사
	product_image varchar2(100), -- 상품 이미지명
	product_desc_image varchar2(100), -- 상세 이미지
	product_date date, -- 출판일
    product_lang varchar2(10), -- 국내 해외 구분
    CONSTRAINT pk_product_list PRIMARY KEY(product_no),
    CONSTRAINT fk_product_list_genre_no FOREIGN KEY(genre_no) REFERENCES genre_list(genre_no)
);

alter table product_list modify product_name varchar2(200);

-- 게시글 테이블

CREATE TABLE bookreport (
	bookreport_no		INT, -- 게시글 번호
	user_email		varchar2(50), -- 작성자 이메일
	product_no		char(13), -- 상품 번호
	write_date		date, -- 작성일
	bookreport_title		varchar2(80), -- 게시글 제목
	bookreport_content	varchar2(4000), -- 게시글 내용
	view_count		int, -- 조회수
	report_kind		varchar2(30), -- 게시판 구분
	star			int, -- 평점

constraint pk_bookreport_bookreport_no PRIMARY KEY (bookreport_no),
constraint fk_bookreport_user_email foreign key (user_email) references customer_info(user_email),
constraint fk_bookreport_product_no foreign key (product_no) references product_list(product_no)
);


-- 게시글 테이블 시퀀스

CREATE SEQUENCE bookreport_seq;


-- 게시글 좋아요 테이블
CREATE TABLE jjoa (
	jjoa_no			INT, -- 좋아요 번호
	bookreport_no		int, -- 게시글 번호
	user_email		varchar2(50), -- 좋아요 누른 사람

constraint pk_jjoa_jjoa_no PRIMARY KEY (jjoa_no),
constraint fk_jjoa_user_email foreign key (user_email) references customer_info(user_email),
constraint fk_jjoa_bookreport_no foreign key (bookreport_no) references bookreport(bookreport_no)
);


-- 게시글 좋아요 테이블 시퀀스
CREATE SEQUENCE jjoa_seq;

-- 게시글 신고 테이블

CREATE TABLE REPORT_ARTICLE (
REP_ARTICLE_NO INT PRIMARY KEY,     --신고번호
REP_ARTICLE_INFO VARCHAR2(50),         --신고정보
REP_ARTICLE_DATE DATE,          	--신고날짜
ARTICLE_NO INT, 		--신고당한 게시글번호
REP_ARTICLE_EMAIL VARCHAR2(50),	--신고한 이메일

CONSTRAINT fk_REPORT_ARTICLE_ARTICLE_NO FOREIGN KEY (ARTICLE_NO)
REFERENCES bookreport(bookreport_no),
CONSTRAINT fk_ARTICLE_EMAIL FOREIGN KEY (REP_ARTICLE_EMAIL)
REFERENCES customer_info(user_email)
);


-- 게시글 신고 테이블 시퀀스
CREATE SEQUENCE REPORT_ARTICLE_seq;



-- 댓글 테이블

CREATE TABLE comment_list (
	comment_no		INT, -- 댓글 번호
	user_email		varchar2(50), -- 작성자
	bookreport_no		int, -- 댓글이 달린 게시글 번호
	comment_write_date	date, -- 작성일
	comment_content		varchar2(800), -- 댓글 내용

constraint pk_comment_comment_no PRIMARY KEY (comment_no),
constraint fk_comment_user_email foreign key (user_email) references customer_info(user_email),
constraint fk_comment_bookreport_no foreign key (bookreport_no) references bookreport(bookreport_no)
);

-- 댓글 테이블 시퀀스
CREATE SEQUENCE comment_list_seq;




-- 댓글 신고 테이블

CREATE TABLE REPORT_COMMENT (
REP_COMMENT_NO INT PRIMARY KEY,      --신고번호
REP_COMMENT_INFO VARCHAR2(50),          --신고정보
REP_COMMENT_DATE DATE,		   -- 신고날짜	
REP_COMMENT_EMAIL  VARCHAR2(50),         -- 신고한 이메일
REP_COMMENT_EMAIL_LET VARCHAR2(50),	--신고당한 이메일
COMMENT_NO INT,		   --댓글번호

CONSTRAINT fk_REP_COMMENT_EMAIL FOREIGN KEY (REP_COMMENT_EMAIL)
REFERENCES customer_info(user_email),
CONSTRAINT fk_REP_COMMENT_EMAIL_LET FOREIGN KEY (REP_COMMENT_EMAIL_LET)
REFERENCES customer_info(user_email),
CONSTRAINT fk_REPORT_COMMENT_COMMENT_NO FOREIGN KEY (COMMENT_NO)
REFERENCES comment_list(comment_no)
);


-- 댓글 신고 시퀀스
CREATE SEQUENCE REPORT_REVIEW_seq;

-- 주문 테이블

CREATE TABLE ORDER_LIST (
    order_no varchar2(30), -- 주문번호
    user_email varchar2(50), -- 주문고객
    payment_method varchar2(30), -- 결제방법
    delivery_fee int, -- 배송비
    delivery_place varchar2(200), -- 배송지
    delivery_Requirements varchar2(50), -- 배송 요구사항
    payment_date date, -- 결제날짜
    delivery_info varchar2(50), -- 배송상황
    tracking_number varchar2(30), -- 송장번호
    
    CONSTRAINT pk_order_list PRIMARY KEY(order_no),
    CONSTRAINT fk_order_list_user_email FOREIGN KEY(user_email) REFERENCES customer_info(user_email)
);

-- 주문 테이블 시퀀스
CREATE sequence ORDER_List_seq;

-- 주문 상품 테이블

CREATE TABLE order_ITEMS (
    order_item_no varchar2(30), -- 주문상품 번호
    order_no varchar2(30), -- 주문 번호
    product_no char(13), -- 상품 번호
    order_cnt int, -- 상품 개수
    total_price int, -- 총가격
    discount_price int, -- 할인된 가격
    
    CONSTRAINT pk_order_items PRIMARY KEY(order_item_no),
    CONSTRAINT fk_order_items_order_no FOREIGN KEY(order_no) REFERENCES order_list(order_no),
    CONSTRAINT fk_order_items_product_no FOREIGN KEY(product_no) REFERENCES product_list(product_no)
);

-- 주문 상품 시퀀스
CREATE SEQUENCE order_items_seq;

-- 쿠폰정보 테이블
CREATE TABLE coupon_info(
	coupon_info_id varchar2(50), -- 쿠폰 아이디
	coupon_desc varchar2(100), -- 쿠폰 내용
	coupon_discount_price INT, -- 쿠폰 할인 가격
	product_no char(13), -- 할인 상품 번호
	coupon_date date, -- 쿠폰 유효기간
	CONSTRAINT pk_coupon_info PRIMARY KEY(coupon_info_id),
	CONSTRAINT fk_coupon_info_product_no FOREIGN KEY(product_no) REFERENCES product_list(product_no)
);

-- 쿠폰 정보 테이블 시퀀스
CREATE SEQUENCE coupon_info_seq;

-- 쿠폰 목록 테이블

CREATE TABLE coupon_list (
	coupon_no varchar2(50), -- 쿠폰 시리얼 번호
	coupon_info_id varchar2(50), -- 쿠폰 정보 번호
	user_email varchar2(50), -- 쿠폰 보유자

	CONSTRAINT pk_coupon_list PRIMARY KEY(coupon_no),
	CONSTRAINT fk_coupon_list_info FOREIGN KEY(coupon_info_id) REFERENCES coupon_info(coupon_info_id),
	CONSTRAINT fk_conpon_list_user FOREIGN KEY(user_email) REFERENCES customer_info(user_email)
);

-- 쿠폰 목록 테이블 시퀀스
CREATE SEQUENCE coupon_list_seq;


-- 관리자 계정 테이블
create table book_admin(
    admin_Id varchar2(20) PRIMARY KEY, -- 관리자 아이디
    admin_Pass varchar2(50) -- 관리자 비밀번호
);



INSERT INTO book_admin(admin_Id,admin_Pass)VALUES('webook','admin');

ALTER TABLE coupon_list add order_no varchar2(30);

ALTER TABLE coupon_list ADD CONSTRAINT fk_coupon_list_order foreign KEY(order_no) references order_list(order_no);

-- delete cascade 적용을 위한 foreign key 삭제 및 재입력

ALTER TABLE bookreport drop constraint fk_bookreport_user_email;
ALTER TABLE report_article drop constraint fk_REPORT_ARTICLE_ARTICLE_NO;
ALTER TABLE report_article drop constraint fk_ARTICLE_EMAIL;
ALTER TABLE comment_list drop constraint fk_comment_user_email;
ALTER TABLE coupon_list drop constraint fk_conpon_list_user;
ALTER TABLE jjoa drop constraint fk_jjoa_user_email;
ALTER TABLE jjoa drop constraint fk_jjoa_bookreport_no;

ALTER TABLE bookreport ADD CONSTRAINT fk_bookreport_user_email FOREIGN KEY (user_email) 
REFERENCES customer_info(user_email) ON DELETE CASCADE;
ALTER TABLE report_article ADD CONSTRAINT fk_REPORT_ARTICLE_ARTICLE_NO FOREIGN KEY (ARTICLE_NO) 
REFERENCES bookreport(bookreport_no) ON DELETE CASCADE;
ALTER TABLE report_article ADD CONSTRAINT fk_ARTICLE_EMAIL FOREIGN KEY (REP_ARTICLE_EMAIL) 
REFERENCES customer_info(user_email) ON DELETE CASCADE;
ALTER TABLE comment_list ADD CONSTRAINT fk_comment_user_email FOREIGN KEY (user_email) 
REFERENCES customer_info(user_email) ON DELETE CASCADE;
ALTER TABLE coupon_list ADD CONSTRAINT fk_conpon_list_user FOREIGN KEY (user_email) 
REFERENCES customer_info(user_email) ON DELETE CASCADE;
ALTER TABLE jjoa ADD CONSTRAINT fk_jjoa_user_email FOREIGN KEY (user_email) 
REFERENCES customer_info(user_email) ON DELETE CASCADE;
ALTER TABLE jjoa ADD CONSTRAINT fk_jjoa_bookreport_no FOREIGN KEY (bookreport_no) 
REFERENCES bookreport(bookreport_no) ON DELETE CASCADE;