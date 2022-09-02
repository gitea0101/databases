
CREATE TABLE Answer
(
  Anum   INT          NOT NULL,
  Answer VARCHAR(200) NULL    ,
  PRIMARY KEY (Anum)
) COMMENT '답항';

CREATE TABLE QAtable
(
  Qnum  INT NOT NULL,
  Anum  INT NOT NULL,
  QANum INT NOT NULL,
  PRIMARY KEY (QANum)
) COMMENT '설문지';

CREATE TABLE QNumber
(
  Qnum     INT          NOT NULL,
  Question VARCHAR(200) NULL    ,
  PRIMARY KEY (Qnum)
) COMMENT '문항인수';

CREATE TABLE Question
(
  UserNum INT NOT NULL,
  QANum   INT NOT NULL
) COMMENT '설문';

CREATE TABLE User
(
  UserNum INT          NOT NULL,
  Name    VARCHAR(200) NULL    ,
  PRIMARY KEY (UserNum)
) COMMENT '설문자';

ALTER TABLE QAtable
  ADD CONSTRAINT FK_QNumber_TO_QAtable
    FOREIGN KEY (Qnum)
    REFERENCES QNumber (Qnum);

ALTER TABLE QAtable
  ADD CONSTRAINT FK_Answer_TO_QAtable
    FOREIGN KEY (Anum)
    REFERENCES Answer (Anum);

ALTER TABLE Question
  ADD CONSTRAINT FK_User_TO_Question
    FOREIGN KEY (UserNum)
    REFERENCES User (UserNum);

ALTER TABLE Question
  ADD CONSTRAINT FK_QAtable_TO_Question
    FOREIGN KEY (QANum)
    REFERENCES QAtable (QANum);
