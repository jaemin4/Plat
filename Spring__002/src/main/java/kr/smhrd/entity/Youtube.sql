CREATE TABLE members
(
    `mem_id`        VARCHAR(20)    NOT NULL    COMMENT '회원 아이디', 
    `mem_pw`        VARCHAR(20)    NOT NULL    COMMENT '회원 비밀번호', 
    `mem_name`      VARCHAR(30)    NOT NULL    COMMENT '회원 이름', 
    `mem_email`     VARCHAR(60)    NOT NULL    COMMENT '회원 이메일', 
    `mem_joindate`  DATETIME       NOT NULL    COMMENT '회원 가입일자', 
     PRIMARY KEY (mem_id)
);

ALTER TABLE members COMMENT '회원';

-- lectures Table Create SQL
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

ALTER TABLE lectures COMMENT '강의';

-- favorites Table Create SQL
CREATE TABLE favorites
(
    `bmk_seq`  INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '즐겨찾기 시퀀스', 
    `mem_id`   VARCHAR(20)     NOT NULL    COMMENT '회원 아이디', 
    `lec_id`   VARCHAR(30)     NOT NULL    COMMENT '강의 아이디', 
     PRIMARY KEY (bmk_seq)
);

ALTER TABLE favorites COMMENT '즐겨찾기';

ALTER TABLE favorites
    ADD CONSTRAINT FK_favorites_mem_id_members_me FOREIGN KEY (mem_id)
        REFERENCES members (mem_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE favorites
    ADD CONSTRAINT FK_favorites_lec_id_lectures_l FOREIGN KEY (lec_id)
        REFERENCES lectures (lec_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
        
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

insert into lectures values("uecZdRyiFNA","Python","반복문",
							" https://i.ytimg.com/vi/uecZdRyiFNA/sddefault.jpg",
							"채우 시간에 선생님이 학생들이 몸을 풀기 위해서 팔 벌려 뜨기를 시켰습니다 그런데 8번을 뜨기로 할 때마다 8월 어떻게 해 8발 되게 해 800을 쪽이 해 라고 계속 이야기  
하지 않죠 보통 800 저 10회 시작 이렇게 합니다 그럼 학생들은 돈이란 팔 벌려 뛰기 동작을 반복해서 10번 하게 되는 거죠 프로그램 도 마찬가지입니다 프린터를 이용해서 문장 하는 찍
어 볼게요 똑같은 문장을 10번 출력하려면 복사 붙여 넣기로 10번 하면 되겠죠 그런데 열 번이 아니라 1000번 출력을 하려면 그냥 복부 가지고는 안 될 것 같습니다 이때 필요한 것이 방
법 문입니다 반복 물에도 여러 종류가 있는데 가장 기본적인 폼으로 먼저 배워 볼게요 사용 문법은 이런데요 포 변수인 반복 범위 또는 대상을 줬고 콜론 한 뒤에 다음 줄에 들여쓰기를 
하고 나서 반복 수행 을 문장들을 잡으면 됩니다 예를 들어 볼게요 4 코엑스 일에 인장 수령해서 10 을 넣은 뒤에 콜론 을 졌구요 그 다음주에 프린트 8 벌 저 해를 졌습니다 이때 레인 
지 10 은 총 10번을 반복하는 의미로 사용된 거라서 이 문장은 오른쪽에 있는 문장과 100% 동일합니다 방법 문 포 를 이용해서 딱 2주일 만에 같은 출력할 가로 만들어 낸 거죠 문장을  
조금 바꿔 볼게요 여기서 제가 x 라고 적은 부분을 프린트 모드에서 써 볼 건데요 x 는 레인지 10 을 통해서 반복할 때마다 값이 바뀝니다 실행을 해보면 x 같은 이렇게 0부터 9까지 *  
하는거 알 수 있는데요 렌즈나 어떤 범위 내에 숫자들을 만들어 주는 기능을 합니다 그래서 만약에 레인지 쉽을 하게 되면 0 이상 십 리 만 즉 0부터 9까지의 숫자 들을 맞는다고 보시면
 되구요 ox 인 레인지 씹을 하게 되면 0부터 9까지의 숫자 들을 순서대로 x 의 하나씩 넣는다고 이해하시면 됩니다 참고로 이때 x 는 그냥 제가 지어준 이름 이구요 일반 변수 처럼 여러
분들이 원하는 이름으로 자유롭게 사용하실 수 있습니다",
								"x","https://youtu.be/uecZdRyiFNA"
							
							)

        
select * from lectures