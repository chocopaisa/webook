-- �帣 ��� ���̺�

CREATE TABLE genre_list(
    genre_no varchar2(20), -- �帣��ȣ
    genre_name varchar2(30) NOT NULL, -- �帣��

    CONSTRAINT pk_genre_list PRIMARY KEY(genre_no)
);
-- ������ ���̺�
create table customer_info (
    user_email varchar2(50) Primary Key, -- �� ���̵�
    user_pass varchar2(50), -- �� ��й�ȣ
    user_name varchar2(50), -- ����
    user_Addr varchar2(200), -- �����
    gender char(1), -- ���� M,F
    user_Birth date, -- �������
    user_Tel VARCHAR2(13), -- ��ȭ��ȣ
    blackList char(1), -- ������Ʈ ����
    user_regdate date -- ȸ�� ���� ��¥
);

-- ��ǰ ��� ���̺�

CREATE TABLE product_list(
    product_no char(13), -- ��ǰ��ȣ
    product_name varchar2(60) not null, -- ��ǰ��
    product_price int default 0, -- ��ǰ ����
    product_desc varchar2(4000), -- ��ǰ ����
    product_cnt int default 0, -- ��ǰ ���
    product_sale int default 0, -- ��ǰ ���� ����
    genre_no varchar2(30), -- �帣 ��ȣ
	product_writer varchar2(60), -- �۰���
	product_publisher varchar2(60), -- ���ǻ�
	product_image varchar2(100), -- ��ǰ �̹�����
	product_desc_image varchar2(100), -- �� �̹���
	product_date date, -- ������
    product_lang varchar2(10), -- ���� �ؿ� ����
    CONSTRAINT pk_product_list PRIMARY KEY(product_no),
    CONSTRAINT fk_product_list_genre_no FOREIGN KEY(genre_no) REFERENCES genre_list(genre_no)
);

alter table product_list modify product_name varchar2(200);

-- �Խñ� ���̺�

CREATE TABLE bookreport (
	bookreport_no		INT, -- �Խñ� ��ȣ
	user_email		varchar2(50), -- �ۼ��� �̸���
	product_no		char(13), -- ��ǰ ��ȣ
	write_date		date, -- �ۼ���
	bookreport_title		varchar2(80), -- �Խñ� ����
	bookreport_content	varchar2(4000), -- �Խñ� ����
	view_count		int, -- ��ȸ��
	report_kind		varchar2(30), -- �Խ��� ����
	star			int, -- ����

constraint pk_bookreport_bookreport_no PRIMARY KEY (bookreport_no),
constraint fk_bookreport_user_email foreign key (user_email) references customer_info(user_email),
constraint fk_bookreport_product_no foreign key (product_no) references product_list(product_no)
);


-- �Խñ� ���̺� ������

CREATE SEQUENCE bookreport_seq;


-- �Խñ� ���ƿ� ���̺�
CREATE TABLE jjoa (
	jjoa_no			INT, -- ���ƿ� ��ȣ
	bookreport_no		int, -- �Խñ� ��ȣ
	user_email		varchar2(50), -- ���ƿ� ���� ���

constraint pk_jjoa_jjoa_no PRIMARY KEY (jjoa_no),
constraint fk_jjoa_user_email foreign key (user_email) references customer_info(user_email),
constraint fk_jjoa_bookreport_no foreign key (bookreport_no) references bookreport(bookreport_no)
);


-- �Խñ� ���ƿ� ���̺� ������
CREATE SEQUENCE jjoa_seq;

-- �Խñ� �Ű� ���̺�

CREATE TABLE REPORT_ARTICLE (
REP_ARTICLE_NO INT PRIMARY KEY,     --�Ű��ȣ
REP_ARTICLE_INFO VARCHAR2(50),         --�Ű�����
REP_ARTICLE_DATE DATE,          	--�Ű�¥
ARTICLE_NO INT, 		--�Ű���� �Խñ۹�ȣ
REP_ARTICLE_EMAIL VARCHAR2(50),	--�Ű��� �̸���

CONSTRAINT fk_REPORT_ARTICLE_ARTICLE_NO FOREIGN KEY (ARTICLE_NO)
REFERENCES bookreport(bookreport_no),
CONSTRAINT fk_ARTICLE_EMAIL FOREIGN KEY (REP_ARTICLE_EMAIL)
REFERENCES customer_info(user_email)
);


-- �Խñ� �Ű� ���̺� ������
CREATE SEQUENCE REPORT_ARTICLE_seq;



-- ��� ���̺�

CREATE TABLE comment_list (
	comment_no		INT, -- ��� ��ȣ
	user_email		varchar2(50), -- �ۼ���
	bookreport_no		int, -- ����� �޸� �Խñ� ��ȣ
	comment_write_date	date, -- �ۼ���
	comment_content		varchar2(800), -- ��� ����

constraint pk_comment_comment_no PRIMARY KEY (comment_no),
constraint fk_comment_user_email foreign key (user_email) references customer_info(user_email),
constraint fk_comment_bookreport_no foreign key (bookreport_no) references bookreport(bookreport_no)
);

-- ��� ���̺� ������
CREATE SEQUENCE comment_list_seq;




-- ��� �Ű� ���̺�

CREATE TABLE REPORT_COMMENT (
REP_COMMENT_NO INT PRIMARY KEY,      --�Ű��ȣ
REP_COMMENT_INFO VARCHAR2(50),          --�Ű�����
REP_COMMENT_DATE DATE,		   -- �Ű�¥	
REP_COMMENT_EMAIL  VARCHAR2(50),         -- �Ű��� �̸���
REP_COMMENT_EMAIL_LET VARCHAR2(50),	--�Ű���� �̸���
COMMENT_NO INT,		   --��۹�ȣ

CONSTRAINT fk_REP_COMMENT_EMAIL FOREIGN KEY (REP_COMMENT_EMAIL)
REFERENCES customer_info(user_email),
CONSTRAINT fk_REP_COMMENT_EMAIL_LET FOREIGN KEY (REP_COMMENT_EMAIL_LET)
REFERENCES customer_info(user_email),
CONSTRAINT fk_REPORT_COMMENT_COMMENT_NO FOREIGN KEY (COMMENT_NO)
REFERENCES comment_list(comment_no)
);


-- ��� �Ű� ������
CREATE SEQUENCE REPORT_REVIEW_seq;

-- �ֹ� ���̺�

CREATE TABLE ORDER_LIST (
    order_no varchar2(30), -- �ֹ���ȣ
    user_email varchar2(50), -- �ֹ���
    payment_method varchar2(30), -- �������
    delivery_fee int, -- ��ۺ�
    delivery_place varchar2(200), -- �����
    delivery_Requirements varchar2(50), -- ��� �䱸����
    payment_date date, -- ������¥
    delivery_info varchar2(50), -- ��ۻ�Ȳ
    tracking_number varchar2(30), -- �����ȣ
    
    CONSTRAINT pk_order_list PRIMARY KEY(order_no),
    CONSTRAINT fk_order_list_user_email FOREIGN KEY(user_email) REFERENCES customer_info(user_email)
);

-- �ֹ� ���̺� ������
CREATE sequence ORDER_List_seq;

-- �ֹ� ��ǰ ���̺�

CREATE TABLE order_ITEMS (
    order_item_no varchar2(30), -- �ֹ���ǰ ��ȣ
    order_no varchar2(30), -- �ֹ� ��ȣ
    product_no char(13), -- ��ǰ ��ȣ
    order_cnt int, -- ��ǰ ����
    total_price int, -- �Ѱ���
    discount_price int, -- ���ε� ����
    
    CONSTRAINT pk_order_items PRIMARY KEY(order_item_no),
    CONSTRAINT fk_order_items_order_no FOREIGN KEY(order_no) REFERENCES order_list(order_no),
    CONSTRAINT fk_order_items_product_no FOREIGN KEY(product_no) REFERENCES product_list(product_no)
);

-- �ֹ� ��ǰ ������
CREATE SEQUENCE order_items_seq;

-- �������� ���̺�
CREATE TABLE coupon_info(
	coupon_info_id varchar2(50), -- ���� ���̵�
	coupon_desc varchar2(100), -- ���� ����
	coupon_discount_price INT, -- ���� ���� ����
	product_no char(13), -- ���� ��ǰ ��ȣ
	coupon_date date, -- ���� ��ȿ�Ⱓ
	CONSTRAINT pk_coupon_info PRIMARY KEY(coupon_info_id),
	CONSTRAINT fk_coupon_info_product_no FOREIGN KEY(product_no) REFERENCES product_list(product_no)
);

-- ���� ���� ���̺� ������
CREATE SEQUENCE coupon_info_seq;

-- ���� ��� ���̺�

CREATE TABLE coupon_list (
	coupon_no varchar2(50), -- ���� �ø��� ��ȣ
	coupon_info_id varchar2(50), -- ���� ���� ��ȣ
	user_email varchar2(50), -- ���� ������

	CONSTRAINT pk_coupon_list PRIMARY KEY(coupon_no),
	CONSTRAINT fk_coupon_list_info FOREIGN KEY(coupon_info_id) REFERENCES coupon_info(coupon_info_id),
	CONSTRAINT fk_conpon_list_user FOREIGN KEY(user_email) REFERENCES customer_info(user_email)
);

-- ���� ��� ���̺� ������
CREATE SEQUENCE coupon_list_seq;


-- ������ ���� ���̺�
create table book_admin(
    admin_Id varchar2(20) PRIMARY KEY, -- ������ ���̵�
    admin_Pass varchar2(50) -- ������ ��й�ȣ
);



INSERT INTO book_admin(admin_Id,admin_Pass)VALUES('webook','admin');

ALTER TABLE coupon_list add order_no varchar2(30);

ALTER TABLE coupon_list ADD CONSTRAINT fk_coupon_list_order foreign KEY(order_no) references order_list(order_no);

-- delete cascade ������ ���� foreign key ���� �� ���Է�

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