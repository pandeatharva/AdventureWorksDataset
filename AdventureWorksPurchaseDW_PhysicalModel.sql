/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      AdventureWorks_PurchaseDW.DM1
 *
 * Date Created : Thursday, February 24, 2022 17:24:21
 * Target DBMS : Microsoft Azure SQL DB
 */

/* 
 * TABLE: DimCalender 
 */

CREATE TABLE DimCalender(
    DateKey                 int            NOT NULL,
    FullDateAlternateKey    int            NOT NULL,
    DayNumberOfWeek         int            NOT NULL,
    DayNameOfWeek           varchar(20)    NOT NULL,
    DayNumberOfMonth        int            NOT NULL,
    DayNumberOfYear         int            NOT NULL,
    MonthName               varchar(20)    NOT NULL,
    WeekNumberOfYear        int            NOT NULL,
    MonthNumberOfYear       tinyint        NOT NULL,
    CalenderQuarter         tinyint        NOT NULL,
    CalenderYear            smallint       NOT NULL,
    CalenderSemester        tinyint        NOT NULL,
    FiscalQuarter           tinyint        NOT NULL,
    FiscalYear              smallint       NOT NULL,
    FiscalSemester          tinyint        NOT NULL,
    SOR_ID                  int            NOT NULL,
    SOR_LoadDate            date           NOT NULL,
    SOR_UpdateDate          date           NULL,
    JobID                   int            NOT NULL,
    CONSTRAINT PK14 PRIMARY KEY NONCLUSTERED (DateKey)
)

go


IF OBJECT_ID('DimCalender') IS NOT NULL
    PRINT '<<< CREATED TABLE DimCalender >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimCalender >>>'
go

/* 
 * TABLE: DimEmployee 
 */

CREATE TABLE DimEmployee(
    BusinessEntityID     int            NOT NULL,
    DepartmentID         int            NOT NULL,
    DepartmentName       varchar(50)    NOT NULL,
    ShiftID              int            NOT NULL,
    FirstName            varchar(50)    NOT NULL,
    MiddleName           varchar(50)    NULL,
    LastName             varchar(50)    NOT NULL,
    PersonType           varchar(20)    NOT NULL,
    NationalIDNumber     int            NOT NULL,
    LoginID              int            NOT NULL,
    OrganizationNode     hierarchyid    NOT NULL,
    PositionLevel        varchar(50)    NOT NULL,
    JobTitle             varchar(30)    NOT NULL,
    MaritalStatus        varchar(10)    NOT NULL,
    Gender               varchar(10)    NOT NULL,
    SalariedFlag         int            NOT NULL,
    VacationHours        int            NOT NULL,
    SickLeaveHours       int            NULL,
    CurrentFlag          int            NOT NULL,
    PhoneNumber          int            NOT NULL,
    PhoneNumberTypeID    varchar(10)    NOT NULL,
    EmailAddress         varchar(20)    NOT NULL,
    SOR_ID               int            NOT NULL,
    SOR_LoadDate         date           NOT NULL,
    SOR_UpdateDate       date           NOT NULL,
    ModifiedDate         date           NOT NULL,
    JobID                int            NOT NULL,
    StartDate            int            NULL,
    HireDate             int            NULL,
    EndDate              int            NULL,
    BirthDate            int            NULL,
    rowguid              int            NOT NULL,
    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (BusinessEntityID)
)

go


IF OBJECT_ID('DimEmployee') IS NOT NULL
    PRINT '<<< CREATED TABLE DimEmployee >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimEmployee >>>'
go

/* 
 * TABLE: DimEmployeePayHistory 
 */

CREATE TABLE DimEmployeePayHistory(
    EmployeePayHistory    int         NOT NULL,
    BusinessEntityID      int         NOT NULL,
    RateChangeDate        datetime    NOT NULL,
    Rate                  money       NOT NULL,
    PayFrequency          tinyint     NOT NULL,
    BeginDate             date        NOT NULL,
    EndDate               date        NULL,
    Flag                  int         NOT NULL,
    SOR_ID                int         NOT NULL,
    SOR_LoadDate          date        NOT NULL,
    SOR_UpdateDate        date        NULL,
    JobID                 int         NOT NULL,
    ModifiedDate          date        NULL,
    CONSTRAINT PK13 PRIMARY KEY NONCLUSTERED (EmployeePayHistory, BusinessEntityID)
)

go


IF OBJECT_ID('DimEmployeePayHistory') IS NOT NULL
    PRINT '<<< CREATED TABLE DimEmployeePayHistory >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimEmployeePayHistory >>>'
go

/* 
 * TABLE: DimGeography 
 */

CREATE TABLE DimGeography(
    BusinessEntityID           int                 NOT NULL,
    Name                       varchar(50)         NOT NULL,
    StateProvinceCode          varchar(10)         NOT NULL,
    AddressLine1               varchar(50)         NOT NULL,
    AddressLine2               varchar(50)         NOT NULL,
    PostalCode                 int                 NOT NULL,
    SpatialLocation            geography           NOT NULL,
    rowguid                    uniqueidentifier    NOT NULL,
    IsOnlyStateProvinceFlag    varchar(10)         NOT NULL,
    TerritoryID                varchar(10)         NOT NULL,
    CityName                   varchar(50)         NOT NULL,
    SOR_ID                     int                 NOT NULL,
    SOR_LoadDate               date                NOT NULL,
    SOR_UpdateDate             date                NULL,
    Job_ID                     int                 NOT NULL,
    ModifiedDate               date                NOT NULL,
    CONSTRAINT PK18 PRIMARY KEY NONCLUSTERED (BusinessEntityID)
)

go


IF OBJECT_ID('DimGeography') IS NOT NULL
    PRINT '<<< CREATED TABLE DimGeography >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimGeography >>>'
go

/* 
 * TABLE: DimProduct 
 */

CREATE TABLE DimProduct(
    ProductID                 int                 NOT NULL,
    Name                      varchar(50)         NOT NULL,
    ProductNumber             int                 NOT NULL,
    ProductCategoryID         int                 NOT NULL,
    ProductCategoryName       varchar(50)         NOT NULL,
    ProductSubategoryID       int                 NOT NULL,
    ProductSubcategoryName    varchar(50)         NOT NULL,
    MakeFlag                  int                 NULL,
    FinishedGoodFlag          int                 NOT NULL,
    Color                     varchar(20)         NOT NULL,
    SafteyStockLevel          int                 NOT NULL,
    ReorderPoint              int                 NOT NULL,
    StandardCost              money               NOT NULL,
    ListPrice                 money               NOT NULL,
    Size                      varchar(10)         NULL,
    SizeUnitMeasureCost       varchar(10)         NULL,
    WeightMeasureCode         varchar(10)         NULL,
    Weight                    decimal(10, 0)      NOT NULL,
    DaysToManufacture         int                 NOT NULL,
    ProductLine               varchar(10)         NULL,
    Class                     varchar(10)         NULL,
    Style                     varchar(5)          NULL,
    ProductModelID            int                 NULL,
    SellStartDate             date                NOT NULL,
    SellEndDate               date                NULL,
    DiscontinuedDate          datetime            NULL,
    rowguid                   uniqueidentifier    NOT NULL,
    SOR_ID                    int                 NOT NULL,
    SOR_LoadDate              date                NOT NULL,
    SOR_UpdateDate            date                NULL,
    JobID                     int                 NOT NULL,
    ModifiedDate              date                NULL,
    CONSTRAINT PK19 PRIMARY KEY NONCLUSTERED (ProductID)
)

go


IF OBJECT_ID('DimProduct') IS NOT NULL
    PRINT '<<< CREATED TABLE DimProduct >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimProduct >>>'
go

/* 
 * TABLE: DimProductVendor 
 */

CREATE TABLE DimProductVendor(
    ProductID           int           NOT NULL,
    BusinessEntityID    int           NOT NULL,
    AverageLeadTime     int           NOT NULL,
    StandardPrice       money         NOT NULL,
    LastReceiptCost     money         NULL,
    LastReceiptDate     datetime      NULL,
    MinOrderQty         int           NOT NULL,
    MaxOrderQty         int           NOT NULL,
    OnOrderQty          int           NULL,
    UnitMeasureCode     varchar(5)    NOT NULL,
    SOR_ID              int           NOT NULL,
    SOR_LoadDate        date          NOT NULL,
    SOR_UpdateDate      date          NULL,
    JobID               int           NOT NULL,
    ModifiedDate        date          NULL,
    CONSTRAINT PK12 PRIMARY KEY NONCLUSTERED (ProductID, BusinessEntityID)
)

go


IF OBJECT_ID('DimProductVendor') IS NOT NULL
    PRINT '<<< CREATED TABLE DimProductVendor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimProductVendor >>>'
go

/* 
 * TABLE: DimShipMethod 
 */

CREATE TABLE DimShipMethod(
    ShipMethodID      int                 NOT NULL,
    Name              varchar(50)         NOT NULL,
    ShipBase          money               NOT NULL,
    ShipRate          money               NOT NULL,
    rowguid           uniqueidentifier    NOT NULL,
    SOR_ID            int                 NOT NULL,
    SOR_LoadDate      date                NOT NULL,
    SOR_UpdateDate    date                NULL,
    JobID             int                 NOT NULL,
    ModifiedDate      date                NULL,
    CONSTRAINT PK17 PRIMARY KEY NONCLUSTERED (ShipMethodID)
)

go


IF OBJECT_ID('DimShipMethod') IS NOT NULL
    PRINT '<<< CREATED TABLE DimShipMethod >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimShipMethod >>>'
go

/* 
 * TABLE: DimVendor 
 */

CREATE TABLE DimVendor(
    BusinessEntityID           int              NOT NULL,
    AccountNumber              int              NOT NULL,
    Name                       varchar(50)      NOT NULL,
    CreditRating               tinyint          NOT NULL,
    PreferredVendorStatus      int              NOT NULL,
    ActiveFlag                 int              NOT NULL,
    PurchasingWebServiceURL    varchar(1024)    NULL,
    SOR_ID                     int              NOT NULL,
    SOR_LoadDate               date             NOT NULL,
    SOR_UpdateDate             date             NULL,
    JobID                      int              NOT NULL,
    ModifiedDate               date             NULL,
    CONSTRAINT PK15 PRIMARY KEY NONCLUSTERED (BusinessEntityID)
)

go


IF OBJECT_ID('DimVendor') IS NOT NULL
    PRINT '<<< CREATED TABLE DimVendor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DimVendor >>>'
go

/* 
 * TABLE: FactPurchase 
 */

CREATE TABLE FactPurchase(
    PurchaseOrderID              int              NOT NULL,
    ShipMethodID                 int              NOT NULL,
    BusinessEntityID             int              NOT NULL,
    RevisionNumber               tinyint          NOT NULL,
    Status                       tinyint          NOT NULL,
    SubTotal                     money            NOT NULL,
    TaxAmt                       money            NOT NULL,
    Freight                      money            NOT NULL,
    TotalDue                     money            NOT NULL,
    ProductID                    int              NULL,
    PurchaseOrderDetailID        int              NOT NULL,
    OrderQty                     int              NOT NULL,
    LineTotal                    money            NOT NULL,
    ReceivedQty                  decimal(8, 2)    NOT NULL,
    RejectedQty                  decimal(8, 2)    NOT NULL,
    StockedQty                   decimal(8, 2)    NOT NULL,
    SOR_ID                       int              NOT NULL,
    SOR_LoadDate                 date             NOT NULL,
    SOR_UpdateDate               date             NULL,
    JobID                        int              NOT NULL,
    ModifiedDate                 date             NULL,
    OrderDate                    int              NULL,
    ShipDate                     int              NULL,
    DueDate                      int              NULL,
    BusinessEntityID_Employee    int              NOT NULL,
    BusinessEntityID_Vendor      int              NOT NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (PurchaseOrderID, ShipMethodID, BusinessEntityID)
)

go


IF OBJECT_ID('FactPurchase') IS NOT NULL
    PRINT '<<< CREATED TABLE FactPurchase >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FactPurchase >>>'
go

/* 
 * TABLE: DimEmployee 
 */

ALTER TABLE DimEmployee ADD CONSTRAINT RefDimCalender41 
    FOREIGN KEY (BirthDate)
    REFERENCES DimCalender(DateKey)
go

ALTER TABLE DimEmployee ADD CONSTRAINT RefDimCalender42 
    FOREIGN KEY (StartDate)
    REFERENCES DimCalender(DateKey)
go

ALTER TABLE DimEmployee ADD CONSTRAINT RefDimCalender38 
    FOREIGN KEY (HireDate)
    REFERENCES DimCalender(DateKey)
go

ALTER TABLE DimEmployee ADD CONSTRAINT RefDimCalender40 
    FOREIGN KEY (EndDate)
    REFERENCES DimCalender(DateKey)
go


/* 
 * TABLE: DimEmployeePayHistory 
 */

ALTER TABLE DimEmployeePayHistory ADD CONSTRAINT RefDimEmployee14 
    FOREIGN KEY (BusinessEntityID)
    REFERENCES DimEmployee(BusinessEntityID)
go


/* 
 * TABLE: DimGeography 
 */

ALTER TABLE DimGeography ADD CONSTRAINT RefDimEmployee18 
    FOREIGN KEY (BusinessEntityID)
    REFERENCES DimEmployee(BusinessEntityID)
go


/* 
 * TABLE: DimProductVendor 
 */

ALTER TABLE DimProductVendor ADD CONSTRAINT RefDimVendor22 
    FOREIGN KEY (BusinessEntityID)
    REFERENCES DimVendor(BusinessEntityID)
go

ALTER TABLE DimProductVendor ADD CONSTRAINT RefDimProduct23 
    FOREIGN KEY (ProductID)
    REFERENCES DimProduct(ProductID)
go


/* 
 * TABLE: FactPurchase 
 */

ALTER TABLE FactPurchase ADD CONSTRAINT RefDimCalender44 
    FOREIGN KEY (OrderDate)
    REFERENCES DimCalender(DateKey)
go

ALTER TABLE FactPurchase ADD CONSTRAINT RefDimCalender45 
    FOREIGN KEY (ShipDate)
    REFERENCES DimCalender(DateKey)
go

ALTER TABLE FactPurchase ADD CONSTRAINT RefDimCalender46 
    FOREIGN KEY (DueDate)
    REFERENCES DimCalender(DateKey)
go

ALTER TABLE FactPurchase ADD CONSTRAINT RefDimProduct1 
    FOREIGN KEY (ProductID)
    REFERENCES DimProduct(ProductID)
go

ALTER TABLE FactPurchase ADD CONSTRAINT RefDimShipMethod11 
    FOREIGN KEY (ShipMethodID)
    REFERENCES DimShipMethod(ShipMethodID)
go

ALTER TABLE FactPurchase ADD CONSTRAINT RefDimVendor21 
    FOREIGN KEY (BusinessEntityID)
    REFERENCES DimVendor(BusinessEntityID)
go

ALTER TABLE FactPurchase ADD CONSTRAINT RefDimEmployee47 
    FOREIGN KEY (BusinessEntityID)
    REFERENCES DimEmployee(BusinessEntityID)
go


