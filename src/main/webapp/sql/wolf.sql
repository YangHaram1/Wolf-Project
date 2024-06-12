create table members(
    id varchar(20) primary key,
    pw varchar(128) not null,
    name varchar(20) not null,
    nickname varchar(50) not null,
    phone varchar(11) ,
    email varchar(100) not null,
    gender varchar(1) not null,
    birth varchar(6),
    grade number default 1,
    avatar varchar(500) default null,
    join_date timestamp default sysdate
);

create table grade(
    seq number primary key,
    name varchar(20) not null
);

create table board(
    seq number primary key,
    title varchar(100) not null,
    contents varchar(4000) not null,
    count number default 0,
    member_id varchar(20) not null,
    board_code number not null, 
    write_date timestamp default sysdate
);

create table board_list(
    seq number primary key,
    name varchar(20) not null
);

create table reply(
    seq number primary key,
    member_id varchar(20) not null,
    contents varchar(4000) not null,
    board_seq number not null,
    write_date timestamp default sysdate
);

create table reply_child(
    seq number primary key,
    member_id varchar(20) not null,
    contents varchar(4000) not null,
    reply_seq number not null,
    write_date timestamp default sysdate
);

create table game(
    seq number primary key,
    title varchar(50) not null,
    contents varchar(4000) not null,
    thumbnail varchar(500) not null
);

create table game_score(
    score number default 0,
    member_id varchar(20) not null,
    game_seq number not null
);

create table files(
    seq number primary key,
    oriname varchar(1000) not null,
    sysname varchar(1000) not null,
    board_seq number not null
);

create sequence board_seq
start with 1
increment by 1
nomaxvalue
nocache
;

create sequence reply_seq
start with 1
increment by 1
nomaxvalue
nocache
;

create sequence game_seq
start with 1
increment by 1
nomaxvalue
nocache
;

create sequence files_seq
start with 1
increment by 1
nomaxvalue
nocache;


-- members table dummy data
INSERT INTO members VALUES ('user001', 'password1', 'Alice', 'alice01', '01012345678', 'alice@example.com', 'F', '750101', 1, null, sysdate);
INSERT INTO members VALUES ('user002', 'password2', 'Bob', 'bobster', '01023456789', 'bob@example.com', 'M', '800202', 1, null, sysdate);
INSERT INTO members VALUES ('user003', 'password3', 'Charlie', 'charlie33', '01034567890', 'charlie@example.com', 'M', '850303', 1, null, sysdate);
INSERT INTO members VALUES ('user004', 'password4', 'Diana', 'didi', '01045678901', 'diana@example.com', 'F', '700404', 1, null, sysdate);
INSERT INTO members VALUES ('user005', 'password5', 'Edward', 'ed_ward', '01056789012', 'edward@example.com', 'M', '900505', 1, null, sysdate);
INSERT INTO members VALUES ('user006', 'password6', 'Fiona', 'fifi', '01067890123', 'fiona@example.com', 'F', '920606', 1, null, sysdate);
INSERT INTO members VALUES ('user007', 'password7', 'George', 'geo88', '01078901234', 'george@example.com', 'M', '940707', 1, null, sysdate);
INSERT INTO members VALUES ('user008', 'password8', 'Hannah', 'hannah_b', '01089012345', 'hannah@example.com', 'F', '980808', 1, null, sysdate);
INSERT INTO members VALUES ('user009', 'password9', 'Ian', 'ian_ian', '01090123456', 'ian@example.com', 'M', '850909', 1, null, sysdate);
INSERT INTO members VALUES ('user010', 'password10', 'Jill', 'jill_j', '01001234567', 'jill@example.com', 'F', '760910', 1, null, sysdate);
INSERT INTO members VALUES ('user011', 'password11', 'Kevin', 'kev', '01012345067', 'kevin@example.com', 'M', '820101', 1, null, sysdate);
INSERT INTO members VALUES ('user012', 'password12', 'Laura', 'laura_l', '01023456078', 'laura@example.com', 'F', '000202', 1, null, sysdate);
INSERT INTO members VALUES ('user013', 'password13', 'Mike', 'mike_m', '01034567089', 'mike@example.com', 'M', '050303', 1, null, sysdate);
INSERT INTO members VALUES ('user014', 'password14', 'Nina', 'nina_n', '01045678090', 'nina@example.com', 'F', '880404', 1, null, sysdate);
INSERT INTO members VALUES ('user015', 'password15', 'Oscar', 'oscar_o', '01056789001', 'oscar@example.com', 'M', '930505', 1, null, sysdate);
INSERT INTO members VALUES ('user016', 'password16', 'Paul', 'paul_p', '01067890012', 'paul@example.com', 'M', '920606', 1, null, sysdate);
INSERT INTO members VALUES ('user017', 'password17', 'Quinn', 'quinn_q', '01078900123', 'quinn@example.com', 'F', '970707', 1, null, sysdate);
INSERT INTO members VALUES ('user018', 'password18', 'Rachel', 'rachel_r', '01089001234', 'rachel@example.com', 'F', '990808', 1, null, sysdate);
INSERT INTO members VALUES ('user019', 'password19', 'Steve', 'steve_s', '01090102345', 'steve@example.com', 'M', '860909', 1, null, sysdate);
INSERT INTO members VALUES ('user020', 'password20', 'Tina', 'tina_t', '01001203456', 'tina@example.com', 'F', '010101', 1, null, sysdate);

-- grade table data
INSERT INTO grade (seq, name) VALUES (1, '일반회원');
INSERT INTO grade (seq, name) VALUES (2, '휴면계정');
INSERT INTO grade (seq, name) VALUES (98, '서브관리자');
INSERT INTO grade (seq, name) VALUES (99, '메인관리자');

-- board table dummy data
INSERT INTO board VALUES (board_seq.nextval, '첫 번째 글', '첫 번째 글 내용입니다.', 0, 'user001', 1, sysdate);
INSERT INTO board VALUES (board_seq.nextval, '두 번째 글', '두 번째 글 내용입니다.', 0, 'user002', 1, sysdate);
INSERT INTO board VALUES (board_seq.nextval, '세 번째 글', '세 번째 글 내용입니다.', 0, 'user003', 2, sysdate);
INSERT INTO board VALUES (board_seq.nextval, '네 번째 글', '네 번째 글 내용입니다.', 0, 'user004', 2, sysdate);
INSERT INTO board VALUES (board_seq.nextval, '다섯 번째 글', '다섯 번째 글 내용입니다.', 0, 'user005', 1, sysdate);
INSERT INTO board VALUES (board_seq.nextval, '여섯 번째 글', '여섯 번째 글 내용입니다.', 0, 'user006', 1, sysdate);
INSERT INTO board VALUES (board_seq.nextval, '일곱 번째 글', '일곱 번째 글 내용입니다.', 0, 'user007', 2, sysdate);
INSERT INTO board VALUES (board_seq.nextval, '여덟 번째 글', '여덟 번째 글 내용입니다.', 0, 'user008', 2, sysdate);
INSERT INTO board VALUES (board_seq.nextval, '아홉 번째 글', '아홉 번째 글 내용입니다.', 0, 'user009', 1, sysdate);
INSERT INTO board VALUES (board_seq.nextval, '열 번째 글', '열 번째 글 내용입니다.', 0, 'user010', 1, sysdate);

-- board_list table dummy data
INSERT INTO board_list VALUES (1, '자유게시판');
INSERT INTO board_list VALUES (2, '공지게시판');
INSERT INTO board_list VALUES (3, '문의게시판');
INSERT INTO board_list VALUES (4, 'FAQ');

-- reply table dummy data
INSERT INTO reply VALUES(reply_seq.nextval, 'user001', '첫 번째 댓글입니다.', 1,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user002', '두 번째 댓글입니다.', 1,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user003', '세 번째 댓글입니다.', 2,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user004', '네 번째 댓글입니다.', 2,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user005', '다섯 번째 댓글입니다.', 3,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user006', '여섯 번째 댓글입니다.', 3,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user007', '일곱 번째 댓글입니다.', 4,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user008', '여덟 번째 댓글입니다.', 4,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user009', '아홉 번째 댓글입니다.', 5,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user010', '열 번째 댓글입니다.', 5,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user011', '열한 번째 댓글입니다.', 6,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user012', '열두 번째 댓글입니다.', 6,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user013', '열세 번째 댓글입니다.', 7,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user014', '열네 번째 댓글입니다.', 7,sysdate);
INSERT INTO reply VALUES(reply_seq.nextval, 'user015', '열다섯 번째 댓글입니다.', 8,sysdate);

-- reply_child table dummy data
INSERT INTO reply_child VALUES(1, 'user001', '첫 번째 댓글의 답글입니다.', 1,sysdate);
INSERT INTO reply_child VALUES(2, 'user002', '두 번째 댓글의 답글입니다.', 1,sysdate);
INSERT INTO reply_child VALUES(3, 'user003', '세 번째 댓글의 답글입니다.', 2,sysdate);
INSERT INTO reply_child VALUES(4, 'user004', '네 번째 댓글의 답글입니다.', 2,sysdate);
INSERT INTO reply_child VALUES(5, 'user005', '다섯 번째 댓글의 답글입니다.', 3,sysdate);
INSERT INTO reply_child VALUES(6, 'user006', '여섯 번째 댓글의 답글입니다.', 3,sysdate);
INSERT INTO reply_child VALUES(7, 'user007', '일곱 번째 댓글의 답글입니다.', 4,sysdate);
INSERT INTO reply_child VALUES(8, 'user008', '여덟 번째 댓글의 답글입니다.', 4,sysdate);
INSERT INTO reply_child VALUES(9, 'user009', '아홉 번째 댓글의 답글입니다.', 5,sysdate);
INSERT INTO reply_child VALUES(10, 'user010', '열 번째 댓글의 답글입니다.', 5,sysdate);
INSERT INTO reply_child VALUES(11, 'user011', '열한 번째 댓글의 답글입니다.', 6,sysdate);
INSERT INTO reply_child VALUES(12, 'user012', '열두 번째 댓글의 답글입니다.', 6,sysdate);
INSERT INTO reply_child VALUES(13, 'user013', '열세 번째 댓글의 답글입니다.', 7,sysdate);
INSERT INTO reply_child VALUES(14, 'user014', '열네 번째 댓글의 답글입니다.', 7,sysdate);
INSERT INTO reply_child VALUES(15, 'user015', '열다섯 번째 댓글의 답글입니다.', 8,sysdate);

-- game table dummy data
INSERT INTO game VALUES(game_seq.nextval, '게임1', '게임1에 대한 내용입니다.', 'thumbnail1.jpg');
INSERT INTO game VALUES(game_seq.nextval, '게임2', '게임2에 대한 내용입니다.', 'thumbnail2.jpg');
INSERT INTO game VALUES(game_seq.nextval, '게임3', '게임3에 대한 내용입니다.', 'thumbnail3.jpg');
INSERT INTO game VALUES(game_seq.nextval, '게임4', '게임4에 대한 내용입니다.', 'thumbnail4.jpg');
INSERT INTO game VALUES(game_seq.nextval, '게임5', '게임5에 대한 내용입니다.', 'thumbnail5.jpg');

-- game_score table dummy data
INSERT INTO game_score VALUES(95, 'user001', 1);
INSERT INTO game_score VALUES(80, 'user002', 1);
INSERT INTO game_score VALUES(110, 'user003', 2); 
INSERT INTO game_score VALUES(75, 'user004', 3);
INSERT INTO game_score VALUES(105, 'user005', 4);
INSERT INTO game_score VALUES(115, 'user006', 5);
INSERT INTO game_score VALUES(125, 'user007', 1);
INSERT INTO game_score VALUES(135, 'user008', 2);
INSERT INTO game_score VALUES(145, 'user009', 3);
INSERT INTO game_score VALUES(155, 'user010', 5);
INSERT INTO game_score VALUES(165, 'user011', 4);

-- files table dummy data
INSERT INTO files VALUES (files_seq.nextval, 'image1.jpg', 'sys_image1.jpg', 1);
INSERT INTO files VALUES (files_seq.nextval, 'image2.jpg', 'sys_image2.jpg', 2);
INSERT INTO files VALUES (files_seq.nextval, 'image3.jpg', 'sys_image3.jpg', 3);
INSERT INTO files VALUES (files_seq.nextval, 'image4.jpg', 'sys_image4.jpg', 4);
INSERT INTO files VALUES (files_seq.nextval, 'image5.jpg', 'sys_image5.jpg', 5);
INSERT INTO files VALUES (files_seq.nextval, 'image6.jpg', 'sys_image6.jpg', 6);
INSERT INTO files VALUES (files_seq.nextval, 'image7.jpg', 'sys_image7.jpg', 7);
INSERT INTO files VALUES (files_seq.nextval, 'image8.jpg', 'sys_image8.jpg', 8);
INSERT INTO files VALUES (files_seq.nextval, 'image9.jpg', 'sys_image9.jpg', 9);
INSERT INTO files VALUES (files_seq.nextval, 'image10.jpg', 'sys_image10.jpg', 10);

COMMIT;