CREATE INDEX SIP_W.TWSC_CHG ON SIP_W.TB_WTMPS_SESSION_CHARGES
(DECODE("TWSC_CHARGED",'Q',"TWSC_CHARGED",'N',"TWSC_CHARGED",NULL))
  TABLESPACE USERS
  PCTFREE    10
  INITRANS   5
  MAXTRANS   255
  STORAGE    (
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOGGING
LOCAL (  
  PARTITION PART2006_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2006_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
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
  PARTITION PART2024_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_12
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


CREATE INDEX SIP_W.TWSC_PK ON SIP_W.TB_WTMPS_SESSION_CHARGES
(TWSC_ID)
  TABLESPACE USERS
  PCTFREE    10
  INITRANS   5
  MAXTRANS   255
  STORAGE    (
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOGGING
LOCAL (  
  PARTITION PART2006_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2006_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
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
  PARTITION PART2024_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_12
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



CREATE INDEX SIP_W.TWSA_PK ON SIP_W.TB_WTMPS_SESSIONS_ARCHIVE
(TWSA_N)
  TABLESPACE USERS
  PCTFREE    10
  INITRANS   5
  MAXTRANS   255
  STORAGE    (
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOGGING
LOCAL (  
  PARTITION PART2006_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2006_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2007_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
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
  PARTITION PART2024_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2024_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2025_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2026_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2027_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2028_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2029_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2030_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2031_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2032_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2033_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2035_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2036_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2037_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2038_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2039_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2040_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2041_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2042_12
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_01
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_02
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_03
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_04
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_05
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_06
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_07
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_08
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_09
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_10
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_11
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION PART2043_12
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
ALTER INDEX SIP_W.TWSC_PK NOPARALLEL;
ALTER INDEX SIP_W.TWSA_PK NOPARALLEL;