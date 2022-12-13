CREATE TABLE members
(
    `mem_id`        VARCHAR(20)    NOT NULL    COMMENT '회원 아이디', 
    `mem_pw`        VARCHAR(20)    NOT NULL    COMMENT '회원 비밀번호', 
    `mem_name`      VARCHAR(30)    NOT NULL    COMMENT '회원 이름', 
    `mem_email`     VARCHAR(60)    NOT NULL    COMMENT '회원 이메일', 
    `mem_joindate`  DATETIME       NOT NULL    COMMENT '회원 가입일자', 
     PRIMARY KEY (mem_id)
);

CREATE TABLE lectures
(
    `lec_id`       VARCHAR(30)     NOT NULL    COMMENT '강의 아이디', 
    `lec_grammar`  VARCHAR(20)     NOT NULL    COMMENT '강의 문법', 
    `lec_lang`     VARCHAR(20)     NOT NULL    COMMENT '강의 언어', 
    `lec_thumb`    VARCHAR(400)    NOT NULL    COMMENT '강의 썸네일', 
    `lec_script`   TEXT            NOT NULL    COMMENT '강의 스크립트', 
    `lec_summ`     VARCHAR(400)    NOT NULL    COMMENT '강의 요약문', 
    `lec_url`      TEXT            NOT NULL    COMMENT '강의 주소', 
     PRIMARY KEY (lec_id)
);

CREATE TABLE favorites
(
    `bmk_seq`  INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '즐겨찾기 시퀀스', 
    `mem_id`   VARCHAR(20)     NOT NULL    COMMENT '회원 아이디', 
    `lec_id`   VARCHAR(30)     NOT NULL    COMMENT '강의 아이디', 
     PRIMARY KEY (bmk_seq)
);

ALTER TABLE favorites
    ADD CONSTRAINT FK_favorites_mem_id_members_me FOREIGN KEY (mem_id)
        REFERENCES members (mem_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE favorites
    ADD CONSTRAINT FK_favorites_lec_id_lectures_l FOREIGN KEY (lec_id)
        REFERENCES lectures (lec_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
        
select * from favorites
select * from members
select * from toor.lectures
select * from toor.lectures where lec_lang = 'Python'
select * from toor.members 
