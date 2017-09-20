--отключить констрент TB_SERVICES.SRV_PK
ALTER TABLE SIP_W.TB_SERVICES MODIFY CONSTRAINT SRV_PK DISABLE;
DROP INDEX SIP_W.SRV_PK;
commit;

--создать индекс SIP_W.SRV_PK
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
  PARTITION TB_SRV200508
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200509
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200510
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200511
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200512
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200601
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200602
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200603
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200604
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200605
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200606
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200607
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200608
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200609
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200610
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200611
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200612
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200701
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200702
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200703
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200704
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200705
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200706
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200707
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200708
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200709
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200710
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200711
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200712
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200801
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200802
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200803
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200804
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200805
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200806
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200807
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200808
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200809
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200810
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200811
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200812
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200901
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200902
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200903
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200904
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200905
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200906
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200907
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200908
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200909
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200910
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200911
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV200912
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201001
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201002
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201003
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201004
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201005
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201006
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201007
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201008
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201009
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201010
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201011
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201012
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201101
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201102
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201103
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201104
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201105
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201106
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201107
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201108
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201109
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201110
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201111
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201112
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201201
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201202
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201203
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201204
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201205
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201206
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201207
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201208
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201209
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201210
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201211
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201212
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201301
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201302
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201303
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201304
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201305
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201306
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201307
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201308
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201309
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201310
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201311
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201312
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201401
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201402
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201403
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201404
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201405
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201406
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201407
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201408
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201409
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201410
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201411
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201412
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201501
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201502
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201503
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201504
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201505
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201506
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201507
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION TB_SRV201508
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




ALTER TABLE SIP_W.TB_WTMPS_SESSIONS_ARCHIVE MODIFY CONSTRAINT TWSA_PK   DISABLE;
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
  PARTITION P200509
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200510
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200511
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200512
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200601
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200602
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200603
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200604
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200605
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200606
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200607
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200608
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200609
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200610
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200611
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200612
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200701
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200702
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200703
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200704
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200705
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200706
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200707
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200708
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200709
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200710
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200711
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200712
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200801
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200802
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200803
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200804
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200805
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200806
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200807
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200808
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200809
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200810
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200811
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200812
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200901
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200902
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200903
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200904
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200905
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200906
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200907
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200908
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200909
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200910
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200911
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200912
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201001
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201002
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201003
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201004
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201005
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201006
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201007
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201008
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201009
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201010
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201011
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201012
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201101
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201102
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201103
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201104
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201105
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201106
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201107
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201108
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201109
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201110
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201111
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201112
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201201
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201202
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201203
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201204
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201205
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201206
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201207
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201208
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201209
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201210
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201211
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201212
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201301
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201302
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201303
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201304
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201305
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201306
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201307
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201308
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201309
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201310
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201311
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201312
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201401
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201402
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201403
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201404
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201405
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201406
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201407
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201408
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201409
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201410
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201411
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201412
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201501
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201502
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201503
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201504
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201505
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201506
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201507
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201508
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
  PARTITION PMAXVAL
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               )
)
PARALLEL ( DEGREE 8 INSTANCES Default )
COMPUTE STATISTICS
ONLINE;

ALTER TABLE SIP_W.TB_WTMPS_SESSION_CHARGES   MODIFY CONSTRAINT TWSC_PK   DISABLE;

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
  PARTITION P200509
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200510
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200511
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200512
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200601
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200602
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200603
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200604
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200605
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200606
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200607
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200608
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200609
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200610
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200611
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200612
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200701
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200702
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200703
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200704
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200705
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200706
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200707
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200708
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200709
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200710
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200711
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200712
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200801
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200802
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200803
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200804
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200805
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200806
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200807
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200808
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200809
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200810
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200811
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200812
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200901
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200902
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200903
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200904
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200905
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200906
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200907
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200908
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200909
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200910
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200911
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P200912
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201001
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201002
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201003
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201004
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201005
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201006
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201007
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201008
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201009
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201010
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201011
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201012
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201101
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201102
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201103
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201104
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201105
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201106
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201107
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201108
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201109
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201110
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201111
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201112
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201201
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201202
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201203
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201204
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201205
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201206
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201207
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201208
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201209
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201210
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201211
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201212
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201301
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201302
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201303
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201304
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201305
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201306
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201307
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201308
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201309
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201310
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201311
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201312
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201401
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201402
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201403
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201404
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201405
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201406
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201407
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201408
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201409
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201410
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201411
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201412
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201501
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201502
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201503
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201504
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201505
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201506
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201507
    LOGGING
    NOCOMPRESS 
    STORAGE    (
                MAXSIZE          UNLIMITED
               ),  
  PARTITION P201508
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
ALTER INDEX SIP_W.TWSA_PK NOPARALLEL;
ALTER INDEX SIP_W.TWSC_PK NOPARALLEL;

commit;

