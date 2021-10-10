DROP TABLE POINT_TABLE;
DROP TABLE AD_TABLE;
DROP TABLE FEEDBACK_TABLE;
DROP SEQUENCE POINT_TABLE_SEQ;
DROP SEQUENCE ORDER_TABLE_SEQ;
DROP SEQUENCE USER_TABLE_SEQ;
Drop SEQUENCE BOOKING_FIXED_TABLE_SEQ;
DROP SEQUENCE REST_SEAT_COORDINATE_SEQ;
Drop SEQUENCE AD_TABLE_SEQ;
DROP SEQUENCE REST_TABLE_SEQ;
DROP TABLE USER_TABLE;
DROP TABLE ORDER_TABLE;
DROP TABLE BOOKING_ING_TABLE;
DROP TABLE BOOKING_FIXED_TABLE;
DROP TABLE REST_SEAT_COORDINATE_TABLE;
DROP TABLE REST_TABLE;
DROP TABLE COMPY_TABLE;
DROP TABLE GUEST_TABLE;
COMMIT;
/*--------------------------------------------*/
CREATE SEQUENCE USER_TABLE_SEQ     --UR
     minvalue 1 --最小值
     INCREMENT BY 1    --遞增1
     START WITH 101  --從10001開始
     NOMAXvalue        --無最大值
     NOCYCLE           --不迴圈
     CACHE 100;        --快取100個序列號
COMMIT;
/*-------------------------------------------------*/
CREATE SEQUENCE REST_TABLE_SEQ     --RS
     minvalue 1 --最小值
     INCREMENT BY 1    --遞增1
     START WITH 10001  --從10001開始
     NOMAXvalue        --無最大值
     NOCYCLE           --不迴圈
     CACHE 100;        --快取100個序列號
COMMIT;
/*----------------------------------------------*/
CREATE SEQUENCE AD_TABLE_SEQ      --AD
     minvalue 1 --最小值
     INCREMENT BY 1    --遞增1
     START WITH 101  --從101開始
     NOMAXvalue        --無最大值
     NOCYCLE           --不迴圈
     CACHE 100;        --快取100個序列號
COMMIT;
/*-----------------------------------------------*/
CREATE SEQUENCE REST_SEAT_COORDINATE_SEQ      --RSCOD
     minvalue 1 --最小值
     INCREMENT BY 1    --遞增1
     START WITH 1001  --從10001開始
     NOMAXvalue        --無最大值
     NOCYCLE           --不迴圈
     CACHE 100;        --快取100個序列號
COMMIT;
/*---------------------------------------------------*/
CREATE SEQUENCE BOOKING_FIXED_TABLE_SEQ      --RSFIX
     minvalue 1 --最小值
     INCREMENT BY 1    --遞增1
     START WITH 1001  --從10001開始
     NOMAXvalue        --無最大值
     NOCYCLE           --不迴圈
     CACHE 100;        --快取100個序列號
COMMIT;
/*-------------------------------------------------*/
CREATE SEQUENCE ORDER_TABLE_SEQ             --OD
     minvalue 1 --最小值
     INCREMENT BY 1    --遞增1
     START WITH 101  --從10001開始
     NOMAXvalue        --無最大值
     NOCYCLE           --不迴圈
     CACHE 100;        --快取100個序列號
COMMIT;
/*-------------------------------------------------*/
CREATE SEQUENCE POINT_TABLE_SEQ           --PT
     minvalue 1 --最小值
     INCREMENT BY 1    --遞增1
     START WITH 200  --從2000001開始
     NOMAXvalue        --無最大值
     NOCYCLE           --不迴圈
     CACHE 100;        --快取100個序列號
COMMIT;
/*----------------------1111111111-----------------------------*/

CREATE TABLE USER_TABLE(
USER_ID         VARCHAR(20)PRIMARY KEY NOT NULL,
USER_ACCOUNT    VARCHAR(20) NOT NULL,
USER_PASSWORD   VARCHAR(20) NOT NULL,
USER_JOB        VARCHAR(20)NOT NULL,
USER_DEPART     VARCHAR(20) NOT NULL, 
AUTHORITY       NUMBER(10) DEFAULT 1
)TABLESPACE USERS;
INSERT INTO USER_TABLE VALUES('UR' || lpad(USER_TABLE_SEQ.Nextval,5,'0'),'MORRY','M123456','經理','平台管理部',1);
INSERT INTO USER_TABLE VALUES('UR' || lpad(USER_TABLE_SEQ.Nextval,5,'0'),'EMILY','E123456','協理','平台管理部',1);
INSERT INTO USER_TABLE VALUES('UR' || lpad(USER_TABLE_SEQ.Nextval,5,'0'),'ZORRY','Z123456','組長','業者管理部',0);
INSERT INTO USER_TABLE VALUES('UR' || lpad(USER_TABLE_SEQ.Nextval,5,'0'),'YORRY','Y123456','經理','廣告管理部',1);
INSERT INTO USER_TABLE VALUES('UR' || lpad(USER_TABLE_SEQ.Nextval,5,'0'),'DORRY','D123456','組長','會員管理部',0);
INSERT INTO USER_TABLE VALUES('UR' || lpad(USER_TABLE_SEQ.Nextval,5,'0'),'FRANK','F123456','組長','廣告管理部',0);
INSERT INTO USER_TABLE VALUES('UR' || lpad(USER_TABLE_SEQ.Nextval,5,'0'),'POLLY','P123456','組員','訂單管理部',0);
INSERT INTO USER_TABLE VALUES('UR' || lpad(USER_TABLE_SEQ.Nextval,5,'0'),'JASON','J123456','組長','評論管理部',0);
INSERT INTO USER_TABLE VALUES('UR' || lpad(USER_TABLE_SEQ.Nextval,5,'0'),'HENRY','H123456','組員','訂單管理部',0);
INSERT INTO USER_TABLE VALUES('UR' || lpad(USER_TABLE_SEQ.Nextval,5,'0'),'BELLY','B123456','組員','會員管理部',0);
INSERT INTO USER_TABLE VALUES('UR' || lpad(USER_TABLE_SEQ.Nextval,5,'0'),'SALLY','S123456','經理','業者管理部',1);
INSERT INTO USER_TABLE VALUES('UR' || lpad(USER_TABLE_SEQ.Nextval,5,'0'),'TOLLY','T123456','組員','評論管理部',0);

COMMIT;

/*----------------------22222222222-----------------------------*/

CREATE TABLE GUEST_TABLE (
GS_EMAIL           VARCHAR2(50) NOT NULL,
GS_PWD             VARCHAR2(20),
GS_NAME            VARCHAR2(20),
GS_BIRTH            DATE,
GS_SEX		   NUMBER(1),
GS_PHONE	   VARCHAR2(20),
GS_ADDRESS     	   VARCHAR2(200),
GS_CREDIT	   VARCHAR2(100),
GS_REG_TIME	   DATE,
GS_BIG_PIC	   BLOB,
AUTHORITY	   NUMBER(1) default 3,
CONSTRAINT GUEST_TABLE_GS_EMAIL_PK PRIMARY KEY(GS_EMAIL));

INSERT INTO GUEST_TABLE VALUES ('Alpha@gmail.com','11111111','Alpha',( to_date ( '01-01' , 'MM-DD' )),1,'0936123111','台北市中山區','1111 1111 1111 1111',( to_date ( '11-27' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES('Beta@gmail.com','22222','Beta',( to_date ( '02-02' , 'MM-DD' )),0,'0936123222','台北市內湖區','2222 2222 2222 2222',( to_date ( '11-28' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES ('Charlie@gmail.com','3333333','Charlie',( to_date ( '03-03' , 'MM-DD' )),1,'0936123333','台北市大安區','3333 3333 3333 3333',( to_date ( '11-29' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES('Delta@gmail.com','4444444','Delta',( to_date ( '04-04' , 'MM-DD' )),0,'0936123444','台北市信義區','4444 4444 4444 4444',( to_date ( '11-30' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES('Echo@gmail.com','5555555','Echo',( to_date ( '05-05' , 'MM-DD' )),1,'0936123555','台北市士林區','5555 5555 5555 5555',( to_date ( '12-01' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES('Funny@gmail.com','6655666','Funny',( to_date ( '05-05' , 'MM-DD' )),0,'0936123666','台北市大同區','6666 6666 6666 6666',( to_date ( '12-11' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES('Gil@gmail.com','7777777','Gil',( to_date ( '05-05' , 'MM-DD' )),1,'0936123777','台北市士林區','7777 7777 7777 7777',( to_date ( '11-21' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES('Happy@gmail.com','8899888','Happy',( to_date ( '05-11' , 'MM-DD' )),1,'0936000777','台中市北屯區','8888 8888 8888 8888',( to_date ( '11-21' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES('Ivy@gmail.com','9999889','Ivy',( to_date ( '05-05' , 'MM-DD' )),0,'0937773777','高雄市三民區','9999 9999 9999 9999',( to_date ( '11-21' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES('James@gmail.com','1010100','James',( to_date ( '07-05' , 'MM-DD' )),1,'0936129997','台中市霧峰區','1010 1010 1010 1010',( to_date ( '10-21' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES('Kelly@gmail.com','11110','Kelly',( to_date ( '05-05' , 'MM-DD' )),0,'0936141777','台北市士林區','1212 1212 1212 1212',( to_date ( '11-21' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES('Leo@gmail.com','121212221','Leo',( to_date ( '01-05' , 'MM-DD' )),1,'0936144552','新北市板橋區','1313 1313 1313 1313',( to_date ( '08-11' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES('Neil@gmail.com','25252555','Neil',( to_date ( '08-05' , 'MM-DD' )),1,'0911123707','新北市蘆洲區','1414 1414 1414 1414',( to_date ( '08-27' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES('Mike@gmail.com','52052000','Mike',( to_date ( '02-15' , 'MM-DD' )),1,'0966123774','新北市土城區','1515 1515 1515 1515',( to_date ( '09-21' , 'MM-DD' )),null,3);
INSERT INTO GUEST_TABLE VALUES('Olly@gmail.com','456451116','Olly',( to_date ( '02-25' , 'MM-DD' )),1,'0938523770','台北市文山區','1616 1616 1616 1616',( to_date ( '10-27' , 'MM-DD' )),null,3);
COMMIT;

/*------------------------33333333333--------------------------------------*/

CREATE TABLE COMPY_TABLE(
CP_CONTACT_EMAIL         VARCHAR2(50) NOT NULL,
CP_PHONE                 VARCHAR2(20) NOT NULL,
CP_NAME                  VARCHAR2(50) NOT NULL,
CP_ID                    VARCHAR2(20) NOT NULL,
CP_ADDRESS               VARCHAR2(200) NOT NULL,
CP_BOSS                  VARCHAR2(20),
CP_CONTACT_MAN           VARCHAR2(20) NOT NULL,
CP_ACCOUNT               VARCHAR2(20) NOT NULL,
CP_PWD                   VARCHAR2(20) NOT NULL,
CP_BUSINESS              BLOB,
CP_LOGO                  BLOB,
CP_BIGPIC                BLOB,
CP_CREDIT                VARCHAR2(100),
CP_REG_TIME              DATE NOT NULL,
CP_UPDATE_TIME           DATE,
AUTHORITY                NUMBER(10) DEFAULT '2',
CONSTRAINT CP_CONTACT_EMAIL_PK PRIMARY KEY (CP_CONTACT_EMAIL));

INSERT INTO COMPY_TABLE VALUES('abc@gmail.com','0900123456','你好食品公司','12345678','台北市中正區','阿土伯','孫小美','111111','333333',null,null,null,'2222223427788819',( to_date ( '10-27' , 'MM-DD' )),( to_date ( '11-27' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('def@yahoo.com','0900123789','好吃到爆公司','55554321','台北市內湖區','金貝貝','錢夫人','111112','333334',null,null,null,'4444448781234551',( to_date ( '10-26' , 'MM-DD' )),( to_date ( '10-27' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('ggg@gmail.com','0900123720','定食你公司','44440002','台北市萬華區','織田信長','明智光秀','111113','333335',null,null,null,'5555244255425252',( to_date ( '09-26' , 'MM-DD' )),( to_date ( '09-27' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('ccc@gmail.com','0945678910','你棒棒棒公司','33378910','台北市信義區','豐臣秀吉','前田利家','111114','333336',null,null,null,'9999995667070235',( to_date ( '07-26' , 'MM-DD' )),( to_date ( '07-27' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('www@yahoo.com','0922555550','想食公司','22245456','台北市南港區','風魔小太郎','服部半藏','111115','333337',null,null,null,'5645213124135111',( to_date ( '04-26' , 'MM-DD' )),( to_date ( '04-27' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('zzz@yahoo.com','0922555999','吃滿睡滿公司','22245499','台北市松山區','皮卡邱','櫻櫻子','111116','333338',null,null,null,'5645213124135999',( to_date ( '05-26' , 'MM-DD' )),( to_date ( '05-27' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('yoyo@yahoo.com','0922555550','咖啡因公司','11145456','台北市南港區','劉德華','章子怡','111117','33335539',null,null,null,'5645000124135111',( to_date ( '11-26' , 'MM-DD' )),( to_date ( '11-27' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('lolo@yahoo.com','0929951150','幻想食客公司','22995456','台北市士林區','黎明天','馬影九','111118','33355340',null,null,null,'5645219994135119',( to_date ( '08-26' , 'MM-DD' )),( to_date ( '08-27' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('aaaaaq@yahoo.com','0922885511','不客氣公司','24444456','新北市蘆洲區','豐郎','齊天藏','111119','33355341',null,null,null,'5645295124525111',( to_date ( '03-26' , 'MM-DD' )),( to_date ( '03-27' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('iceice@yahoo.com','0978555512','冰怪客公司','22277477','新北市泰山區','陳啟程','應有藏','111120','33553342',null,null,null,'5645213188885165',( to_date ( '01-26' , 'MM-DD' )),( to_date ( '01-27' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('xyzzxx@yahoo.com','0992555999','1314公司','22245400','台北市松山區','柏情郎','星巴克','111121','33355343',null,null,null,'0000213124135999',( to_date ( '08-26' , 'MM-DD' )),( to_date ( '08-27' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('kukufood@yahoo.com','0902555515','烘焙蛋糕公司','10145456','台北市文山區','橋拜登','特郎普','111122','35533344',null,null,null,'4152400124137541',( to_date ( '10-20' , 'MM-DD' )),( to_date ( '10-21' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('tteztt@yahoo.com','0929955555','鳳梨酥很酥公司','20095456','台北市士林區','維尼熊','小田一郎','111123','33355345',null,null,null,'1236519994135199',( to_date ( '08-21' , 'MM-DD' )),( to_date ( '08-22' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('qooqq99@yahoo.com','0922885588','涼水公司','24145123','台中市大里區','政郎','金鄭正','111124','35533346',null,null,null,'8541395124523652',( to_date ( '08-21' , 'MM-DD' )),( to_date ( '08-22' , 'MM-DD' )),DEFAULT);
INSERT INTO COMPY_TABLE VALUES('bebeggo@yahoo.com','0988555599','薯條吃吃公司','01277456','台中市北屯區','陳依蒨','馬尚非','111125','33553347',null,null,null,'7859213188852841',( to_date ( '06-28' , 'MM-DD' )),( to_date ( '06-29' , 'MM-DD' )),DEFAULT);
COMMIT;

/*--------------------------44444444444--------------------------------------------*/

CREATE TABLE REST_TABLE(
RS_ID                VARCHAR2(100) NOT NULL,
CP_CONTACT_EMAIL     VARCHAR2(50) NOT NULL,
RS_NAME              VARCHAR2(50) NOT NULL,
RS_ADDRESS           VARCHAR2(200) NOT NULL,
RS_PHONE             VARCHAR2(20) NOT NULL,
RS_INTRO             VARCHAR2(500) NOT NULL,
RS_CHECK_YN          NUMBER,
RS_TYPE              VARCHAR2(20) NOT NULL,
RS_BIGPIC            BLOB,
RS_PIC               BLOB,
RS_VIEW1             BLOB,
RS_VIEW2             BLOB,
RS_VIEW3             BLOB,
RS_VIEW4             BLOB,
RS_VIEW5             BLOB,
RS_OPEN_TIME         VARCHAR2(20) NOT NULL,
RS_REG_DATE         DATE NOT NULL,
AUTHORITY            NUMBER DEFAULT '4',
CONSTRAINT REST_TABLE_RS_ID_PK PRIMARY KEY (RS_ID),
CONSTRAINT CP_CONTACT_EMAIL_FK FOREIGN KEY(CP_CONTACT_EMAIL) REFERENCES COMPY_TABLE(CP_CONTACT_EMAIL));

INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'abc@gmail.com','不能餓','桃園市八德區','0900123455','堅持要讓客人吃到最原始鮮美的肉，堅持不用組合肉，湯底也經過無數次的試吃、改進，才有了今日的成功，不只CP值高，店內的服務也非常好，讓人有種回家的感覺。各式肉類質感都非常好，湯頭也吃得出鮮甜，非常值得一試。',1,'日式',null,null,null,null,null,null,null,4,( to_date ( '19-09-05' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'def@yahoo.com','好吃吃定你','台北市中山區','0910123766','咖啡很好喝，堅持用最新鮮的牛奶，不管是哪種咖啡都是非常特別味道，非常棒',1,'泰式',null,null,null,null,null,null,null,4,( to_date ( '19-04-04' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'ggg@gmail.com','想不到那麼好吃','高雄市旗山區','0977123777','蒙古烤肉出於對蒙古草原的想像，經過主廚巧手翻炒出台北熟悉的味道，2008年開店的超高CP值的吃到飽，加上琳瑯滿目的自助bar選擇，用餐環境寬敞，更備有甜點供餐後享用，是非常推薦給愛吃肉的吃到飽餐廳選擇。',1,'台式',null,null,null,null,null,null,null,4,( to_date ( '19-03-03' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'ccc@gmail.com','好棒棒食堂','台北市北投區','0985678988','新鮮不只是吃在口裡，更是盡收眼底。每個月固定換菜比例高達30％，豐富口味，搭配十數種生鮮，帶你享受味蕾饗宴。',1,'韓式',null,null,null,null,null,null,null,4,( to_date ( '19-04-05' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'www@yahoo.com','想食歐洲風','基隆市仁愛區','0966555599','下午茶經典種類很多，讓消費者有多種選擇，來這裡絕對不會讓您失望',1,'西式',null,null,null,null,null,null,null,4,( to_date ( '19-01-01' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'lolo@yahoo.com','吃飽吃滿','新北市永和區','0910101099','熱炒很夠味真的超好吃，新鮮海鮮配上當季食蔬，最適合下班聚會的好所在',1,'台式',null,null,null,null,null,null,null,3,( to_date ( '20-01-01' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'yoyo@yahoo.com','南洋風味','新北市新店區','0905553599','吃到飽經典，北部第一家印度料理吃到飽，能不來嗎?!',1,'印度式',null,null,null,null,null,null,null,4,( to_date ( '20-10-11' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'aaaaaq@yahoo.com','放假吃吃吃','新北市蘆洲區','0991555774','減少使用素食加工品。以當令新鮮蔬果入菜，嚴選原料結合鮮製手作，超過百道多國料理，吃出各式食材自然風味，顛覆對蔬食的想像！',1,'台式',null,null,null,null,null,null,null,4,( to_date ( '20-07-01' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'iceice@yahoo.com','印度走走','新北市三重區','0901241019','阿三阿三印度阿三，不多解釋，原汁原味的印度料理，想體驗不同料理的消費者第一首選',1,'印度式',null,null,null,null,null,null,null,4,( to_date ( '20-11-01' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'iceice@yahoo.com','17喝酒','台中市霧峰區','0990582599','酒友必備，炸雞薯條酥脆，店內還提供飛鏢撞球供消費者免費體驗，是渡過漫漫長夜的最佳選擇',1,'美式',null,null,null,null,null,null,null,3,( to_date ( '19-10-01' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'www@yahoo.com','日式風情','高雄市三民區','0988544163','想吃最地道日本料理，來這邊就沒錯了，店內的日籍大廚絕對會為你提供色香味俱全的正統日式料理',1,'日式',null,null,null,null,null,null,null,4,( to_date ( '20-10-01' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'bebeggo@yahoo.com','薯條杯杯','台南市西南區','0909544161','店內提供數種薯條供消費者體驗，不再是單一無聊的薯條，同時也提供超級多的醬料，請大家一定要來嘗試',1,'美式',null,null,null,null,null,null,null,4,( to_date ( '20-08-08' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'kukufood@yahoo.com','甜蜜','高雄市鳳山區','0911123455','Its good food，喝壺熱茶，嚐嚐點心，享受輕鬆下午茶，是節奏繁忙的都市生活裡最悠美的一段光陰',1,'日式',null,null,null,null,null,null,null,4,( to_date ( '19-10-05' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'xyzzxx@yahoo.com','牛排就要這樣吃','台北市大安區','0901241019','牛排7分熟剛剛好，提供日本、澳洲、美國的高檔牛肉，特精選數十種部位，供每位顧客選擇',1,'西式',null,null,null,null,null,null,null,4,( to_date ( '20-10-01' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'iceice@yahoo.com','醉愛','新北市三峽區','0980582590','去過美國的人來的很有感覺，沒去的人更有感覺，你還不來嗎? 快點定位+訂位',1,'美式',null,null,null,null,null,null,null,3,( to_date ( '19-10-01' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'qooqq99@yahoo.com','韓情默默','台南市安平區','0966544164','泡菜有夠脆，不管是部隊鍋、春川辣雞還是辣炒年糕，都是百分百手工烹煮，絕不會讓您失望的美味，還不快定位',1,'韓式',null,null,null,null,null,null,null,4,( to_date ( '20-10-01' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'lolo@yahoo.com','吃蛋餅囉','台中市潭子區','0960544161','蛋餅好吃，竟然是泰式口味，沒體驗過的快點來，台泰的結合蹦出新滋味',1,'泰式',null,null,null,null,null,null,null,1,( to_date ( '20-08-08' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'kukufood@yahoo.com','印度都一樣','高雄市鳳山區','0910023451','好吃就是了，純印式料理，不管是拉茶還是甩餅都是印啦',1,'印度式',null,null,null,null,null,null,null,4,( to_date ( '19-10-05' , 'YY-MM-DD' )),DEFAULT);
INSERT INTO REST_TABLE VALUES('RS' || lpad(REST_TABLE_SEQ.Nextval,5,'0'),'iceice@yahoo.com','吃宵夜就是這','台北市信義區','0917723411','嚴選新鮮水產、牧產與野菜．最自然清爽的日本料理吃到飽！ 壽司、生魚片、海鮮、燒烤、天婦羅等100種經典和食；獨特日式風格獲國內媒體評比為「台北吃到飽餐廳第一名」',1,'日式',null,null,null,null,null,null,null,3,( to_date ( '19-12-30' , 'YY-MM-DD' )),DEFAULT);
COMMIT;

/*---------------------------------55555555555555555-----------------------------*/
CREATE TABLE AD_TABLE(
AD_SERIAL         VARCHAR2(100) NOT NULL,
AD_TOP_YN         NUMBER NOT NULL,
RS_ID             VARCHAR(100),
AD_PRICE          NUMBER NOT NULL,
AD_TOP_TIME1      NUMBER,
AD_TOP_TIME2      NUMBER,
AD_TOP_TIME3      NUMBER,
AD_TIME           DATE NOT NULL,
AD_SHOWTIME       DATE NOT NULL,
AD_CANCEL_TIME    DATE,
AD_STATUS         NUMBER,
AD_PIC_QUEUE      BLOB,
CONSTRAINT AD_SERIAL_PK PRIMARY KEY(AD_SERIAL),
CONSTRAINT RS_ID_FK FOREIGN KEY(RS_ID) REFERENCES REST_TABLE(RS_ID));

INSERT INTO AD_TABLE VALUES('AD' || lpad(AD_TABLE_SEQ.Nextval,5,'0'),1,'RS10001',3,1,1,1,TO_DATE('2020-07-25',('YYYY-MM-DD')),TO_DATE('2020-08-25',('YYYY-MM-DD')),NULL,1,NULL);
INSERT INTO AD_TABLE VALUES('AD' || lpad(AD_TABLE_SEQ.Nextval,5,'0'),1,'RS10002',2,1,1,0,TO_DATE('2020-07-26',('YYYY-MM-DD')),TO_DATE('2020-08-26',('YYYY-MM-DD')),NULL,1,NULL);
INSERT INTO AD_TABLE VALUES('AD' || lpad(AD_TABLE_SEQ.Nextval,5,'0'),1,'RS10003',2,0,1,1,TO_DATE('2020-08-26',('YYYY-MM-DD')),TO_DATE('2020-09-26',('YYYY-MM-DD')),NULL,1,NULL);
INSERT INTO AD_TABLE VALUES('AD' || lpad(AD_TABLE_SEQ.Nextval,5,'0'),1,'RS10004',2,1,1,0,TO_DATE('2020-09-24',('YYYY-MM-DD')),TO_DATE('2020-10-24',('YYYY-MM-DD')),NULL,1,NULL);
INSERT INTO AD_TABLE VALUES('AD' || lpad(AD_TABLE_SEQ.Nextval,5,'0'),1,'RS10005',2,1,1,0,TO_DATE('2020-11-26',('YYYY-MM-DD')),TO_DATE('2020-12-26',('YYYY-MM-DD')),NULL,1,NULL);
INSERT INTO AD_TABLE VALUES('AD' || lpad(AD_TABLE_SEQ.Nextval,5,'0'),1,'RS10010',2,1,1,0,TO_DATE('2020-11-26',('YYYY-MM-DD')),TO_DATE('2020-12-26',('YYYY-MM-DD')),NULL,1,NULL);
INSERT INTO AD_TABLE VALUES('AD' || lpad(AD_TABLE_SEQ.Nextval,5,'0'),1,'RS10011',3,1,1,1,TO_DATE('2020-12-12',('YYYY-MM-DD')),TO_DATE('2021-01-12',('YYYY-MM-DD')),NULL,1,NULL);
INSERT INTO AD_TABLE VALUES('AD' || lpad(AD_TABLE_SEQ.Nextval,5,'0'),1,'RS10013',2,1,1,0,TO_DATE('2020-12-20',('YYYY-MM-DD')),TO_DATE('2021-01-20',('YYYY-MM-DD')),NULL,1,NULL);
INSERT INTO AD_TABLE VALUES('AD' || lpad(AD_TABLE_SEQ.Nextval,5,'0'),1,'RS10015',1,0,1,0,TO_DATE('2020-12-26',('YYYY-MM-DD')),TO_DATE('2021-01-26',('YYYY-MM-DD')),NULL,1,NULL);
INSERT INTO AD_TABLE VALUES('AD' || lpad(AD_TABLE_SEQ.Nextval,5,'0'),1,'RS10008',2,1,1,0,TO_DATE('2020-12-30',('YYYY-MM-DD')),TO_DATE('2021-01-30',('YYYY-MM-DD')),NULL,1,NULL);

COMMIT;
/*------------------------------666666666666666666-------------------------------------------------*/
CREATE TABLE REST_SEAT_COORDINATE_TABLE(
RS_SEAT_SIERAL    VARCHAR2(100)NOT NULL,
RS_SEAT_XY        VARCHAR2(100)NOT NULL,
RS_SEAT_XY_TIME   DATE,
RS_ID             VARCHAR2(100),
CONSTRAINT RS_SEAT_SIERAL_PK PRIMARY KEY (RS_SEAT_SIERAL),
CONSTRAINT  REST_SEAT_COORDINATE_RS_ID_FK FOREIGN KEY(RS_ID) REFERENCES REST_TABLE(RS_ID));

INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'21,63',TO_DATE('2019-09-09','YYYY-MM-DD'),'RS10001');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'139,100',TO_DATE('2019-09-09','YYYY-MM-DD'),'RS10001');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'110,380',TO_DATE('2019-09-09','YYYY-MM-DD'),'RS10001');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'27,290',TO_DATE('2019-09-09','YYYY-MM-DD'),'RS10001');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'40,800',TO_DATE('2019-09-09','YYYY-MM-DD'),'RS10001');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'194,293',TO_DATE('2019-09-09','YYYY-MM-DD'),'RS10001');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'6,428',TO_DATE('2019-09-09','YYYY-MM-DD'),'RS10001');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'174,510',TO_DATE('2019-09-09','YYYY-MM-DD'),'RS10001');

INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'21,63',TO_DATE('2019-09-19','YYYY-MM-DD'),'RS10002');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'139,100',TO_DATE('2019-09-19','YYYY-MM-DD'),'RS10002');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'110,400',TO_DATE('2019-09-19','YYYY-MM-DD'),'RS10002');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'27,290',TO_DATE('2019-09-19','YYYY-MM-DD'),'RS10002');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'40,800',TO_DATE('2019-09-19','YYYY-MM-DD'),'RS10002');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'194,293',TO_DATE('2019-09-19','YYYY-MM-DD'),'RS10002');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'6,428',TO_DATE('2019-09-19','YYYY-MM-DD'),'RS10002');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'174,510',TO_DATE('2019-09-19','YYYY-MM-DD'),'RS10002');

INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'21,63',TO_DATE('2019-10-17','YYYY-MM-DD'),'RS10003');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'139,62',TO_DATE('2019-10-17','YYYY-MM-DD'),'RS10003');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'110,180',TO_DATE('2019-10-17','YYYY-MM-DD'),'RS10003');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'27,290',TO_DATE('2019-10-17','YYYY-MM-DD'),'RS10003');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'110,180',TO_DATE('2019-10-17','YYYY-MM-DD'),'RS10003');

INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'194,293',TO_DATE('2019-10-18','YYYY-MM-DD'),'RS10004');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'21,63',TO_DATE('2019-10-18','YYYY-MM-DD'),'RS10004');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'139,100',TO_DATE('2019-10-18','YYYY-MM-DD'),'RS10004');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'110,180',TO_DATE('2019-10-18','YYYY-MM-DD'),'RS10004');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'27,290',TO_DATE('2019-10-18','YYYY-MM-DD'),'RS10004');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'40,120',TO_DATE('2019-10-18','YYYY-MM-DD'),'RS10004');

INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'110,180',TO_DATE('2019-10-22','YYYY-MM-DD'),'RS10005');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'194,293',TO_DATE('2019-10-22','YYYY-MM-DD'),'RS10005');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'110,180',TO_DATE('2019-10-22','YYYY-MM-DD'),'RS10005');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'27,290',TO_DATE('2019-10-22','YYYY-MM-DD'),'RS10005');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'40,120',TO_DATE('2019-10-22','YYYY-MM-DD'),'RS10005');

INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'110,180',TO_DATE('2019-10-28','YYYY-MM-DD'),'RS10006');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'194,293',TO_DATE('2019-10-28','YYYY-MM-DD'),'RS10006');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'21,63',TO_DATE('2019-10-28','YYYY-MM-DD'),'RS10006');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'139,100',TO_DATE('2019-10-28','YYYY-MM-DD'),'RS10006');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'27,290',TO_DATE('2019-10-28','YYYY-MM-DD'),'RS10006');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'40,120',TO_DATE('2019-10-28','YYYY-MM-DD'),'RS10006');

INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'110,180',TO_DATE('2019-11-10','YYYY-MM-DD'),'RS10007');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'194,293',TO_DATE('2019-11-10','YYYY-MM-DD'),'RS10007');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'21,63',TO_DATE('2019-11-10','YYYY-MM-DD'),'RS10007');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'139,100',TO_DATE('2019-11-10','YYYY-MM-DD'),'RS10007');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'27,290',TO_DATE('2019-11-10','YYYY-MM-DD'),'RS10007');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'40,120',TO_DATE('2019-11-10','YYYY-MM-DD'),'RS10007');

INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'27,290',TO_DATE('2019-11-10','YYYY-MM-DD'),'RS10008');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'194,293',TO_DATE('2019-11-10','YYYY-MM-DD'),'RS10008');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'139,1000',TO_DATE('2019-11-10','YYYY-MM-DD'),'RS10008');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'139,62',TO_DATE('2019-11-10','YYYY-MM-DD'),'RS10008');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'21,63',TO_DATE('2019-11-10','YYYY-MM-DD'),'RS10008');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'110,180',TO_DATE('2019-11-15','YYYY-MM-DD'),'RS10008');

INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'110,180',TO_DATE('2019-11-15','YYYY-MM-DD'),'RS10009');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'27,290',TO_DATE('2019-11-15','YYYY-MM-DD'),'RS10009');
INSERT INTO REST_SEAT_COORDINATE_TABLE values ('RSCOD' || lpad(REST_SEAT_COORDINATE_SEQ.Nextval,6,'0'),'21,63',TO_DATE('2019-11-15','YYYY-MM-DD'),'RS10009');

COMMIT;

/*------------------------------77777777777777-----------------------------------------------*/
CREATE TABLE BOOKING_FIXED_TABLE (
RS_SIERAL 	     VARCHAR2(100) NOT NULL,
RS_TABLE_NUMBER      VARCHAR2(20) NOT NULL,
RS_TABLE_SEAT         NUMBER NOT NULL,
Rs_SEAT_sieral    VARCHAR2(100)NOT NULL,
PRIMARY KEY (RS_SIERAL),
CONSTRAINT BOOKING_FIXED_TABLE_FK FOREIGN KEY(Rs_SEAT_sieral) REFERENCES REST_SEAT_COORDINATE_TABLE(RS_SEAT_SIERAL)
);
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'1',4,'RSCOD001001');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'2',2,'RSCOD001002');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'3',2,'RSCOD001003');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'4',8,'RSCOD001004');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'5',4,'RSCOD001005');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'6',6,'RSCOD001006');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'7',2,'RSCOD001007');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'8',4,'RSCOD001008');

INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'1',6,'RSCOD001009');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'2',4,'RSCOD001010');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'3',2,'RSCOD001011');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'4',5,'RSCOD001012');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'5',6,'RSCOD001013');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'6',4,'RSCOD001014');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'7',2,'RSCOD001015');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'8',2,'RSCOD001016');

INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'1',4,'RSCOD001017');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'2',6,'RSCOD001018');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'3',4,'RSCOD001019');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'4',4,'RSCOD001020');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'5',10,'RSCOD001021');

INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'1',2,'RSCOD001022');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'2',4,'RSCOD001023');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'3',2,'RSCOD001024');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'4',4,'RSCOD001025');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'5',4,'RSCOD001026');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'6',2,'RSCOD001027');

INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'1',2,'RSCOD001028');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'2',8,'RSCOD001029');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'3',4,'RSCOD001030');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'4',6,'RSCOD001031');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'5',2,'RSCOD001032');

INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'1',4,'RSCOD001033');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'2',6,'RSCOD001034');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'3',4,'RSCOD001035');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'4',2,'RSCOD001036');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'5',5,'RSCOD001037');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'6',6,'RSCOD001038');

INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'1',4,'RSCOD001039');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'2',2,'RSCOD001040');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'3',2,'RSCOD001041');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'4',4,'RSCOD001042');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'5',6,'RSCOD001043');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'6',4,'RSCOD001044');

INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'1',4,'RSCOD001045');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'2',8,'RSCOD001046');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'3',2,'RSCOD001047');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'4',4,'RSCOD001048');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'5',2,'RSCOD001049');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'6',4,'RSCOD001050');

INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'1',4,'RSCOD001051');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'2',2,'RSCOD001052');
INSERT INTO BOOKING_FIXED_TABLE (RS_SIERAL,RS_TABLE_NUMBER,rs_table_seat,Rs_SEAT_sieral) values ('RSFIX' || lpad(BOOKING_FIXED_TABLE_SEQ.Nextval,5,'0'),'3',4,'RSCOD001053');
COMMIT;

/*-----------------------------9999999999999-------------------------------------*/


CREATE TABLE BOOKING_ING_TABLE (
ORDER_ID      VARCHAR2(100) NOT NULL,
RS_STATUS         NUMBER  NOT NULL,
RS_SIERAL       VARCHAR2(100) NOT NULL,
GS_SELECT_DATE    DATE,
GS_SELECT_TIME        VARCHAR2(20),
PRIMARY KEY (ORDER_ID),
CONSTRAINT FK_BOOKING_ING_TABLE FOREIGN KEY(RS_SIERAL) REFERENCES BOOKING_FIXED_TABLE(RS_SIERAL));


INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01001',TO_DATE('2019-09-17','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01002',TO_DATE('2019-09-18','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01003',TO_DATE('2019-09-19','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),0,'RSFIX01004',TO_DATE('2019-09-21','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),0,'RSFIX01005',TO_DATE('2019-09-27','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),0,'RSFIX01006',TO_DATE('2019-09-28','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01007',TO_DATE('2019-10-06','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),0,'RSFIX01008',TO_DATE('2019-10-10','YYYY-MM-DD'),'4');

INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),0,'RSFIX01009',TO_DATE('2019-10-11','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01010',TO_DATE('2019-10-15','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01011',TO_DATE('2019-10-16','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),0,'RSFIX01012',TO_DATE('2019-10-18','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01013',TO_DATE('2019-10-20','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),0,'RSFIX01014',TO_DATE('2019-10-21','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01015',TO_DATE('2019-10-23','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01016',TO_DATE('2019-10-25','YYYY-MM-DD'),'4');

INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),0,'RSFIX01017',TO_DATE('2019-10-26','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01018',TO_DATE('2019-11-15','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),0,'RSFIX01019',TO_DATE('2019-11-23','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01020',TO_DATE('2019-11-24','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01021',TO_DATE('2019-11-25','YYYY-MM-DD'),'4');

INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01022',TO_DATE('2019-11-27','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01023',TO_DATE('2020-11-28','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01024',TO_DATE('2020-11-30','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01025',TO_DATE('2020-12-02','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01026',TO_DATE('2019-12-07','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),0,'RSFIX01027',TO_DATE('2019-12-08','YYYY-MM-DD'),'4');

INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01028',TO_DATE('2019-12-12','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01029',TO_DATE('2019-12-16','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01030',TO_DATE('2019-12-17','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01031',TO_DATE('2019-12-20','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),0,'RSFIX01032',TO_DATE('2019-12-21','YYYY-MM-DD'),'4');

INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01033',TO_DATE('2019-12-22','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01034',TO_DATE('2019-12-23','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01035',TO_DATE('2019-12-24','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01036',TO_DATE('2019-12-25','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01037',TO_DATE('2019-12-25','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01038',TO_DATE('2019-12-25','YYYY-MM-DD'),'4');

INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01039',TO_DATE('2019-12-25','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01040',TO_DATE('2019-12-28','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01041',TO_DATE('2019-12-28','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01042',TO_DATE('2019-12-29','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01043',TO_DATE('2019-12-30','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01044',TO_DATE('2019-12-30','YYYY-MM-DD'),'4');

INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01045',TO_DATE('2019-12-31','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01046',TO_DATE('2019-12-31','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01047',TO_DATE('2019-12-31','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01048',TO_DATE('2020-12-31','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01049',TO_DATE('2020-01-01','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01050',TO_DATE('2020-01-01','YYYY-MM-DD'),'4');

INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01051',TO_DATE('2020-01-02','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01052',TO_DATE('2020-01-06','YYYY-MM-DD'),'4');
INSERT INTO BOOKING_ING_TABLE (ORDER_ID,RS_STATUS,RS_SIERAL,GS_SELECT_DATE,GS_SELECT_TIME) values ('OD' || lpad(ORDER_TABLE_SEQ.Nextval,5,'0'),1,'RSFIX01053',TO_DATE('2020-01-18','YYYY-MM-DD'),'4');

COMMIT;
/*-----------------10101010101010----------------------------*/
CREATE TABLE ORDER_TABLE (
/**/
ORDER_ID              VARCHAR2(100) NOT NULL,
RS_ID                 VARCHAR2(100) NOT NULL,
GS_EMAIL              VARCHAR2(50) NOT NULL,
ORDER_STATUS          NUMBER(1),
ORDER_TIME            DATE,
ORDER_CANCEL_TIME     DATE,
GS_ORDER_REMARK       VARCHAR2(200) NOT NULL,
GS_PEOPLE             NUMBER(4),
GS_SELECT_TIME        VARCHAR2(20),
ORDER_DEPOSIT         NUMBER(4,2),
ORDER_QRCODE          BLOB,
RS_TABLE_STATUS       NUMBER(1),
CONSTRAINT ORDER_TABLE_GS_EMAIL_FK FOREIGN KEY (GS_EMAIL) REFERENCES GUEST_TABLE (GS_EMAIL),
CONSTRAINT ORDER_TABLE_RS_ID_FK FOREIGN KEY(RS_ID) REFERENCES REST_TABLE(RS_ID),
CONSTRAINT ORDER_TABLE_ORDER_ID_PK PRIMARY KEY (ORDER_ID),
CONSTRAINT ORDER_TABLE_ORDER_ID_FK FOREIGN KEY(ORDER_ID)REFERENCES BOOKING_ING_TABLE(ORDER_ID));

INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00101','RS10001','Alpha@gmail.com',2,TO_DATE('2020-08-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'不要角落',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00102','RS10002','Beta@gmail.com',1,TO_DATE('2020-08-01 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'不要邊邊',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00103','RS10003','Charlie@gmail.com',1,TO_DATE('2020-08-15 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'請幫準備嬰兒椅',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00104','RS10004','Delta@gmail.com',0,TO_DATE('2020-09-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-09-01 09:12:30','YYYY-MM-DD HH24:MI:SS'),'想要靠窗',4,'1',4,null,0);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00105','RS10001','Echo@gmail.com',1,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'希望有蛋奶素',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00106','RS10001','Alpha@gmail.com',0,TO_DATE('2020-05-05 01:25:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'不要角落不要門口',4,'1',4,null,0);

INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00107','RS10001','Alpha@gmail.com',2,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'共有3大2小',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00108','RS10002','Beta@gmail.com',2,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'有長者希望不要靠走道',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00109','RS10003','Charlie@gmail.com',2,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'不要在出菜口',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00110','RS10002','Alpha@gmail.com',2,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'不要角落希望可以靠窗',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00111','RS10001','Echo@gmail.com',1,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'想要戶外吸菸區',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00112','RS10003','Beta@gmail.com',0,TO_DATE('2020-08-05 01:25:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'不要再門口附近的桌位',4,'1',4,null,0);

INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00113','RS10001','Alpha@gmail.com',1,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'要角落安靜',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00114','RS10001','Beta@gmail.com',1,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'想要有包廂的桌位',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00115','RS10003','Charlie@gmail.com',1,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'餐點都不要加辣',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00116','RS10002','Alpha@gmail.com',1,TO_DATE('2020-10-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'想詢問可以刷美運嗎',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00117','RS10002','Echo@gmail.com',1,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'請問有提供停車位嗎?',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00118','RS10001','Alpha@gmail.com',0,TO_DATE('2020-05-05 01:25:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'不要角落',4,'1',4,null,0);

INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00119','RS10001','Alpha@gmail.com',0,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'想要戶外吸菸區',4,'1',4,null,0);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00120','RS10007','Beta@gmail.com',0,TO_DATE('2020-08-05 01:25:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'不要再門口附近的桌位',4,'1',4,null,0);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00121','RS10008','Alpha@gmail.com',2,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'要角落安靜',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00122','RS10008','Happy@gmail.com',2,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'想要有包廂的桌位',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00123','RS10009','Kelly@gmail.com',2,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'餐點都不要加辣',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00124','RS1003','Alpha@gmail.com',2,TO_DATE('2020-10-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'想詢問可以刷美運嗎',4,'1',4,null,1);
INSERT INTO ORDER_TABLE(ORDER_ID,RS_ID,GS_EMAIL,ORDER_STATUS,ORDER_TIME,ORDER_CANCEL_TIME,GS_ORDER_REMARK,GS_PEOPLE,GS_SELECT_TIME,ORDER_DEPOSIT,ORDER_QRCODE,RS_TABLE_STATUS
)VALUES('OD00125','RS10001','Echo@gmail.com',2,TO_DATE('2020-05-05 01:22:30 ','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2020-08-10 09:12:30','YYYY-MM-DD HH24:MI:SS'),'請問有提供停車位嗎?',4,'1',4,null,0);
COMMIT;
/*-----------------------------------------------------------*/

CREATE TABLE FEEDBACK_TABLE(
ORDER_ID VARCHAR2(20) NOT NULL,
RS_ID VARCHAR2(100) NOT NULL,
COMMON VARCHAR(200) NOT NULL,
COMMON_TIME DATE NOT NULL,
PUSH_YN NUMBER NOT NULL,
ORDER_STAR NUMBER NOT NULL,
COMMON_CANCEL_TIME DATE,
COMMON_STATUS NUMBER,
CONSTRAINT FEEDBACK_TABLE_ORDER_ID_FK FOREIGN KEY(ORDER_ID) REFERENCES ORDER_TABLE(ORDER_ID),
CONSTRAINT FEEDBACK_TABLE_RS_ID_FK FOREIGN KEY(RS_ID) REFERENCES REST_TABLE(RS_ID),
CONSTRAINT FEEDBACK_TABLE_PK PRIMARY KEY(ORDER_ID,RS_ID)
);
INSERT INTO FEEDBACK_TABLE(ORDER_ID,RS_ID,COMMON,COMMON_TIME,PUSH_YN,ORDER_STAR,COMMON_CANCEL_TIME,COMMON_STATUS)
VALUES('OD00101','RS10001','GOOD',TO_DATE('2020-11-27',('YYYY-MM-DD')),1,1,NULL,0);
INSERT INTO FEEDBACK_TABLE(ORDER_ID,RS_ID,COMMON,COMMON_TIME,PUSH_YN,ORDER_STAR,COMMON_CANCEL_TIME,COMMON_STATUS)
VALUES('OD00102','RS10002','GOOD',TO_DATE('2020-11-28',('YYYY-MM-DD')),1,2,NULL,0);
INSERT INTO FEEDBACK_TABLE(ORDER_ID,RS_ID,COMMON,COMMON_TIME,PUSH_YN,ORDER_STAR,COMMON_CANCEL_TIME,COMMON_STATUS)
VALUES('OD00103','RS10003','GOOD',TO_DATE('2020-11-29',('YYYY-MM-DD')),1,3,NULL,0);
INSERT INTO FEEDBACK_TABLE(ORDER_ID,RS_ID,COMMON,COMMON_TIME,PUSH_YN,ORDER_STAR,COMMON_CANCEL_TIME,COMMON_STATUS)
VALUES('OD00104','RS10004','bad',TO_DATE('2020-11-30',('YYYY-MM-DD')),0,4,NULL,0);
INSERT INTO FEEDBACK_TABLE(ORDER_ID,RS_ID,COMMON,COMMON_TIME,PUSH_YN,ORDER_STAR,COMMON_CANCEL_TIME,COMMON_STATUS)
VALUES('OD00105','RS10005','bad',TO_DATE('2020-12-01',('YYYY-MM-DD')),0,5,NULL,0);
COMMIT;

/*----------------------11.11.11.11.11.11.11.11.11---------------------*/
CREATE TABLE POINT_TABLE(
POINT_SIERAL       VARCHAR2(20) NOT NULL,
ORDER_ID           VARCHAR2(20) NOT NULL,
GS_EMAIL           VARCHAR2(50) NOT NULL,
ORDER_GET_POINT    NUMBER(3),
ORDER_USE_POINT    NUMBER(3),
POINT_UPDATE_TIME  DATE,
CONSTRAINT POINT_TABLE_POINT_SIERAL_PK PRIMARY KEY(POINT_SIERAL),
CONSTRAINT POINT_TABLE_ORDER_ID_FK FOREIGN KEY(ORDER_ID) REFERENCES ORDER_TABLE(ORDER_ID),
CONSTRAINT POINT_TABLE_GS_EMAIL_FK FOREIGN KEY (GS_EMAIL) REFERENCES GUEST_TABLE (GS_EMAIL)
);
INSERT INTO POINT_TABLE(POINT_SIERAL,ORDER_ID,GS_EMAIL,ORDER_GET_POINT,ORDER_USE_POINT,POINT_UPDATE_TIME)
VALUES('PT' || lpad(POINT_TABLE_SEQ.Nextval,5,'0'),'OD00101','Alpha@gmail.com',20,0,TO_DATE('2020-11-29',('YYYY-MM-DD')));
INSERT INTO POINT_TABLE(POINT_SIERAL,ORDER_ID,GS_EMAIL,ORDER_GET_POINT,ORDER_USE_POINT,POINT_UPDATE_TIME)
VALUES('PT' || lpad(POINT_TABLE_SEQ.Nextval,5,'0'),'OD00102','Beta@gmail.com',20,0,TO_DATE('2020-11-29',('YYYY-MM-DD')));
INSERT INTO POINT_TABLE(POINT_SIERAL,ORDER_ID,GS_EMAIL,ORDER_GET_POINT,ORDER_USE_POINT,POINT_UPDATE_TIME)
VALUES('PT' || lpad(POINT_TABLE_SEQ.Nextval,5,'0'),'OD00103','Charlie@gmail.com',20,0,TO_DATE('2020-11-29',('YYYY-MM-DD')));
INSERT INTO POINT_TABLE(POINT_SIERAL,ORDER_ID,GS_EMAIL,ORDER_GET_POINT,ORDER_USE_POINT,POINT_UPDATE_TIME)
VALUES('PT' || lpad(POINT_TABLE_SEQ.Nextval,5,'0'),'OD00104','Delta@gmail.com',20,0,TO_DATE('2020-11-29',('YYYY-MM-DD')));
INSERT INTO POINT_TABLE(POINT_SIERAL,ORDER_ID,GS_EMAIL,ORDER_GET_POINT,ORDER_USE_POINT,POINT_UPDATE_TIME)
VALUES('PT' || lpad(POINT_TABLE_SEQ.Nextval,5,'0'),'OD00105','Echo@gmail.com',20,0,TO_DATE('2020-11-29',('YYYY-MM-DD')));
COMMIT;



/*------------------------------------------------------------------------------------*/
select distinct user_depart from user_table;
select user_account, user_password from user_table where user_account='MORRY';

/*-----------------------------888888888888888--------------------------------------*/
Select *  From BOOKING_FIXED_TABLE Inner join REST_SEAT_COORDINATE_TABLE  on  
REST_SEAT_COORDINATE_TABLE.RS_SEAT_SIERAL  = BOOKING_FIXED_TABLE.RS_SEAT_SIERAL 
join BOOKING_ING_TABLE on BOOKING_FIXED_TABLE.RS_SIERAL =  BOOKING_ING_TABLE.RS_SIERAL
Where REST_SEAT_COORDINATE_TABLE.RS_ID = 'RS10002' AND BOOKING_FIXED_TABLE.RS_TABLE_SEAT >= 1 
AND BOOKING_ING_TABLE.RS_STATUS != 0 AND BOOKING_ING_TABLE.GS_SELECT_TIME != 2 
AND to_char(booking_ing_table.gs_select_date,'yyyy-mm-dd')!= '2020-11-12';
