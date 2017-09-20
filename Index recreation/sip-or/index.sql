ALTER TABLE SIP_W.TB_SERVICES   MODIFY CONSTRAINT SRV_PK   DISABLE;
DROP INDEX SIP_W.SRV_PK;

CREATE INDEX SIP_W.SRV_PK ON SIP_W.TB_SERVICES
(SRV_ID)
  TABLESPACE USERS
  PCTFREE    10
  INITRANS   10
  MAXTRANS   255
  STORAGE    (
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOGGING
LOCAL (  
  PARTITION PART2014_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART_MAXVALUE
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               )
)
PARALLEL ( DEGREE 8 INSTANCES Default )
COMPUTE STATISTICS
ONLINE;

ALTER INDEX SIP_W.SRV_PK NOPARALLEL;



ALTER TABLE SIP_W.TB_WTMPS_SESSIONS_ARCHIVE   MODIFY CONSTRAINT TWSA_PK   DISABLE;

DROP INDEX SIP_W.TWSA_PK;

CREATE INDEX SIP_W.TWSA_PK ON SIP_W.TB_WTMPS_SESSIONS_ARCHIVE
(TWSA_N)
  TABLESPACE USERS
  PCTFREE    10
  INITRANS   10
  MAXTRANS   255
  STORAGE    (
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOGGING
LOCAL (  
  PARTITION PART2014_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART_MAXVALUE
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               )
)
PARALLEL ( DEGREE 8 INSTANCES Default )
COMPUTE STATISTICS
ONLINE;

ALTER INDEX SIP_W.TWSA_PK NOPARALLEL;



CREATE INDEX SIP_W.TWSA_IP_I2 ON SIP_W.TB_WTMPS_SESSIONS_ARCHIVE
(NVL("TWSA_ZONE_STOP_DATE",TO_DATE(' 3000-12-31 00:00:00', 'syyyy-mm-dd hh24:mi:ss')), TWSA_ZONE_START_DATE, TWSA_FRAMED_IP_ADDRESS)
  TABLESPACE USERS
  PCTFREE    10
  INITRANS   10
  MAXTRANS   255
  STORAGE    (
              INITIAL          5M
              NEXT             5M
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOGGING
LOCAL (  
  PARTITION PART2014_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2014_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2014_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2014_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2014_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2014_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2014_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2014_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2014_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2014_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2014_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2014_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2015_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2015_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2015_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  

  PARTITION PART2015_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2017_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2017_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2017_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2017_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2017_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2017_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2017_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2017_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2017_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2017_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2017_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2017_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2018_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2018_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2018_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2018_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2018_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2018_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2018_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2018_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2018_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2018_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2018_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2018_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2019_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2019_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2019_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2019_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2019_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2019_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2019_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2019_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2019_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2019_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2019_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2019_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2020_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2020_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2020_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2020_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2020_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2020_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2020_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2020_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2020_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2020_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2020_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2020_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2021_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2021_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2021_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2021_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2021_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2021_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2021_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2021_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2021_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2021_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2021_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2021_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2022_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2022_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2022_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2022_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2022_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2022_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2022_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2022_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2022_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2022_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2022_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2022_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2023_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2023_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2023_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2023_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2023_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2023_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2023_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2023_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2023_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2023_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2023_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2023_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
    PARTITION PART_MAXVALUE
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    10
    INITRANS   10
    MAXTRANS   255
    STORAGE    (
                INITIAL          5M
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               )
)
PARALLEL ( DEGREE 8 INSTANCES Default )
COMPUTE STATISTICS
ONLINE;


ALTER INDEX SIP_W.TWSA_IP_I2 NOPARALLEL;



ALTER TABLE SIP_W.TB_WTMPS_SESSION_CHARGES   MODIFY CONSTRAINT TWSC_PK   DISABLE;

DROP INDEX SIP_W.TWSC_PK;

CREATE INDEX SIP_W.TWSC_PK ON SIP_W.TB_WTMPS_SESSION_CHARGES
(TWSC_ID)
  TABLESPACE USERS
  PCTFREE    10
  INITRANS   10
  MAXTRANS   255
  STORAGE    (
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOGGING
LOCAL (  
  PARTITION PART2014_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART_MAXVALUE
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               )
)
PARALLEL ( DEGREE 8 INSTANCES Default )
COMPUTE STATISTICS
ONLINE;

ALTER INDEX SIP_W.TWSC_PK NOPARALLEL;



DROP INDEX SIP_W.RERATE_CHARGES;

CREATE INDEX SIP_W.RERATE_CHARGES ON SIP_W.TB_WTMPS_SESSION_CHARGES
(TWSC_ABID, TWSC_SESSION_DATE)
  TABLESPACE USERS
  PCTFREE    10
  INITRANS   10
  MAXTRANS   255
  STORAGE    (
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOGGING
LOCAL (  
  PARTITION PART2014_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART_MAXVALUE
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               )
)
PARALLEL ( DEGREE 8 INSTANCES Default )
COMPUTE STATISTICS
ONLINE;


ALTER INDEX SIP_W.RERATE_CHARGES NOPARALLEL;


DROP INDEX SIP_W.TWSC_CHG;
CREATE INDEX SIP_W.TWSC_CHG ON SIP_W.TB_WTMPS_SESSION_CHARGES
(DECODE("TWSC_CHARGED",'Q',"TWSC_CHARGED",'N',"TWSC_CHARGED",NULL))
  TABLESPACE USERS
  PCTFREE    10
  INITRANS   10
  MAXTRANS   255
  STORAGE    (
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOGGING
LOCAL (  
  PARTITION PART2014_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2014_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2015_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2016_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2017_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2018_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2019_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2020_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2021_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2022_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2023_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART_MAXVALUE
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               )
)
PARALLEL ( DEGREE 8 INSTANCES Default )
COMPUTE STATISTICS
ONLINE;


ALTER INDEX SIP_W.TWSC_CHG NOPARALLEL;

commit;