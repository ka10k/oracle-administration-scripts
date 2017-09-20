ALTER TABLE SIP_W.TB_SERVICES MODIFY CONSTRAINT SRV_PK DISABLE;
DROP INDEX SIP_W.SRV_PK;
commit;

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
  PARTITION PART2008_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
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



ALTER TABLE SIP_W.TB_WTMPS_SESSIONS_ARCHIVE  MODIFY CONSTRAINT TWSA_PK  DISABLE;
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
  PARTITION PART2008_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
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
  PARTITION PART2008_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2008_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2009_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2010_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2011_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2012_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2013_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
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

commit;