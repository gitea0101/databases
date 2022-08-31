
CREATE TABLE city_me
(
  ID         INT          NOT NULL COMMENT '아이디',
  Name       VARCHAR(200) NULL     COMMENT '이름',
  District   VARCHAR(200) NULL     COMMENT '구역',
  Population INT          NULL     COMMENT '인구',
  Code       VARCHAR(200) NOT NULL COMMENT '코드',
  PRIMARY KEY (ID)
) COMMENT '도시';

CREATE TABLE country_me
(
  Code           VARCHAR(200) NOT NULL COMMENT '코드',
  Name           VARCHAR(200) NULL     COMMENT '이름',
  Continent      ENUM         NULL     COMMENT '대륙',
  Region         VARCHAR(200) NULL     COMMENT '지역',
  SurfaceArea    DECIMAL      NULL     COMMENT '면적',
  IndepYear      SMALLINT     NULL     COMMENT '독립년도',
  Population     INT          NULL     COMMENT '인구',
  LifeExpectancy DECIMAL      NULL     COMMENT '기대수명',
  GNP            DECIMAL      NULL     COMMENT '국민총생산',
  GNPOld         DECIMAL      NULL     COMMENT '구_국민총생산',
  LocalName      VARCHAR(200) NULL     COMMENT '현지명',
  GovermentForm  VARCHAR(200) NULL     COMMENT '정부형태',
  HeadOfState    VARCHAR(200) NULL     COMMENT '원수',
  Capital        INT          NULL     COMMENT '자금',
  Code2          VARCHAR(200) NULL     COMMENT '코드2',
  PRIMARY KEY (Code)
) COMMENT '국가';

CREATE TABLE countrylanguage_me
(
  Language   VARCHAR(200) NOT NULL COMMENT '언어',
  IsOfficial ENUM         NULL     COMMENT '공식',
  Percentage DECIMAL      NULL     COMMENT '백분율',
  Code       VARCHAR(200) NOT NULL COMMENT '코드'
) COMMENT '국가언어';

ALTER TABLE countrylanguage_me
  ADD CONSTRAINT FK_country_me_TO_countrylanguage_me
    FOREIGN KEY (Code)
    REFERENCES country_me (Code);

ALTER TABLE city_me
  ADD CONSTRAINT FK_country_me_TO_city_me
    FOREIGN KEY (Code)
    REFERENCES country_me (Code);
