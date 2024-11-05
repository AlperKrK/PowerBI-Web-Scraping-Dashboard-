/*####### CREATE TABLE SCRIPTS ######*/ 
CREATE TABLE [dbo].[STAGE_URL_DATA](
	[PageViewId] [nvarchar](max) NULL,
	[CookieID] [nvarchar](max) NULL,
	[RequestedURL] [nvarchar](max) NULL,
	[RefererURL] [nvarchar](max) NULL,
	[PageViewDateFull] [nvarchar](max) NULL,
	[PageViewDateYear] [nvarchar](max) NULL,
	[PageViewDateMonth] [nvarchar](max) NULL,
	[PageViewDateDay] [nvarchar](max) NULL,
	[PageViewDateHour] [nvarchar](max) NULL,
	[UserAgent] [nvarchar](max) NULL,
	[Device] [nvarchar](max) NULL,
	[DeviceModel] [nvarchar](max) NULL,
	[DeviceModel2] [nvarchar](max) NULL,
	[DeviceProcessor] [nvarchar](max) NULL,
	[DeviceLanguage] [nvarchar](max) NULL,
	[DeviceModel3] [nvarchar](max) NULL,
	[DeviceModel4] [nvarchar](max) NULL
) 
;

CREATE TABLE [dbo].[DIM_OFFER](
	[DIM_OFFER_ID] [int] NULL,
	[DIM_OFFER_NAME] [nvarchar](max) NULL
)
;

CREATE TABLE DBO.DIM_HOLIDAY_TYPE
(DIM_HOL_TYPE_ID INT,
 HOLIDAY_TYPE NVARCHAR(MAX) NULL)
;

CREATE TABLE DBO.DIM_CAMPAIGN
(DIM_CAMPAING_ID int,
 CAMPAING_NAME nvarchar(max) null
);

CREATE TABLE DBO.DIM_HOUR
(DIM_HOUR_ID INT,
 DIM_HOUR NVARCHAR(10)
 );


 CREATE TABLE DBO.DIM_DATE
   ( DIM_DATE_ID int, 
     DIM_DATE  DATE,
     NUMBER_OF_DAY  NVARCHAR(10),
	 DAY_SUFFIX NVARCHAR(10),
     DAY_NAME   NVARCHAR(10),
	 DAY_OF_WEEK NVARCHAR(10),
	 DAY_OF_WEEK_IN_MONTH NVARCHAR(10),
	 DAY_OF_YEAR NVARCHAR(10),
	 IS_WEEKEND NVARCHAR(10),
     DATE_WEEK   NVARCHAR(10)  ,
     DATE_ISO_WEEK    NVARCHAR(10),
     DATE_MONTH    NVARCHAR(10),
     DATE_MONTH_NAME  NVARCHAR(10),
     DATE_QUARTER  NVARCHAR(10),
     DATE_YEAR    NVARCHAR(10),
     FIRST_OF_MONTH NVARCHAR(10),
	 LAST_OF_MONTH NVARCHAR(10),
	 FIRST_OF_YEAR NVARCHAR(10),
     LAST_OF_YEAR  NVARCHAR(10)
  )
  ;

CREATE TABLE [dbo].[FACT_WEB_TRACTING](
	[PAGEVIEWID] [nvarchar](max) NULL,
	[COOKIEID] [nvarchar](max) NULL,
	[DATEID] [int] NULL,
	[DATEHOURID] [int] NULL,
	[MARKETING_CHANNEL] [nvarchar](max) NULL,
	[USER_BROWSER] [nvarchar](max) NULL,
	[USER_DEVICE_TYPE] [nvarchar](max) NULL,
	[USER_DEVICE_PROCESSOR] [nvarchar](max) NULL,
	[DIM_REGION_REL_ID] [int] NULL,
	[DIM_HOL_TYPE_ID] [int] NULL,
	[CAMPAIGN_NAME] [nvarchar](max) NULL,
	[CHANNEL_NAME] [nvarchar](max) NULL,
	[DIM_OFFER_ID] [nvarchar](max) NULL,
	[OFFER_NAME] [nvarchar](max) NULL,
	[DIM_CAMPAIGN_ID] [int] NULL,
	[DIM_CHANNEL_ID] [int] NULL,
	[HOTEL_NAME] [nvarchar](max) NULL,
	[HOTEL_COUNTRY] [nvarchar](max) NULL,
	[HOTEL_CITY] [nvarchar](max) NULL,
	[HOTEL_CHEAP_FLAG] [nvarchar](max) NULL,
	[HOTEL_CHEAP_START_DATE] [nvarchar](max) NULL,
	[HOTEL_CHEAP_END_DATE] [nvarchar](max) NULL,
	[TRANS_SOURCE] [nvarchar](max) NULL,
	[SALES_TYPE] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;
