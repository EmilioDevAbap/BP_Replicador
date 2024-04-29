CLASS zclbp_replica_dados DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CONSTANTS: BEGIN OF gc_values,
                 bp                      TYPE ze_param_modulo   VALUE 'BP',
                 cross_client            TYPE ze_param_chave1   VALUE 'CROSS_CLIENT',
                 businesspartnergrouping TYPE ze_param_chave2  VALUE 'BUSINESSPARTNERGROUPING',
                 destination_select      TYPE ze_param_chave2   VALUE 'DESTINATION_SELECT',
                 destination             TYPE ze_param_chave2   VALUE 'DESTINATION',
                 local                   TYPE ze_param_low    VALUE 'LOCAL',
                 a                       TYPE char1   VALUE 'A',
                 u                       TYPE char1   VALUE 'U',
                 i                       TYPE char1   VALUE 'I',
                 s                       TYPE char1    VALUE 'S',
                 m                       TYPE char1    VALUE 'M',
                 eq                      TYPE char2    VALUE 'EQ',
                 value1                  TYPE string VALUE '(VALUE1)',
                 value2                  TYPE string VALUE '(VALUE2)',
                 value3                  TYPE string VALUE '(VALUE3)',
                 value4                  TYPE string VALUE '(VALUE4)',
                 value5                  TYPE string VALUE '(VALUE5)',
                 zcpj                    TYPE  ktokd VALUE 'ZCPJ',
                 zbp_log_api_bp          TYPE char20 VALUE 'ZBP_LOG_API_BP',
                 r                       TYPE char1 VALUE 'R',
                 e                       TYPE char1 VALUE 'E',
                 d                       TYPE char1 VALUE 'D',
                 v81                     TYPE char2 VALUE '81',
                 zclbp_replica_dados     TYPE char60 VALUE 'ZCLBP_REPLICA_DADOS===========CP',
                 zbpr_replica_dados      TYPE char30 VALUE 'ZBPR_REPLICA_DADOS',
                 error                   TYPE char5 VALUE 'error',
                 number                  TYPE char10 VALUE '0123456789',
                 oil                     TYPE char3 VALUE 'OIL',
                 retail                  TYPE char6 VALUE 'RETAIL',
                 zppj                    TYPE  ktokd VALUE 'ZPPJ',
               END OF gc_values.

    TYPES:

      BEGIN OF ty_partneraddress,
        BusinessPartner            TYPE string,
        AddressID                  TYPE string,
        ValidityStartDate          TYPE string,
        ValidityEndDate            TYPE string,
        AuthorizationGroup         TYPE string,
        AdditionalStreetPrefixName TYPE string,
        AdditionalStreetSuffixName TYPE string,
        AddressTimeZone            TYPE string,
        CareOfName                 TYPE string,
        CityCode                   TYPE string,
        CityName                   TYPE string,
        CompanyPostalCode          TYPE string,
        Country                    TYPE string,
        County                     TYPE string,
        DeliveryServiceNumber      TYPE string,
        DeliveryServiceTypeCode    TYPE string,
        District                   TYPE string,
        FormOfAddress              TYPE string,
        FullName                   TYPE string,
        HomeCityName               TYPE string,
        HouseNumber                TYPE string,
        HouseNumberSupplementText  TYPE string,
        Language                   TYPE string,
        POBox                      TYPE string,
        POBoxDeviatingCityName     TYPE string,
        POBoxDeviatingCountry      TYPE string,
        POBoxDeviatingRegion       TYPE string,
        POBoxIsWithoutNumber       TYPE boolean,
        POBoxLobbyName             TYPE string,
        POBoxPostalCode            TYPE string,
        Person                     TYPE string,
        PostalCode                 TYPE string,
        PrfrdCommMediumType        TYPE string,
        Region                     TYPE string,
        StreetName                 TYPE string,
        StreetPrefixName           TYPE string,
        StreetSuffixName           TYPE string,
        TaxJurisdiction            TYPE string,
        TransportZone              TYPE string,
        AddressIDByExternalSystem  TYPE string,
        CountyCode                 TYPE string,
        TownshipCode               TYPE string,
        TownshipName               TYPE string,
      END OF ty_partneraddress,

      BEGIN OF ty_addressusage,
*               INCLUDE TYPE  ty_metadata.
        BusinessPartner    TYPE string,
        ValidityEndDate    TYPE string,
        AddressUsage       TYPE string,
        AddressID          TYPE string,
        ValidityStartDate  TYPE string,
        StandardUsage      TYPE boolean,
        AuthorizationGroup TYPE string,
      END OF ty_addressusage,

      BEGIN OF ty_emailaddress2.
*               INCLUDE TYPE  ty_metadata.
    TYPES: AddressID                      TYPE string,
           Person                         TYPE string,
           OrdinalNumber                  TYPE string,
           IsDefaultEmailAddress          TYPE boolean,
           EmailAddress                   TYPE string,
           SearchEmailAddress             TYPE string,
           AddressCommunicationRemarkText TYPE string,
           END OF ty_emailaddress2,

           BEGIN OF ty_faxnumber.
*               INCLUDE TYPE  ty_metadata.
    TYPES: AddressID                      TYPE string,
           Person                         TYPE string,
           OrdinalNumber                  TYPE string,
           IsDefaultFaxNumber             TYPE boolean,
           FaxCountry                     TYPE string,
           FaxNumber                      TYPE string,
           FaxNumberExtension             TYPE string,
           InternationalFaxNumber         TYPE string,
           AddressCommunicationRemarkText TYPE string,
           END OF ty_faxnumber,

           BEGIN OF ty_MobilePhoneNumber.
*               INCLUDE TYPE  ty_metadata.
    TYPES: AddressID                      TYPE string,
           Person                         TYPE string,
           OrdinalNumber                  TYPE string,
           DestinationLocationCountry     TYPE string,
           IsDefaultPhoneNumber           TYPE boolean,
           PhoneNumber                    TYPE string,
           PhoneNumberExtension           TYPE string,
           InternationalPhoneNumber       TYPE string,
           PhoneNumberType                TYPE string,
           AddressCommunicationRemarkText TYPE string,
           END OF ty_mobilephonenumber,

           BEGIN OF ty_URLAddress.
*               INCLUDE TYPE  ty_metadata.
    TYPES: AddressID                      TYPE string,
           Person                         TYPE string,
           OrdinalNumber                  TYPE string,
           ValidityStartDate              TYPE string,
           IsDefaultURLAddress            TYPE boolean,
           SearchURLAddress               TYPE string,
           AddressCommunicationRemarkText TYPE string,
           URLFieldLength                 TYPE int4,
           WebsiteURL                     TYPE string,
           END OF ty_urladdress,

           BEGIN OF ty_partner,
             BusinessPartner                TYPE bu_partner,
             Customer                       TYPE string,
             Supplier                       TYPE string,
             AcademicTitle                  TYPE string,
             AuthorizationGroup             TYPE string,
             BusinessPartnerCategory        TYPE string,
             BusinessPartnerFullName        TYPE string,
             BusinessPartnerGrouping        TYPE string,
             BusinessPartnerName            TYPE string,
*             BusinessPartnerUUID            TYPE string,
             CorrespondenceLanguage         TYPE string,
*             CreatedByUser                  TYPE string,
             CreationDate                   TYPE string,
*             CreationTime                   TYPE string,
             FirstName                      TYPE string,
             FormOfAddress                  TYPE string,
             Industry                       TYPE string,
             InternationalLocationNumber1   TYPE string,
             InternationalLocationNumber2   TYPE string,
             IsFemale                       TYPE boolean,
             IsMale                         TYPE boolean,
             IsNaturalPerson                TYPE string,
             IsSexUnknown                   TYPE boolean,
             GenderCodeName                 TYPE string,
             Language                       TYPE string,
             LastChangeDate                 TYPE string,
*             LastChangeTime                 TYPE string,
*             LastChangedByUser              TYPE string,
             LastName                       TYPE string,
             LegalForm                      TYPE string,
             OrganizationBPName1            TYPE string,
             OrganizationBPName2            TYPE string,
             OrganizationBPName3            TYPE string,
             OrganizationBPName4            TYPE string,
             OrganizationFoundationDate     TYPE string,
             OrganizationLiquidationDate    TYPE string,
             SearchTerm1                    TYPE string,
             SearchTerm2                    TYPE string,
             AdditionalLastName             TYPE string,
             BirthDate                      TYPE string,
             BusinessPartnerBirthDateStatus TYPE string,
             BusinessPartnerBirthplaceName  TYPE string,
             BusinessPartnerDeathDate       TYPE string,
             BusinessPartnerIsBlocked       TYPE boolean,
             BusinessPartnerType            TYPE string,
*             ETag                           TYPE string,
             GroupBusinessPartnerName1      TYPE string,
             GroupBusinessPartnerName2      TYPE string,
*             IndependentAddressID           TYPE string,
             InternationalLocationNumber3   TYPE string,
             MiddleName                     TYPE string,
             NameCountry                    TYPE string,
             NameFormat                     TYPE string,
             PersonFullName                 TYPE string,
*             PersonNumber                   TYPE string,
             IsMarkedForArchiving           TYPE boolean,
             BusinessPartnerIDByExtSystem   TYPE string,
             BusinessPartnerPrintFormat     TYPE string,
             BusinessPartnerOccupation      TYPE string,
             BusPartMaritalStatus           TYPE string,
             BusPartNationality             TYPE string,
             BusinessPartnerBirthName       TYPE string,
             BusinessPartnerSupplementName  TYPE string,
             NaturalPersonEmployerName      TYPE string,
             LastNamePrefix                 TYPE string,
             LastNameSecondPrefix           TYPE string,
             Initials                       TYPE string,
             TradingPartner                 TYPE string,
           END OF ty_partner,

           BEGIN OF ty_bupaident.
*               INCLUDE TYPE  ty_metadata.
    TYPES: BusinessPartner           TYPE string,
           BPIdentificationType      TYPE string,
           BPIdentificationNumber    TYPE string,
           BPIdnNmbrIssuingInstitute TYPE string,
           BPIdentificationEntryDate TYPE string,
           Country                   TYPE string,
           Region                    TYPE string,
           ValidityStartDate         TYPE string,
           ValidityEndDate           TYPE string,
           AuthorizationGroup        TYPE string,
           END OF ty_bupaident,

           BEGIN OF ty_bupaindust.
*               INCLUDE TYPE  ty_metadata.
    TYPES: IndustrySector         TYPE string,
           IndustrySystemType     TYPE string,
           BusinessPartner        TYPE string,
           IsStandardIndustry     TYPE string,
           IndustryKeyDescription TYPE string,
           END OF ty_bupaindust,

           BEGIN OF ty_partnerbank.
*               INCLUDE TYPE  ty_metadata.
    TYPES: BusinessPartner          TYPE string,
           BankIdentification       TYPE string,
           BankCountryKey           TYPE string,
           BankName                 TYPE string,
           BankNumber               TYPE string,
           SWIFTCode                TYPE string,
           BankControlKey           TYPE string,
           BankAccountHolderName    TYPE string,
           BankAccountName          TYPE string,
           ValidityStartDate        TYPE string,
           ValidityEndDate          TYPE string,
           iban                     TYPE string,
           IBANValidityStartDate    TYPE string,
           BankAccount              TYPE string,
           BankAccountReferenceText TYPE string,
           CollectionAuthInd        TYPE boolean,
           CityName                 TYPE string,
           AuthorizationGroup       TYPE string,
           END OF ty_partnerbank,

           BEGIN OF ty_PartnerContact ,
             RelationshipNumber     TYPE string,
             BusinessPartnerCompany TYPE string,
             BusinessPartnerPerson  TYPE string,
             ValidityEndDate        TYPE string,
             ValidityStartDate      TYPE string,
             IsStandardRelationship TYPE boolean,
             RelationshipCategory   TYPE string,
           END OF ty_partnercontact,

           BEGIN OF ty_PartnerRole.
    TYPES: BusinessPartner     TYPE string,
           BusinessPartnerRole TYPE string,
           ValidFrom           TYPE string,
           ValidTo             TYPE string,
           AuthorizationGroup  TYPE string,
           END OF ty_partnerrole,

           BEGIN OF ty_PartnerTaxNumber.
*               INCLUDE TYPE  ty_metadata.
    TYPES: BusinessPartner    TYPE string,
           BPTaxType          TYPE string,
           BPTaxNumber        TYPE string,
           BPTaxLongNumber    TYPE string,
           AuthorizationGroup TYPE string,
           END OF ty_partnertaxnumber,

           BEGIN OF ty_PartAddrDepdntTaxNmbr,
             BusinessPartner    TYPE string,
             AddressID          TYPE string,
             BPTaxType          TYPE string,
             BPTaxNumber        TYPE string,
             BPTaxLongNumber    TYPE string,
             AuthorizationGroup TYPE string,
           END OF ty_partaddrdepdnttaxnmbr,

           BEGIN OF ty_customer_fields,
             Customer                     TYPE string,
             AuthorizationGroup           TYPE string,
             BillingIsBlockedForCustomer  TYPE string,
*             CreatedByUser                TYPE string,
             CreationDate                 TYPE string,
             CustomerAccountGroup         TYPE string,
             CustomerClassification       TYPE string,
             CustomerFullName             TYPE string,
             CustomerName                 TYPE string,
             DeliveryIsBlocked            TYPE string,
             NFPartnerIsNaturalPerson     TYPE string,
             OrderIsBlockedForCustomer    TYPE string,
             PostingIsBlocked             TYPE boolean,
             Supplier                     TYPE string,
             CustomerCorporateGroup       TYPE string,
             FiscalAddress                TYPE string,
             Industry                     TYPE string,
             IndustryCode1                TYPE string,
             IndustryCode2                TYPE string,
             IndustryCode3                TYPE string,
             IndustryCode4                TYPE string,
             IndustryCode5                TYPE string,
             InternationalLocationNumber1 TYPE string,
             NielsenRegion                TYPE string,
*             PaymentReason                TYPE string,
             ResponsibleType              TYPE string,
             TaxNumber1                   TYPE string,
             TaxNumber2                   TYPE string,
             TaxNumber3                   TYPE string,
             TaxNumber4                   TYPE string,
             TaxNumber5                   TYPE string,
             TaxNumberType                TYPE string,
             VATRegistration              TYPE string,
             DeletionIndicator            TYPE boolean,
             ExpressTrainStationName      TYPE string,
             TrainStationName             TYPE string,
             CityCode                     TYPE string,
             County                       TYPE string,
             Xsubt                        TYPE string,
             Cfopc                        TYPE string,
             Suframa                      TYPE string,
             Rg                           TYPE string,
             Exp                          TYPE string,
             Uf                           TYPE string,
             Rgdate                       TYPE string,
             Ric                          TYPE string,
             Rne                          TYPE string,
             Rnedate                      TYPE string,
             Cnae                         TYPE string,
             Legalnat                     TYPE string,
             Crtn                         TYPE string,
             Icmstaxpay                   TYPE string,
             Indtyp                       TYPE string,
             Tdt                          TYPE string,
             Comsize                      TYPE string,
             Decregpc                     TYPE string,
             Katr1                        TYPE string,
             Katr2                        TYPE string,
             Katr3                        TYPE string,
             Katr4                        TYPE string,
             Katr5                        TYPE string,
             Katr6                        TYPE string,
             Katr7                        TYPE string,
             Katr8                        TYPE string,
             Katr9                        TYPE string,
             Katr10                       TYPE string,
           END OF ty_customer_fields,

           BEGIN OF ty_CustAddrDepdntExtIdentifier.
*               INCLUDE TYPE  ty_metadata.
    TYPES: Customer              TYPE string,
           AddressID             TYPE string,
           CustomerExternalRefID TYPE string,
           END OF ty_custaddrdepdntextidentifier,

           BEGIN OF ty_customercompany,
             Customer                       TYPE string,
             CompanyCode                    TYPE string,
             APARToleranceGroup             TYPE string,
             AccountByCustomer              TYPE string,
             AccountingClerk                TYPE string,
             AccountingClerkFaxNumber       TYPE string,
             AccountingClerkInternetAddress TYPE string,
             AccountingClerkPhoneNumber     TYPE string,
             AlternativePayerAccount        TYPE string,
             AuthorizationGroup             TYPE string,
             CollectiveInvoiceVariant       TYPE string,
             CustomerAccountNote            TYPE string,
             CustomerHeadOffice             TYPE string,
             CustomerSupplierClearingIsUsed TYPE boolean,
             HouseBank                      TYPE string,
             InterestCalculationCode        TYPE string,
             InterestCalculationDate        TYPE string,
             IntrstCalcFrequencyInMonths    TYPE string,
             IsToBeLocallyProcessed         TYPE boolean,
             ItemIsToBePaidSeparately       TYPE boolean,
             LayoutSortingRule              TYPE string,
             PaymentBlockingReason          TYPE string,
             PaymentMethodsList             TYPE string,
             PaymentReason                  TYPE string,
             PaymentTerms                   TYPE string,
             PaytAdviceIsSentbyEDI          TYPE boolean,
             PhysicalInventoryBlockInd      TYPE boolean,
             ReconciliationAccount          TYPE string,
             RecordPaymentHistoryIndicator  TYPE boolean,
             UserAtCustomer                 TYPE string,
             DeletionIndicator              TYPE boolean,
             CashPlanningGroup              TYPE string,
             KnownOrNegotiatedLeave         TYPE string,
             ValueAdjustmentKey             TYPE string,
             CustomerAccountGroup           TYPE string,
           END OF ty_customercompany,

           BEGIN OF ty_custsalesarea,
             Customer                       TYPE string,
             SalesOrganization              TYPE string,
             DistributionChannel            TYPE string,
             Division                       TYPE string,
             AccountByCustomer              TYPE string,
             AuthorizationGroup             TYPE string,
             BillingIsBlockedForCustomer    TYPE string,
             CompleteDeliveryIsDefined      TYPE boolean,
*             CreditControlArea              TYPE string,
             Currency                       TYPE string,
*             CustIsRlvtForSettlmtMgmt       TYPE boolean,
             CustomerABCClassification      TYPE string,
             CustomerAccountAssignmentGroup TYPE string,
             CustomerGroup                  TYPE string,
*             CustomerIsRebateRelevant       TYPE boolean,
             CustomerPaymentTerms           TYPE string,
             CustomerPriceGroup             TYPE string,
             CustomerPricingProcedure       TYPE string,
*             CustProdProposalProcedure      TYPE string,
             DeliveryIsBlockedForCustomer   TYPE string,
             DeliveryPriority               TYPE string,
             IncotermsClassification        TYPE string,
             IncotermsLocation2             TYPE string,
             IncotermsVersion               TYPE string,
             IncotermsLocation1             TYPE string,
*             IncotermsSupChnLoc1AddlUUID    TYPE string,
*             IncotermsSupChnLoc2AddlUUID    TYPE string,
*             IncotermsSupChnDvtgLocAddlUUID TYPE string,
             DeletionIndicator              TYPE boolean,
             IncotermsTransferLocation      TYPE string,
*             InspSbstHasNoTimeOrQuantity    TYPE boolean,
             InvoiceDate                    TYPE string,
             ItemOrderProbabilityInPercent  TYPE string,
*             ManualInvoiceMaintIsRelevant   TYPE boolean,
*             MaxNmbrOfPartialDelivery       TYPE string,
             OrderCombinationIsAllowed      TYPE boolean,
             OrderIsBlockedForCustomer      TYPE string,
*             OverdelivTolrtdLmtRatioInPct   TYPE string,
             PartialDeliveryIsAllowed       TYPE string,
             PriceListType                  TYPE string,
*             ProductUnitGroup               TYPE string,
*             ProofOfDeliveryTimeValue       TYPE string,
             SalesGroup                     TYPE string,
*             SalesItemProposal              TYPE string,
             SalesOffice                    TYPE string,
             ShippingCondition              TYPE string,
*             SlsDocIsRlvtForProofOfDeliv    TYPE boolean,
*             SlsUnlmtdOvrdelivIsAllwd       TYPE boolean,
             SupplyingPlant                 TYPE string,
             SalesDistrict                  TYPE string,
*             UnderdelivTolrtdLmtRatioInPct  TYPE string,
             InvoiceListSchedule            TYPE string,
             ExchangeRateType               TYPE string,
             AdditionalCustomerGroup1       TYPE string,
             AdditionalCustomerGroup2       TYPE string,
             AdditionalCustomerGroup3       TYPE string,
             AdditionalCustomerGroup4       TYPE string,
             AdditionalCustomerGroup5       TYPE string,
             PaymentGuaranteeProcedure      TYPE string,
             CustomerAccountGroup           TYPE string,
           END OF ty_custsalesarea,

           BEGIN OF ty_CustSalesPartnerFunc.
*               INCLUDE TYPE  ty_metadata.
    TYPES: Customer                   TYPE string,
           SalesOrganization          TYPE string,
           DistributionChannel        TYPE string,
           Division                   TYPE string,
           PartnerCounter             TYPE string,
           PartnerFunction            TYPE string,
           BPCustomerNumber           TYPE string,
           CustomerPartnerDescription TYPE string,
           DefaultPartner             TYPE boolean,
           Supplier                   TYPE string,
           PersonnelNumber            TYPE string,
           ContactPerson              TYPE string,
           AddressID                  TYPE string,
           AuthorizationGroup         TYPE string,
           END OF ty_custsalespartnerfunc,

           BEGIN OF ty_custtaxgrouping.
*               INCLUDE TYPE  ty_metadata.
    TYPES: Customer                       TYPE string,
           CustomerTaxGroupingCode        TYPE string,
           CustTaxGrpExemptionCertificate TYPE string,
           CustTaxGroupExemptionRate      TYPE string,
           CustTaxGroupExemptionStartDate TYPE string,
           CustTaxGroupExemptionEndDate   TYPE string,
           CustTaxGroupSubjectedStartDate TYPE string,
           CustTaxGroupSubjectedEndDate   TYPE string,
           END OF ty_custtaxgrouping,

           BEGIN OF ty_custunlopoint.
*               INCLUDE TYPE  ty_metadata.
    TYPES: Customer                      TYPE string,
           UnloadingPointName            TYPE string,
           CustomerFactoryCalenderCode   TYPE string,
           BPGoodsReceivingHoursCode     TYPE string,
           IsDfltBPUnloadingPoint        TYPE boolean,
           MondayMorningOpeningTime      TYPE string,
           MondayMorningClosingTime      TYPE string,
           MondayAfternoonOpeningTime    TYPE string,
           MondayAfternoonClosingTime    TYPE string,
           TuesdayMorningOpeningTime     TYPE string,
           TuesdayMorningClosingTime     TYPE string,
           TuesdayAfternoonOpeningTime   TYPE string,
           TuesdayAfternoonClosingTime   TYPE string,
           WednesdayMorningOpeningTime   TYPE string,
           WednesdayMorningClosingTime   TYPE string,
           WednesdayAfternoonOpeningTime TYPE string,
           WednesdayAfternoonClosingTime TYPE string,
           ThursdayMorningOpeningTime    TYPE string,
           ThursdayMorningClosingTime    TYPE string,
           ThursdayAfternoonOpeningTime  TYPE string,
           ThursdayAfternoonClosingTime  TYPE string,
           FridayMorningOpeningTime      TYPE string,
           FridayMorningClosingTime      TYPE string,
           FridayAfternoonOpeningTime    TYPE string,
           FridayAfternoonClosingTime    TYPE string,
           SaturdayMorningOpeningTime    TYPE string,
           SaturdayMorningClosingTime    TYPE string,
           SaturdayAfternoonOpeningTime  TYPE string,
           SaturdayAfternoonClosingTime  TYPE string,
           SundayMorningOpeningTime      TYPE string,
           SundayMorningClosingTime      TYPE string,
           SundayAfternoonOpeningTime    TYPE string,
           SundayAfternoonClosingTime    TYPE string,
           END OF ty_custunlopoint,

           BEGIN OF ty_custdeppoint.
*               INCLUDE TYPE  ty_metadata.
    TYPES: Customer                      TYPE string,
           AddressID                     TYPE string,
           UnloadingPointName            TYPE string,
           CustomerFactoryCalenderCode   TYPE string,
           BPGoodsReceivingHoursCode     TYPE string,
           IsDfltBPUnloadingPoint        TYPE boolean,
           MondayMorningOpeningTime      TYPE string,
           MondayMorningClosingTime      TYPE string,
           MondayAfternoonOpeningTime    TYPE string,
           MondayAfternoonClosingTime    TYPE string,
           TuesdayMorningOpeningTime     TYPE string,
           TuesdayMorningClosingTime     TYPE string,
           TuesdayAfternoonOpeningTime   TYPE string,
           TuesdayAfternoonClosingTime   TYPE string,
           WednesdayMorningOpeningTime   TYPE string,
           WednesdayMorningClosingTime   TYPE string,
           WednesdayAfternoonOpeningTime TYPE string,
           WednesdayAfternoonClosingTime TYPE string,
           ThursdayMorningOpeningTime    TYPE string,
           ThursdayMorningClosingTime    TYPE string,
           ThursdayAfternoonOpeningTime  TYPE string,
           ThursdayAfternoonClosingTime  TYPE string,
           FridayMorningOpeningTime      TYPE string,
           FridayMorningClosingTime      TYPE string,
           FridayAfternoonOpeningTime    TYPE string,
           FridayAfternoonClosingTime    TYPE string,
           SaturdayMorningOpeningTime    TYPE string,
           SaturdayMorningClosingTime    TYPE string,
           SaturdayAfternoonOpeningTime  TYPE string,
           SaturdayAfternoonClosingTime  TYPE string,
           SundayMorningOpeningTime      TYPE string,
           SundayMorningClosingTime      TYPE string,
           SundayAfternoonOpeningTime    TYPE string,
           SundayAfternoonClosingTime    TYPE string,
           END OF ty_custdeppoint,

           BEGIN OF ty_supplier_f,
             Supplier                       TYPE string,
             AlternativePayeeAccountNumber  TYPE string,
             AuthorizationGroup             TYPE string,
             CreationDate                   TYPE string,
             Customer                       TYPE string,
             PaymentIsBlockedForSupplier    TYPE boolean,
             PostingIsBlocked               TYPE boolean,
             PurchasingIsBlocked            TYPE boolean,
             SupplierAccountGroup           TYPE string,
             SupplierFullName               TYPE string,
             SupplierName                   TYPE string,
             VATRegistration                TYPE string,
             BirthDate                      TYPE string,
             ConcatenatedInternationalLocNo TYPE string,
             DeletionIndicator              TYPE boolean,
             FiscalAddress                  TYPE string,
             Industry                       TYPE string,
             InternationalLocationNumber1   TYPE string,
             InternationalLocationNumber2   TYPE string,
             InternationalLocationNumber3   TYPE string,
             IsNaturalPerson                TYPE string,
*             PaymentReason                  TYPE string,
             ResponsibleType                TYPE string,
             SuplrQltyInProcmtCertfnValidTo TYPE string,
             SuplrQualityManagementSystem   TYPE string,
             SupplierCorporateGroup         TYPE string,
             SupplierProcurementBlock       TYPE string,
             TaxNumber1                     TYPE string,
             TaxNumber2                     TYPE string,
             TaxNumber3                     TYPE string,
             TaxNumber4                     TYPE string,
             TaxNumber5                     TYPE string,
             TaxNumberResponsible           TYPE string,
             TaxNumberType                  TYPE string,
             SuplrProofOfDelivRlvtCode      TYPE string,
             BR_TaxIsSplit                  TYPE boolean,
             DataExchangeInstructionKey     TYPE string,
             Rg                             TYPE string,
             Exp                            TYPE string,
             Uf                             TYPE string,
             Rgdate                         TYPE string,
             Ric                            TYPE string,
             Rne                            TYPE string,
             Rnedate                        TYPE string,
             Cnae                           TYPE string,
             Legalnat                       TYPE                   string,
             Crtn                           TYPE string,
             Icmstaxpay                     TYPE string,
             Indtyp                         TYPE string,
             Tdt                            TYPE string,
             Comsize                        TYPE string,
             Decregpc                       TYPE string,
           END OF ty_supplier_f,

           BEGIN OF ty_suppliercompany_f.
*               INCLUDE TYPE  ty_metadata.
    TYPES: Supplier                     TYPE string,
           CompanyCode                  TYPE string,
           AuthorizationGroup           TYPE string,
           CompanyCodeName              TYPE string,
           PaymentBlockingReason        TYPE string,
           SupplierIsBlockedForPosting  TYPE boolean,
           AccountingClerk              TYPE string,
           AccountingClerkFaxNumber     TYPE string,
           AccountingClerkPhoneNumber   TYPE string,
           SupplierClerk                TYPE string,
           SupplierClerkURL             TYPE string,
           PaymentMethodsList           TYPE string,
*           PaymentReason                TYPE string,
           PaymentTerms                 TYPE string,
           ClearCustomerSupplier        TYPE boolean,
           IsToBeLocallyProcessed       TYPE boolean,
           ItemIsToBePaidSeparately     TYPE boolean,
           PaymentIsToBeSentByEDI       TYPE boolean,
           HouseBank                    TYPE string,
           CheckPaidDurationInDays      TYPE string,
           Currency                     TYPE string,
           BillOfExchLmtAmtInCoCodeCrcy TYPE string,
           SupplierClerkIDBySupplier    TYPE string,
           ReconciliationAccount        TYPE string,
           InterestCalculationCode      TYPE string,
           InterestCalculationDate      TYPE string,
           IntrstCalcFrequencyInMonths  TYPE string,
           SupplierHeadOffice           TYPE string,
           AlternativePayee             TYPE string,
           LayoutSortingRule            TYPE string,
           APARToleranceGroup           TYPE string,
           SupplierCertificationDate    TYPE string,
           SupplierAccountNote          TYPE string,
           WithholdingTaxCountry        TYPE string,
           DeletionIndicator            TYPE boolean,
           CashPlanningGroup            TYPE string,
           IsToBeCheckedForDuplicates   TYPE boolean,
           MinorityGroup                TYPE string,
           SupplierAccountGroup         TYPE string,
           END OF ty_suppliercompany_f,

           BEGIN OF ty_SupplierDunning.
*               INCLUDE TYPE  ty_metadata.
    TYPES: Supplier              TYPE string,
           CompanyCode           TYPE string,
           DunningArea           TYPE string,
           DunningBlock          TYPE string,
           DunningLevel          TYPE string,
           DunningProcedure      TYPE string,
           DunningRecipient      TYPE string,
           LastDunnedOn          TYPE string,
           LegDunningProcedureOn TYPE string,
           DunningClerk          TYPE string,
           AuthorizationGroup    TYPE string,
           SupplierAccountGroup  TYPE string,
           END OF ty_supplierdunning,

           BEGIN OF ty_SupplierWithHoldingTax.
*               INCLUDE TYPE  ty_metadata.
    TYPES: Supplier                  TYPE string,
           CompanyCode               TYPE string,
           WithholdingTaxType        TYPE string,
           ExemptionDateBegin        TYPE string,
           ExemptionDateEnd          TYPE string,
           ExemptionReason           TYPE string,
           IsWithholdingTaxSubject   TYPE boolean,
           RecipientType             TYPE string,
           WithholdingTaxCertificate TYPE string,
           WithholdingTaxCode        TYPE string,
           WithholdingTaxExmptPercen TYPE string,
           WithholdingTaxNumber      TYPE string,
           AuthorizationGroup        TYPE string,
           END OF ty_supplierwithholdingtax,

           BEGIN OF ty_SupplierPurchasingOrg.
*               INCLUDE TYPE  ty_metadata.
    TYPES: Supplier                       TYPE string,
           PurchasingOrganization         TYPE string,
           AutomaticEvaluatedRcptSettlmt  TYPE boolean,
           CalculationSchemaGroupCode     TYPE string,
           DeletionIndicator              TYPE boolean,
           EvaldReceiptSettlementIsActive TYPE boolean,
           IncotermsClassification        TYPE string,
           IncotermsTransferLocation      TYPE string,
           IncotermsVersion               TYPE string,
           IncotermsLocation1             TYPE string,
           IncotermsLocation2             TYPE string,
           IncotermsSupChnLoc1AddlUUID    TYPE string,
           IncotermsSupChnLoc2AddlUUID    TYPE string,
           IncotermsSupChnDvtgLocAddlUUID TYPE string,
           IntrastatCrsBorderTrMode       TYPE string,
           InvoiceIsGoodsReceiptBased     TYPE boolean,
           InvoiceIsMMServiceEntryBased   TYPE boolean,
           MaterialPlannedDeliveryDurn    TYPE string,
           MinimumOrderAmount             TYPE string,
           PaymentTerms                   TYPE string,
           PlanningCycle                  TYPE string,
           PricingDateControl             TYPE string,
           ProdStockAndSlsDataTransfPrfl  TYPE string,
           ProductUnitGroup               TYPE string,
           PurOrdAutoGenerationIsAllowed  TYPE boolean,
           PurchaseOrderCurrency          TYPE string,
           PurchasingGroup                TYPE string,
           PurchasingIsBlockedForSupplier TYPE boolean,
           RoundingProfile                TYPE string,
           ShippingCondition              TYPE string,
           SuplrDiscountInKindIsGranted   TYPE boolean,
           SuplrInvcRevalIsAllowed        TYPE boolean,
           SuplrIsRlvtForSettlmtMgmt      TYPE boolean,
           SuplrPurgOrgIsRlvtForPriceDetn TYPE boolean,
           SupplierABCClassificationCode  TYPE string,
           SupplierAccountNumber          TYPE string,
           SupplierIsReturnsSupplier      TYPE boolean,
           SupplierPhoneNumber            TYPE string,
           SupplierRespSalesPersonName    TYPE string,
           SupplierConfirmationControlKey TYPE string,
           IsOrderAcknRqd                 TYPE boolean,
           AuthorizationGroup             TYPE string,
           SupplierAccountGroup           TYPE string,
           END OF ty_supplierpurchasingorg,

           BEGIN OF ty_SupplierPartnerFunc.
*               INCLUDE TYPE  ty_metadata.
    TYPES: Supplier               TYPE string,
           PurchasingOrganization TYPE string,
           SupplierSubrange       TYPE string,
           Plant                  TYPE string,
           PartnerFunction        TYPE string,
           PartnerCounter         TYPE string,
           DefaultPartner         TYPE boolean,
           CreationDate           TYPE string,
           CreatedByUser          TYPE string,
           ReferenceSupplier      TYPE string,
           AuthorizationGroup     TYPE string,
           END OF ty_supplierpartnerfunc.



    TYPES: BEGIN OF  ty_BusinessPartnerAddress.
*             INCLUDE TYPE  ty_metadata.
             INCLUDE TYPE ty_partneraddress.
    TYPES: BEGIN OF  to_AddressUsage,
             results TYPE STANDARD TABLE OF ty_addressusage WITH EMPTY KEY.
    TYPES: END OF to_AddressUsage.
    TYPES: to_BPAddrDepdntIntlLocNumber TYPE string.
    TYPES: BEGIN OF   to_EmailAddress,
             results TYPE STANDARD TABLE OF  ty_emailaddress2 WITH EMPTY KEY.
    TYPES: END OF  to_EmailAddress.
    TYPES: BEGIN OF   to_FaxNumber,
             results TYPE STANDARD TABLE OF  ty_faxnumber  WITH EMPTY KEY.
    TYPES: END OF   to_FaxNumber .
    TYPES: BEGIN OF   to_MobilePhoneNumber,
             results TYPE STANDARD TABLE OF  ty_mobilephonenumber  WITH EMPTY KEY.
    TYPES: END OF   to_MobilePhoneNumber .
    TYPES: BEGIN OF  to_PhoneNumber,
             results TYPE STANDARD TABLE OF  ty_mobilephonenumber  WITH EMPTY KEY.
    TYPES: END OF  to_PhoneNumber .
    TYPES: BEGIN OF to_URLAddress,
             results TYPE STANDARD TABLE OF ty_URLAddress WITH EMPTY KEY.
    TYPES: END OF to_URLAddress.
    TYPES:  END OF  ty_BusinessPartnerAddress.

    TYPES: BEGIN OF ty_tables,
             BEGIN OF to_BuPaIdentification,
               results TYPE STANDARD TABLE OF ty_bupaident WITH EMPTY KEY,
             END OF  to_bupaidentification,
             BEGIN OF to_BuPaIndustry,
               results TYPE STANDARD TABLE OF  ty_bupaindust WITH EMPTY KEY,
             END OF  to_bupaindustry,
             BEGIN OF to_BusinessPartnerAddress,
               results TYPE STANDARD TABLE OF  ty_BusinessPartnerAddress WITH EMPTY KEY,
             END OF  to_BusinessPartnerAddress,
             BEGIN OF to_BusinessPartnerBank,
               results TYPE STANDARD TABLE OF ty_partnerbank WITH EMPTY KEY,
             END OF  to_BusinessPartnerBank,
             BEGIN OF to_BusinessPartnerContact,
               results TYPE STANDARD TABLE OF ty_PartnerContact WITH EMPTY KEY,
             END OF to_BusinessPartnerContact,
             BEGIN OF to_BusinessPartnerRole,
               results TYPE STANDARD TABLE OF  ty_PartnerRole WITH EMPTY KEY,
             END OF  to_BusinessPartnerRole,
             BEGIN OF to_BusinessPartnerTax,
               results TYPE STANDARD TABLE OF ty_PartnerTaxNumber WITH EMPTY KEY,
             END OF  to_BusinessPartnerTax,
             BEGIN OF to_BusPartAddrDepdntTaxNmbr,
               results TYPE STANDARD TABLE OF  ty_PartAddrDepdntTaxNmbr WITH EMPTY KEY,
             END OF  to_BusPartAddrDepdntTaxNmbr,
           END OF ty_tables.

    TYPES:  BEGIN OF ty_BPTaxGroup,
              businesspartner TYPE kunnr.
*              data            TYPE char20.
              INCLUDE TYPE bapibus1006_tax_class.
    TYPES: END OF ty_BPTaxGroup.


    TYPES: BEGIN OF ty_relat,
             RelationshipNumber            TYPE string,
             BusinessPartnerCompany        TYPE string,
             BusinessPartnerPerson         TYPE string,
             ValidityEndDate               TYPE string,
             BusinessPartner1              TYPE string,
             BusinessPartner2              TYPE string,
             ValidityStartDate             TYPE string,
             IsStandardRelationship        TYPE string,
             RelationshipCategory          TYPE string,
             BPRelationshipType            TYPE string,
             BusPartRelshpIsRoleDefinition TYPE string,
           END OF ty_relat.

    TYPES: BEGIN OF ty_ztables,
             BEGIN OF to_bprelationship,
               results TYPE STANDARD TABLE OF ty_relat WITH EMPTY KEY,
             END OF to_bprelationship,
             BEGIN OF to_BPTaxGroup,
               results TYPE STANDARD TABLE OF ty_BPTaxGroup WITH EMPTY KEY,
             END OF to_BPTaxGroup.
    TYPES END OF ty_ztables.

    TYPES: BEGIN OF ty_customer_company.
*             INCLUDE TYPE  ty_metadata.
             INCLUDE TYPE ty_customercompany.
    TYPES: BEGIN OF to_CompanyText,
             results TYPE STANDARD TABLE OF A_CustomerCompanyText WITH EMPTY KEY,
           END OF to_CompanyText,
           BEGIN OF to_CustomerDunning,
             results TYPE STANDARD TABLE OF A_CustomerDunning WITH EMPTY KEY,
           END OF to_CustomerDunning,
           BEGIN OF to_ithHoldingTax,
             results TYPE STANDARD TABLE OF A_CustomerWithHoldingTax  WITH EMPTY KEY,
           END OF to_ithHoldingTax,
         END OF ty_customer_company.

    TYPES: BEGIN OF ty_customer_SalesArea.
*             INCLUDE TYPE ty_metadata.
             INCLUDE TYPE ty_custsalesarea.
    TYPES: BEGIN OF to_PartnerFunction,
             results TYPE STANDARD TABLE OF ty_CustSalesPartnerFunc WITH EMPTY KEY,
           END OF to_PartnerFunction,
           BEGIN OF to_SalesAreaTax,
             results TYPE STANDARD TABLE OF A_CustomerSalesAreaTax WITH EMPTY KEY,
           END OF to_SalesAreaTax,
           BEGIN OF to_SalesAreaText,
             results TYPE STANDARD TABLE OF A_CustomerSalesAreaText  WITH EMPTY KEY,
           END OF to_SalesAreaText,
           BEGIN OF to_SlsAreaAddrDepdntInfo,
             results TYPE STANDARD TABLE OF A_CustSlsAreaAddrDepdntInfo  WITH EMPTY KEY,
           END OF to_SlsAreaAddrDepdntInfo,
         END OF ty_customer_salesarea.

    TYPES: BEGIN OF  ty_customer,
             BEGIN OF to_Customer.
               INCLUDE TYPE ty_customer_fields.
    TYPES: BEGIN OF to_CustAddrDepdntExtIdentifier,
             results TYPE STANDARD TABLE OF ty_CustAddrDepdntExtIdentifier WITH EMPTY KEY,
           END OF to_CustAddrDepdntExtIdentifier,
           BEGIN OF to_CustAddrDepdntInformation,
             results TYPE STANDARD TABLE OF A_CustAddrDepdntInformation WITH EMPTY KEY,
           END OF to_CustAddrDepdntInformation,
           BEGIN OF to_CustomerCompany,
             results TYPE STANDARD TABLE OF ty_customer_company WITH EMPTY KEY,
           END OF to_CustomerCompany,
           BEGIN OF to_CustomerSalesArea,
             results TYPE STANDARD TABLE OF ty_customer_SalesArea WITH EMPTY KEY,
           END OF to_CustomerSalesArea,
           BEGIN OF to_CustomerTaxGrouping,
             results TYPE STANDARD TABLE OF ty_custtaxgrouping WITH EMPTY KEY,
           END OF to_CustomerTaxGrouping,
           BEGIN OF to_CustomerText,
             results TYPE STANDARD TABLE OF A_CustomerText WITH EMPTY KEY,
           END OF to_CustomerText,
           BEGIN OF to_CustomerUnloadingPoint,
             results TYPE STANDARD TABLE OF ty_custunlopoint WITH EMPTY KEY,
           END OF to_CustomerUnloadingPoint,
           BEGIN OF to_CustUnldgPtAddrDepdntInfo,
             results TYPE STANDARD TABLE OF ty_custdeppoint WITH EMPTY KEY,
           END OF to_CustUnldgPtAddrDepdntInfo,
         END OF to_Customer,
       END OF ty_customer.

    TYPES: BEGIN OF ty_supplier_company.
             INCLUDE TYPE ty_suppliercompany_f.
    TYPES: BEGIN OF to_CompanyText,
             results TYPE STANDARD TABLE OF A_SupplierCompanyText WITH EMPTY KEY,
           END OF to_CompanyText,
           BEGIN OF to_SupplierDunning,
             results TYPE STANDARD TABLE OF ty_SupplierDunning WITH EMPTY KEY,
           END OF to_SupplierDunning,
           BEGIN OF to_SupplierWithHoldingTax,
             results TYPE STANDARD TABLE OF ty_SupplierWithHoldingTax WITH EMPTY KEY,
           END OF to_supplierwithholdingtax,
         END OF ty_supplier_company.

    TYPES: BEGIN OF ty_supplier_PurchasingOrg.
             INCLUDE TYPE ty_supplierpurchasingorg.
    TYPES: BEGIN OF to_PartnerFunction,
             results TYPE STANDARD TABLE OF ty_SupplierPartnerFunc WITH EMPTY KEY,
           END OF to_PartnerFunction,
           BEGIN OF to_PurchasingOrgText,
             results TYPE STANDARD TABLE OF A_SupplierPurchasingOrgText WITH EMPTY KEY,
           END OF to_PurchasingOrgText,
         END OF ty_supplier_purchasingorg.

    TYPES: BEGIN OF  ty_supplier,
             BEGIN OF to_supplier.
               INCLUDE TYPE ty_supplier_f.
    TYPES: BEGIN OF to_SupplierCompany,
             results TYPE STANDARD TABLE OF ty_supplier_company WITH EMPTY KEY,
           END OF to_SupplierCompany,
           BEGIN OF to_SupplierPurchasingOrg,
             results TYPE STANDARD TABLE OF ty_supplier_PurchasingOrg WITH EMPTY KEY,
           END OF to_SupplierPurchasingOrg,
           BEGIN OF to_SupplierText,
             results TYPE STANDARD TABLE OF A_SupplierText WITH EMPTY KEY,
           END OF to_SupplierText,
         END OF to_supplier,
       END OF ty_supplier.

    TYPES: BEGIN OF ty_data,
             BEGIN OF d.
*               INCLUDE TYPE ty_metadata.
               INCLUDE TYPE ty_partner.
               INCLUDE TYPE ty_tables.
               INCLUDE TYPE ty_customer.
               INCLUDE TYPE ty_supplier.
               INCLUDE TYPE ty_ztables.
    TYPES: END OF d.
    TYPES: END OF  ty_data.

    TYPES: BEGIN OF ty_data_b,
             BEGIN OF d.
*               INCLUDE TYPE ty_metadata.
               INCLUDE TYPE ty_partner.
               INCLUDE TYPE ty_tables.
               INCLUDE TYPE ty_customer.
               INCLUDE TYPE ty_supplier.
    TYPES: END OF d.
    TYPES: END OF  ty_data_b.

    TYPES: BEGIN OF ty_data_address,
             BEGIN OF d.
    TYPES: results TYPE STANDARD TABLE OF ty_businesspartneraddress WITH EMPTY KEY,
           END OF d.
    TYPES:    END OF ty_data_address.

    TYPES: BEGIN OF ty_url_ret,
             ValidityStartDate   TYPE string,
             IsDefaultURLAddress TYPE string,
           END OF ty_url_ret.

    TYPES: BEGIN OF ty_param,
             chave2    TYPE ze_param_chave2,
             chave3    TYPE ze_param_chave3,
             low       TYPE ze_param_low,
             high      TYPE ze_param_high,
             Descricao TYPE ze_param_desc,
           END OF ty_param.

    TYPES: BEGIN OF ty_usage,
             addrnumber   TYPE ad_addrnum,
             address_guid TYPE  bu_address_guid,
             adext        TYPE bu_adext,
           END OF ty_usage.

    TYPES: BEGIN OF ty_usage_change,
             BusinessPartner    TYPE  bu_partner,
             ValidityEndDate    TYPE  dats,
             AddressUsage       TYPE  bu_adrkind,
             AddressID          TYPE  ad_addrnum,
             ValidityStartDate  TYPE  bu_advw_valid_from,
             StandardUsage      TYPE  bu_xdfadu,
             AuthorizationGroup TYPE  bu_augrp,
           END OF ty_usage_change.

    TYPES: BEGIN OF ty_bapi,
             bapiaduri     TYPE STANDARD TABLE OF bapiaduri WITH EMPTY KEY,
             bapiadurix    TYPE STANDARD TABLE OF bapiadurix WITH EMPTY KEY,
             bapiadsmtp    TYPE STANDARD TABLE OF bapiadsmtp WITH EMPTY KEY,
             bapiadsmtpx   TYPE STANDARD TABLE OF bapiadsmtx WITH EMPTY KEY,
             bapiadtel     TYPE STANDARD TABLE OF bapiadtel WITH EMPTY KEY,
             bapiadtelx    TYPE STANDARD TABLE OF bapiadtelx WITH EMPTY KEY,
             bapiadfax     TYPE STANDARD TABLE OF bapiadfax WITH EMPTY KEY,
             bapiadfaxx    TYPE STANDARD TABLE OF bapiadfaxx WITH EMPTY KEY,
             addressusage  TYPE STANDARD TABLE OF bapibus1006_addressusage WITH EMPTY KEY,
             addressusagex TYPE STANDARD TABLE OF bapibus1006_addressusage_x WITH EMPTY KEY,
           END OF ty_bapi.

    TYPES:
      ty_params      TYPE STANDARD TABLE OF ty_param,
      ty_data_c      TYPE STANDARD TABLE OF ty_businesspartneraddress WITH EMPTY KEY,
      ty_control_int TYPE STANDARD TABLE OF ztbp_control_int WITH EMPTY KEY,
      ty_bp          TYPE RANGE OF bu_partner.

    DATA:
      gt_return          TYPE bapiret2_tab,
      gt_control_int     TYPE STANDARD TABLE OF ztbp_control_int WITH EMPTY KEY,
      gt_bps_oil         TYPE STANDARD TABLE OF bu_partner,
      gv_destination_oil TYPE sy-mandt.

    METHODS:
      constructor
        IMPORTING
          iv_bp     TYPE kunnr OPTIONAL
          iv_action TYPE c1 OPTIONAL
          it_param  TYPE ty_params OPTIONAL.

    METHODS start
      IMPORTING it_bp     TYPE ty_bp
                iv_action TYPE ze_action OPTIONAL
      EXPORTING et_return TYPE bapiret2_t.

    METHODS validate
      IMPORTING it_bp     TYPE ty_bp
                iv_action TYPE ze_action
      EXPORTING et_bp     TYPE ty_bp
                et_return TYPE bapiret2_t.

    METHODS replica_bupa_role_tm
      IMPORTING iv_bp     TYPE bu_partner
      EXPORTING et_return TYPE bapiret2_t.

    METHODS:
      execute
        RETURNING VALUE(rt_return) TYPE bapiret2_tab.

    METHODS:
      validate_data
        CHANGING
          ct_control_int TYPE ty_control_int
          ct_bp          TYPE ty_bp.

    METHODS check_job
      RETURNING VALUE(rv_job) TYPE char1.

    METHODS release_data
      IMPORTING
        iv_bp TYPE kunnr.

  PROTECTED SECTION.
  PRIVATE SECTION.

    CONSTANTS:
      gc_patch          TYPE string VALUE 'PATCH',
      gc_delete         TYPE string VALUE 'DELETE',
      gc_post           TYPE string VALUE 'POST',
      gc_get            TYPE string VALUE 'GET',
      gc_role           TYPE ze_param_chave2 VALUE 'BUSINESSPARTNERROLE',
      gc_identification TYPE ze_param_chave2 VALUE 'BUPAIDENTIFICATION',
      gc_ranger         TYPE ze_param_chave2 VALUE 'RANGER',
      gc_alterar        TYPE char10 VALUE 'BP_ALTERAR',

      BEGIN OF gc_message,
        id TYPE symsgid     VALUE 'ZBP_LOG_API_BP',
      END OF gc_message.

    DATA:
      gv_time                       TYPE string,
      gv_uri_businesspartner        TYPE string,
      gv_uri_a_businesspartner      TYPE string,
      gv_uri_to_bupaidentification  TYPE string,
      gv_uri_bupaidentification     TYPE string,
      gv_uri_to_bupaindustry        TYPE string,
      gv_uri_bupaindustry           TYPE string,
      gv_uri_to_bupaaddress         TYPE string,
      gv_uri_to_bupaaddress2        TYPE string,
      gv_uri_to_businesspartnerbank TYPE string,
      gv_uri_businesspartnerbank    TYPE string,
      gv_uri_to_businesspartnerrole TYPE string,
      gv_uri_businessrole           TYPE string,
      gv_uri_to_businesspartnertax  TYPE string,
      gv_uri_businesstaxnumber      TYPE string,
      gv_uri_to_customer            TYPE string,
      gv_uri_to_supplier            TYPE string,
      gv_uri_businesspartneraddress TYPE string,
      gv_uri_to_addressusage        TYPE string,
      gv_uri_bupaaddressusage       TYPE string,
      gv_uri_to_emailaddress        TYPE string,
      gv_uri_businessemailaddress   TYPE string,
      gv_uri_to_faxnumber           TYPE string,
      gv_uri_to_businessfaxnumber   TYPE string,
      gv_uri_businessfaxnumber      TYPE string,
      gv_uri_to_mobilephonenumber   TYPE string,
      gv_uri_businessmobilephone    TYPE string,
      gv_uri_to_phonenumber         TYPE string,
      gv_uri_businessphonenumber    TYPE string,
      gv_uri_role_get               TYPE string,
      gv_uri_to_urladdress          TYPE string,
      gv_uri_businessurl            TYPE string,
      gv_uri_to_relationship        TYPE string,
      gv_uri_to_bptaxgroup          TYPE string,
      gv_destination_select         TYPE string,
      gv_destination_rfc            TYPE char40,
      gv_block                      TYPE string.

    TYPES:
      ty_bpaddress         TYPE STANDARD TABLE OF ty_businesspartneraddress WITH EMPTY KEY,
      ty_bpaddressusage    TYPE STANDARD TABLE OF ty_addressusage WITH EMPTY KEY,
      ty_EmailAddress      TYPE STANDARD TABLE OF ty_emailaddress2  WITH EMPTY KEY,
      ty_fax               TYPE STANDARD TABLE OF ty_faxnumber  WITH EMPTY KEY,
      ty_mobphone          TYPE STANDARD TABLE OF ty_mobilephonenumber  WITH EMPTY KEY,
      ty_phonenumber       TYPE STANDARD TABLE OF ty_mobilephonenumber WITH EMPTY KEY,
      ty_url               TYPE STANDARD TABLE OF ty_urladdress WITH EMPTY KEY,
      ty_usage_t           TYPE   STANDARD TABLE OF ty_usage WITH EMPTY KEY,
      ty_PartnerAddres     TYPE STANDARD TABLE OF ty_BusinessPartnerAddress WITH EMPTY KEY,
      ty_addressusage_bapi TYPE STANDARD TABLE OF bapibus1006_addressusage,
      ty_usage_table       TYPE STANDARD TABLE OF a_bupaaddressusage WITH EMPTY KEY,
      BEGIN OF ty_helper_type_line,
        businesspartner TYPE a_businesspartner-businesspartner,
      END OF ty_helper_type_line.
    TYPES ty_helper_type TYPE TABLE OF ty_helper_type_line WITH EMPTY KEY.
    METHODS sort
      CHANGING
        ct_bps TYPE ty_helper_type.

    DATA:
      gv_bp            TYPE kunnr,
      gv_action        TYPE c1,
      gv_dest_retail   TYPE char20,
      gv_dest_oil      TYPE char20,
      gv_uri           TYPE string,
      gt_message       TYPE bapiret2_tab,
      gt_param         TYPE STANDARD TABLE OF ty_param,
      gt_but020_remoto TYPE  ty_usage_t,
      gt_but020        TYPE  ty_usage_t,
      gt_usage_local   TYPE STANDARD TABLE OF but021_fs,
      gt_usage_remoto  TYPE STANDARD TABLE OF but021_fs.

    METHODS send_data
      IMPORTING
                !iv_uri          TYPE string
                !iv_method       TYPE string
                !iv_destination  TYPE char20
                !it_table        TYPE ANY TABLE OPTIONAL
                !is_structure    TYPE any OPTIONAL
                !iv_json         TYPE string OPTIONAL
      CHANGING
                cv_value         TYPE string OPTIONAL
      RETURNING VALUE(rv_result) TYPE string.

    METHODS analyze_call.
    METHODS start_update.
    METHODS get_json
      IMPORTING
        iv_destination TYPE char20
        iv_method      TYPE string
      CHANGING
        cv_uri         TYPE string
      RETURNING
        VALUE(rv_json) TYPE string.
    METHODS start_insert.
    METHODS deserialize_json
      IMPORTING
        iv_json      TYPE string
      EXPORTING
        es_structure TYPE any.
*      RETURNING VALUE(rs_json) TYPE ty_data.
    METHODS deserialize_json_b
      IMPORTING
                iv_json        TYPE string
      RETURNING VALUE(rs_json) TYPE ty_data_b.
    METHODS deserialize_json_c
      IMPORTING
                iv_json        TYPE string
      RETURNING VALUE(rt_json) TYPE ty_data_address.
    METHODS serialize_json
      IMPORTING
        is_json        TYPE any
        iv_compress    TYPE /ui2/cl_json=>bool DEFAULT ''
      RETURNING
        VALUE(rv_json) TYPE string.
    METHODS serialize_tables_json
      IMPORTING
        it_return      TYPE ty_bapi
        iv_compress    TYPE /ui2/cl_json=>bool DEFAULT ''
      RETURNING
        VALUE(rv_json) TYPE string.
    METHODS get_mappings
      RETURNING
        VALUE(rt_result) TYPE /ui2/cl_json=>name_mappings.
    METHODS validate_changes
      IMPORTING
        iv_json_local  TYPE string
        is_json_local  TYPE zclbp_replica_dados=>ty_data
        iv_json_remoto TYPE string
        is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS
      to_bupaidentification
        IMPORTING
          iv_json_local  TYPE string
          is_json_local  TYPE zclbp_replica_dados=>ty_data
          iv_json_remoto TYPE string
          is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS to_bupaindustry
      IMPORTING
        iv_json_local  TYPE string
        is_json_local  TYPE zclbp_replica_dados=>ty_data
        iv_json_remoto TYPE string
        is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS to_businesspartneraddress
      IMPORTING
        iv_json_local  TYPE string
        is_json_local  TYPE zclbp_replica_dados=>ty_data
        iv_json_remoto TYPE string
        is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS change_businesspartneraddress
      IMPORTING
        is_aderess TYPE ty_partneraddress
      CHANGING
        cv_json    TYPE string.
    METHODS conv_raw16
      IMPORTING
        iv_raw  TYPE a_businesspartneraddress-addressuuid
      CHANGING
        cv_json TYPE string.
    METHODS to_addressusage
      IMPORTING
        is_address_local       TYPE ty_bpaddressusage
        is_address_main_remoto TYPE ty_businesspartneraddress
        is_address_remoto      TYPE  ty_bpaddressusage
      EXPORTING
        ev_ok                  TYPE char1
      CHANGING
        cv_json                TYPE string
        cs_Address             TYPE ty_businesspartneraddress.
    METHODS change_addressusage
      IMPORTING
        iv_date        TYPE string
      CHANGING
        cv_json        TYPE string OPTIONAL
      RETURNING
        VALUE(rv_date) TYPE string.
    METHODS to_emailaddress
      IMPORTING
        is_emailaddress_local  TYPE ty_emailaddress
        is_emailaddress_remoto TYPE ty_EmailAddress
        iv_addressid           TYPE string
      CHANGING
        cv_json                TYPE string.
    METHODS change_emailaddress
      IMPORTING
        is_address TYPE a_addressemailaddress
        iv_method  TYPE string
      CHANGING
        cv_json    TYPE string.
    METHODS to_faxnumber
      IMPORTING
        it_faxnumber_local  TYPE ty_fax
        it_faxnumber_remoto TYPE ty_fax
        iv_addressid        TYPE string
      CHANGING
        cv_json             TYPE string.
    METHODS to_mobilephonenumber
      IMPORTING
        it_mobphone_local  TYPE ty_mobphone
        it_mobphone_remoto TYPE ty_mobphone
        iv_addressid       TYPE string
      CHANGING
        cv_json            TYPE string.
    METHODS to_phonenumber
      IMPORTING
        it_phonenumber_local  TYPE  ty_phonenumber
        it_phonenumber_remoto TYPE ty_phonenumber
        iv_addressid          TYPE string
      CHANGING
        cv_json               TYPE string.
    METHODS to_urladdress
      IMPORTING
        it_urladdress_local  TYPE ty_url
        it_urladdress_remoto TYPE ty_url
        iv_addressid         TYPE string
      CHANGING
        cv_json              TYPE string.
    METHODS change_urladdress
      IMPORTING
                is_address    TYPE ty_urladdress
                iv_method     TYPE string
      CHANGING
                cv_json       TYPE string OPTIONAL
      RETURNING VALUE(rs_ret) TYPE ty_url_ret.
    METHODS to_businesspartnerbank
      IMPORTING
        iv_json_local  TYPE string
        is_json_local  TYPE zclbp_replica_dados=>ty_data
        iv_json_remoto TYPE string
        is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS change_businesspartnerbank
      IMPORTING
        is_ident TYPE a_businesspartnerbank
      CHANGING
        cv_json  TYPE string.
    METHODS to_businesspartnerrole
      IMPORTING
        iv_json_local  TYPE string
        is_json_local  TYPE zclbp_replica_dados=>ty_data
        iv_json_remoto TYPE string
        is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS change_partnerrole
      IMPORTING
        is_ident TYPE a_businesspartnerrole
      CHANGING
        cv_json  TYPE string.
    METHODS to_businesspartnertax
      IMPORTING
        iv_json_local  TYPE string
        is_json_local  TYPE zclbp_replica_dados=>ty_data
        iv_json_remoto TYPE string
        is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS to_customer
      IMPORTING
        iv_json_local  TYPE string
        is_json_local  TYPE zclbp_replica_dados=>ty_data
        iv_json_remoto TYPE string
        is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS to_supplier
      IMPORTING
        iv_json_local  TYPE string
        is_json_local  TYPE zclbp_replica_dados=>ty_data
        iv_json_remoto TYPE string
        is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS get_params.
    METHODS a_businesspartner
      IMPORTING
        iv_json_local  TYPE string
        is_json_local  TYPE zclbp_replica_dados=>ty_data
        iv_json_remoto TYPE string
        is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS change_businesspartner
      IMPORTING
        is_bp   TYPE ty_partner
      CHANGING
        cv_json TYPE string.
    METHODS conv_field_value
      IMPORTING
        iv_value        TYPE a_businesspartner-isfemale
        iv_value_change TYPE string
        iv_field        TYPE string
      CHANGING
        cv_json         TYPE string.

    METHODS insert_quotation
      IMPORTING
        iv_value TYPE string
        iv_field TYPE any
      CHANGING
        cv_json  TYPE string.
    METHODS to_relationship
      IMPORTING
        iv_json_local  TYPE string
        is_json_local  TYPE zclbp_replica_dados=>ty_data
        iv_json_remoto TYPE string
        is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS to_bptaxgroup
      IMPORTING
        iv_json_local  TYPE string
        is_json_local  TYPE zclbp_replica_dados=>ty_data
        iv_json_remoto TYPE string
        is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS replace_relat
      CHANGING
        cs_relat TYPE zclbp_replica_dados=>ty_relat.
    METHODS replace_json
      IMPORTING
        iv_create TYPE char1 OPTIONAL
      CHANGING
        cv_json   TYPE string.
    METHODS change_structure
      CHANGING
        cs_json          TYPE zclbp_replica_dados=>ty_data_b
      RETURNING
        VALUE(rv_result) TYPE zclbp_replica_dados=>ty_data_b.
    METHODS call_commit.
    METHODS send_log
      IMPORTING
        it_return   TYPE bapiret2_t
        iv_addresid TYPE sysuuid_c OPTIONAL
        iv_method   TYPE string
        iv_json     TYPE string OPTIONAL.
    METHODS select
      IMPORTING
        it_local  TYPE ty_partneraddres
        it_remoto TYPE ty_partneraddres.
    METHODS validate_bp
*      IMPORTING
*        iv_bp            TYPE kunnr
      RETURNING
        VALUE(rt_result) TYPE bapiret2_tab.
    METHODS start_address_equalization.
    METHODS validate_changes_address
      IMPORTING
        iv_json_local  TYPE string
        is_json_local  TYPE zclbp_replica_dados=>ty_data
        iv_json_remoto TYPE string
        is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS check_businesspartner
      IMPORTING
                is_remoto     TYPE zclbp_replica_dados=>ty_partner
                is_local      TYPE zclbp_replica_dados=>ty_partner
      RETURNING VALUE(rv_dif) TYPE char1.
    METHODS change_struc_address
      CHANGING
        cs_json TYPE zclbp_replica_dados=>ty_data_b.
    METHODS change_struc_identific
      CHANGING
        cs_json TYPE zclbp_replica_dados=>ty_data_b.
    METHODS change_struc_role
      CHANGING
        cs_json TYPE zclbp_replica_dados=>ty_data_b.
    METHODS connection_close.
    METHODS check_qtd_usages
      IMPORTING
        iv_addresid TYPE char10
        iv_action   TYPE char1 OPTIONAL
      CHANGING
        ct_usages   TYPE ty_addressusage_bapi.
    METHODS start_driver_equalization.
    METHODS validate_changes_driver
      IMPORTING
        iv_json_local  TYPE string
        is_json_local  TYPE zclbp_replica_dados=>ty_data
        iv_json_remoto TYPE string
        is_json_remoto TYPE zclbp_replica_dados=>ty_data.
    METHODS prr_upd_local
      IMPORTING
        iv_bp   TYPE char10
        iv_time TYPE dec15.
    METHODS prr_upd_remoto
      IMPORTING
        iv_bp   TYPE char10
        iv_time TYPE dec15.
    METHODS validate_cfopc
      IMPORTING
        iv_group         TYPE string
        is_customer      TYPE ty_customer-to_customer
      RETURNING
        VALUE(rt_result) TYPE bapiret2_tab.


ENDCLASS.



CLASS zclbp_replica_dados IMPLEMENTATION.


  METHOD constructor.

    gt_param = it_param.

    gv_bp = iv_bp.
    gv_action = iv_action.

    get_params(  ).

  ENDMETHOD.


  METHOD execute.

    analyze_call(  ).

    IF NOT line_exists( gt_message[ type = if_xo_const_message=>error ] ).

      me->replica_bupa_role_tm( EXPORTING iv_bp     = gv_bp
                                IMPORTING et_return = DATA(lt_return) ).

      INSERT LINES OF lt_return INTO TABLE rt_return.

    ENDIF.

    rt_return = gt_message.

  ENDMETHOD.


  METHOD send_data.

    DATA:
      lv_code              TYPE i,
      lv_reason            TYPE string,
      lv_taskname          TYPE char10,
      lv_content_type_form TYPE string VALUE 'application/json; charset=utf-8',
      lt_cookies           TYPE tihttpcki,
      lv_cookies           TYPE string.

    cl_http_client=>create_by_destination(
                                              EXPORTING
                                                    destination              =  iv_destination
                                              IMPORTING
                                                    client                   = DATA(lo_client)
                                             EXCEPTIONS
                                                    argument_not_found       = 1
                                                    destination_not_found    = 2
                                                    destination_no_authority = 3
                                                    plugin_not_active        = 4
                                                    internal_error           = 5
                                                    OTHERS                   = 6 ).

    IF sy-subrc IS INITIAL.

      IF iv_method EQ gc_patch OR
          iv_method EQ gc_post OR
          iv_method EQ gc_delete.

        lo_client->request->set_header_field( name = 'X-REQUESTED-WITH' value = 'X'  ).
        lo_client->request->set_header_field( name = CONV #( TEXT-003 ) value = 'application/json'  ).
        lo_client->request->set_header_field( name = CONV #( TEXT-004 ) value = 'application/json'  ).
        lo_client->request->set_header_field( name = CONV #( TEXT-006 ) value = 'keep-alive'  ).

      ENDIF.

      cl_http_utility=>set_request_uri(
            EXPORTING
                request = lo_client->request
                uri         = iv_uri ).

      lo_client->request->set_method( iv_method ).

      IF iv_json IS NOT INITIAL.
        lo_client->request->set_cdata( iv_json ).
      ENDIF.

      lo_client->send(
            EXCEPTIONS
                http_communication_failure = 1
             OTHERS                     = 99 ).

      lo_client->receive( EXCEPTIONS OTHERS = 9 ).

      IF sy-subrc EQ 0.

        lo_client->response->get_status(
            IMPORTING
                code   = lv_code
                 reason = lv_reason ).

        rv_result = COND #( WHEN iv_method EQ  gc_delete THEN lo_client->response->get_data( ) ELSE lo_client->response->get_cdata( ) ).

        DATA(lv_block_user) = |{ TEXT-050 } { gv_block }|.

        IF rv_result CS lv_block_user. " Reprocessar quando BP_USER bloquear BP.

          WAIT UP TO 1 SECONDS.

          CLEAR:  rv_result.

          lo_client->send(
                EXCEPTIONS
                    http_communication_failure = 1
                 OTHERS                     = 99 ).

          lo_client->receive( EXCEPTIONS OTHERS = 9 ).

          IF sy-subrc EQ 0.

            lo_client->response->get_status(
                IMPORTING
                    code   = lv_code
                     reason = lv_reason ).

            rv_result = COND #( WHEN iv_method EQ  gc_delete THEN lo_client->response->get_data( ) ELSE lo_client->response->get_cdata( ) ).

          ENDIF.

        ENDIF.

        IF rv_result CS gc_values-error.
          gt_message = VALUE #( ( type = gc_values-e message = rv_result message_v1 = gv_bp ) ).
        ENDIF.

      ENDIF.

      lo_client->close( ).

      IF iv_destination NE gv_dest_retail.

        lv_taskname = sy-index.

        CALL FUNCTION 'ZFMBP_LOG_API_BP'
          STARTING NEW TASK lv_taskname
          EXPORTING
            iv_processo    = iv_uri
            iv_metodo      = iv_method
            iv_json        = iv_json
            iv_json_ret    = rv_result
            iv_code        = lv_code
            iv_reason      = lv_reason
            iv_destination = iv_destination.

      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD analyze_call.

    CASE gv_action.
      WHEN gc_values-i.
        start_insert(  ).
      WHEN gc_values-u.
        start_update(  ).
      WHEN gc_values-a.
        start_address_equalization(  ).
      WHEN gc_values-m.
        start_driver_equalization(  ).
    ENDCASE.

  ENDMETHOD.


  METHOD start_update.

    DATA:
      ls_json_local  TYPE ty_data,
      ls_json_remoto TYPE ty_data.

    DATA(lt_return) = validate_bp(  ).

    IF  lt_return IS  INITIAL.

      DATA(lv_json_local) = get_json(  EXPORTING iv_destination = gv_dest_retail iv_method = gc_get CHANGING cv_uri = gv_uri ).
      DATA(lv_json_remoto) = get_json(  EXPORTING iv_destination = gv_dest_oil  iv_method = gc_get CHANGING cv_uri = gv_uri ).

      CHECK ( lv_json_local IS NOT INITIAL AND lv_json_remoto IS NOT INITIAL ).

      deserialize_json( EXPORTING iv_json = lv_json_local IMPORTING es_structure = ls_json_local ).
      deserialize_json( EXPORTING iv_json = lv_json_remoto IMPORTING es_structure = ls_json_remoto ).

      LOOP AT ls_json_remoto-d-to_businesspartneraddress-results ASSIGNING FIELD-SYMBOL(<fs_remoto>). " Validar equalização de endereços
        IF NOT line_exists( ls_json_local-d-to_businesspartneraddress-results[ addressid = <fs_remoto>-addressidbyexternalsystem ] ).

          MESSAGE e014(zbp_log_api_bp) WITH gv_bp INTO DATA(lv_message).

          CALL FUNCTION 'ZFMBP_LOG_API_BP'
            STARTING NEW TASK 'ZBP_LOG_API_BP'
            EXPORTING
              iv_processo    = gv_uri_a_businesspartner
              iv_metodo      = gc_get
              iv_json_ret    = serialize_json( is_json = lv_message )
              iv_destination = COND #( WHEN ls_json_local IS INITIAL THEN gv_dest_retail ELSE gv_dest_oil ).

          gt_message =  VALUE #( ( type = 'E' message = TEXT-051 message_v1 = gv_bp ) ).

          RETURN.

        ENDIF.
      ENDLOOP.

      IF ( ls_json_local IS NOT INITIAL AND ls_json_remoto IS NOT INITIAL ).

        validate_changes(
       EXPORTING
        iv_json_local = lv_json_local
        is_json_local = ls_json_local
        iv_json_remoto = lv_json_remoto
        is_json_remoto = ls_json_remoto ).

      ELSE.

        CALL FUNCTION 'ZFMBP_LOG_API_BP'
          STARTING NEW TASK 'ZBP_LOG_API_BP'
          EXPORTING
            iv_processo    = gv_uri_a_businesspartner
            iv_metodo      = gc_get
            iv_json_ret    = serialize_json( is_json = CONV string( TEXT-048 ) )
            iv_destination = COND #( WHEN ls_json_local IS INITIAL THEN gv_dest_retail ELSE gv_dest_oil ).

        gt_message =  VALUE #( ( type = 'E' message = TEXT-048 message_v1 = gv_bp ) ).

      ENDIF.

    ELSE.

      CALL FUNCTION 'ZFMBP_LOG_API_BP'
        STARTING NEW TASK 'ZBP_LOG_API_BP'
        EXPORTING
          iv_processo    = gv_uri_a_businesspartner
          iv_metodo      = gc_get
          iv_json_ret    = serialize_json( is_json = lt_return )
          iv_destination = COND #( WHEN ls_json_local IS INITIAL THEN gv_dest_retail ELSE gv_dest_oil ).

      APPEND LINES OF lt_return TO gt_message.

    ENDIF.

  ENDMETHOD.


  METHOD get_json.

    DATA: lt_data TYPE STANDARD TABLE OF char1.

    REPLACE gc_alterar IN cv_uri WITH gv_bp.

    APPEND abap_true TO lt_data.

    EXPORT lt_data FROM lt_data TO DATABASE indx(zz) ID abap_true.

    rv_json = send_data(
        iv_uri = cv_uri
        iv_method = gc_get
        iv_destination = iv_destination
     ).

    DELETE FROM DATABASE indx(zz) ID abap_true.

  ENDMETHOD.


  METHOD start_insert.

    DATA(lt_return) = validate_bp(  ).

    IF  lt_return IS  INITIAL.

      DATA(lv_json) = get_json( EXPORTING iv_destination = gv_dest_retail iv_method = gc_get CHANGING cv_uri = gv_uri  ).

      CHECK lv_json IS NOT INITIAL.

      DATA(ls_json_local) = deserialize_json_b( lv_json ).

      change_structure( CHANGING cs_json = ls_json_local ).

      lv_json = /ui2/cl_json=>serialize( data = ls_json_local  name_mappings = get_mappings(  )  ).

      replace_json( EXPORTING iv_create = abap_true CHANGING cv_json = lv_json ).

      send_data(
      iv_uri = gv_uri_businesspartner
      iv_method = gc_post
      iv_destination = gv_dest_oil
      iv_json = lv_json
    ).

    ELSE.

      CALL FUNCTION 'ZFMBP_LOG_API_BP'
        STARTING NEW TASK 'ZBP_LOG_API_BP'
        EXPORTING
          iv_processo    = gv_uri_a_businesspartner
          iv_metodo      = gc_get
          iv_json_ret    = serialize_json( is_json = lt_return )
          iv_destination = COND #( WHEN ls_json_local IS INITIAL THEN gv_dest_retail ELSE gv_dest_oil ).

      APPEND LINES OF lt_return TO gt_message.

    ENDIF.

  ENDMETHOD.


  METHOD deserialize_json.

    DATA: ls_bp TYPE ty_data.

    /ui2/cl_json=>deserialize(
            EXPORTING
                json        = iv_json
                pretty_name = /ui2/cl_json=>pretty_mode-camel_case
            CHANGING
                data      = es_structure ).

  ENDMETHOD.


  METHOD deserialize_json_b.

    /ui2/cl_json=>deserialize(
            EXPORTING
                json        = iv_json
                pretty_name = /ui2/cl_json=>pretty_mode-camel_case
            CHANGING
                data      = rs_json ).

  ENDMETHOD.


  METHOD serialize_json.

    /ui2/cl_json=>serialize(
    EXPORTING
    data              = is_json
    compress      = iv_compress
    pretty_name = /ui2/cl_json=>pretty_mode-camel_case
    name_mappings = get_mappings(  )
    RECEIVING
    r_json      = rv_json ).

  ENDMETHOD.


  METHOD get_mappings.

    rt_result = VALUE #(
   ( abap = 'D' json = 'd' )
   ( abap = 'TO_SUPPLIERCOMPANY' json = 'to_SupplierCompany' )
   ( abap = 'TO_SUPPLIERPURCHASINGORG' json = 'to_SupplierPurchasingOrg' )
   ( abap = 'TO_SUPPLIERTEXT' json = 'to_SupplierText' )
   ( abap = 'TO_CUSTADDRDEPDNTEXTIDENTIFIER' json = 'to_CustAddrDepdntExtIdentifier' )
   ( abap = 'TO_CUSTADDRDEPDNTINFORMATION' json = 'to_CustAddrDepdntInformation' )
   ( abap = 'TO_CUSTOMERCOMPANY' json = 'to_CustomerCompany' )
   ( abap = 'TO_CUSTOMERSALESAREA' json = 'to_CustomerSalesArea' )
   ( abap = 'TO_CUSTOMERTEXT' json = 'to_CustomerText' )
   ( abap = 'TO_CUSTOMERUNLOADINGPOINT' json = 'to_CustomerUnloadingPoint' )
   ( abap = 'TO_CUSTUNLDGPTADDRDEPDNTINFO' json = 'to_CustUnldgPtAddrDepdntInfo' )
   ( abap = 'TO_BUSINESSPARTNERCONTACT' json = 'to_BusinessPartnerContact' )
   ( abap = 'TO_BUSINESSPARTNERROLE' json = 'to_BusinessPartnerRole' )
   ( abap = 'TO_BUSPARTADDRDEPDNTTAXNMBR' json = 'to_BusPartAddrDepdntTaxNmbr' )
   ( abap = 'TO_BUPAINDUSTRY' json = 'to_BuPaIndustry' )
   ( abap = 'TO_BUPAIDENTIFICATION' json = 'to_BuPaIdentification' )
   ( abap = 'TO_BUSINESSPARTNERBANK' json = 'to_BusinessPartnerBank' )
   ( abap = 'TO_BUSINESSPARTNERTAX' json = 'to_BusinessPartnerTax' )
   ( abap = 'TO_BUSINESSPARTNERADDRESS' json = 'to_BusinessPartnerAddress' )
   ( abap = 'TO_ADDRESSUSAGE' json = 'to_AddressUsage' )
   ( abap = 'TO_BPADDRDEPDNTINTLLOCNUMBER' json = 'to_BPAddrDepdntIntlLocNumber' )
   ( abap = 'TO_FAXNUMBER' json = 'to_FaxNumber' )
   ( abap = 'TO_MOBILEPHONENUMBER' json = 'to_MobilePhoneNumber' )
   ( abap = 'TO_PHONENUMBER' json = 'to_PhoneNumber' )
   ( abap = 'TO_URLADDRESS' json = 'to_URLAddress' )
   ( abap = 'TO_CUSTOMER' json = 'to_Customer' )
   ( abap = 'TO_CUSTOMERTAXGROUPING' json = 'to_CustomerTaxGrouping' )
   ( abap = 'TO_SUPPLIER' json = 'to_Supplier' )
   ( abap = 'TO_EMAILADDRESS' json = 'to_EmailAddress' )
   ( abap = 'BUSINESSPARTNER' json = 'BusinessPartner' )
   ( abap = 'CUSTOMER' json = TEXT-001 )
   ( abap = 'SUPPLIER' json = TEXT-002 )
   ( abap = 'ACADEMICTITLE' json = 'AcademicTitle' )
   ( abap = 'BUSINESSPARTNERCATEGORY' json = 'BusinessPartnerCategory' )
   ( abap = 'BUSINESSPARTNERFULLNAME' json = 'BusinessPartnerFullName' )
   ( abap = 'BUSINESSPARTNERGROUPING' json = 'BusinessPartnerGrouping' )
   ( abap = 'BUSINESSPARTNERNAME' json = 'BusinessPartnerName' )
   ( abap = 'BUSINESSPARTNERUUID' json = 'BusinessPartnerUUID' )
   ( abap = 'CORRESPONDENCELANGUAGE' json = 'CorrespondenceLanguage' )
   ( abap = 'CREATEDBYUSER' json = 'CreatedByUser' )
   ( abap = 'CREATIONDATE' json = 'CreationDate' )
   ( abap = 'CREATIONTIME' json = 'CreationTime' )
   ( abap = 'FIRSTNAME' json = 'FirstName' )
   ( abap = 'FORMOFADDRESS' json = 'FormOfAddress' )
   ( abap = 'INDUSTRY' json = TEXT-005 )
   ( abap = 'INTERNATIONALLOCATIONNUMBER1' json = 'InternationalLocationNumber1' )
   ( abap = 'INTERNATIONALLOCATIONNUMBER2' json = 'InternationalLocationNumber2' )
   ( abap = 'ISFEMALE' json = 'IsFemale' )
   ( abap = 'ISMALE'     json = 'IsMale' )
   ( abap = 'ISSEXUNKNOWN' json = 'IsSexUnknown' )
   ( abap = 'GENDERCODENAME' json = 'GenderCodeName' )
   ( abap = 'LANGUAGE' json = TEXT-007 )
   ( abap = 'LASTCHANGEDATE' json = 'LastChangeDate' )
   ( abap = 'LASTCHANGETIME' json = 'LastChangeTime' )
   ( abap = 'LASTCHANGEDBYUSER' json = 'LastChangedByUser' )
   ( abap = 'LASTNAME' json = 'LastName' )
   ( abap = 'LEGALFORM' json = 'LegalForm' )
   ( abap = 'ORGANIZATIONBPNAME1' json = 'OrganizationBPName1' )
   ( abap = 'ORGANIZATIONBPNAME2' json = 'OrganizationBPName2' )
   ( abap = 'ORGANIZATIONBPNAME3' json = 'OrganizationBPName3' )
   ( abap = 'ORGANIZATIONBPNAME4' json = 'OrganizationBPName4' )
   ( abap = 'ORGANIZATIONFOUNDATIONDATE' json = 'OrganizationFoundationDate' )
   ( abap = 'ORGANIZATIONLIQUIDATIONDATE' json = 'OrganizationLiquidationDate' )
   ( abap = 'ADDITIONALLASTNAME' json = 'AdditionalLastName' )
   ( abap = 'BIRTHDATE' json = 'BirthDate' )
   ( abap = 'BUSINESSPARTNERBIRTHDATESTATUS' json = 'BusinessPartnerBirthDateStatus' )
   ( abap = 'BUSINESSPARTNERBIRTHPLACENAME' json = 'BusinessPartnerBirthplaceName' )
   ( abap = 'BUSINESSPARTNERDEATHDATE' json = 'BusinessPartnerDeathDate' )
   ( abap = 'BUSINESSPARTNERISBLOCKED' json = 'BusinessPartnerIsBlocked' )
   ( abap = 'BUSINESSPARTNERTYPE' json = 'BusinessPartnerType' )
   ( abap = 'ETAG' json = 'ETag' )
   ( abap = 'GROUPBUSINESSPARTNERNAME1' json = 'GroupBusinessPartnerName1' )
   ( abap = 'GROUPBUSINESSPARTNERNAME2' json = 'GroupBusinessPartnerName2' )
   ( abap = 'INDEPENDENTADDRESSID' json = 'IndependentAddressID' )
   ( abap = 'INTERNATIONALLOCATIONNUMBER3' json = 'InternationalLocationNumber3' )
   ( abap = 'MIDDLENAME' json = 'MiddleName' )
   ( abap = 'NAMECOUNTRY' json = 'NameCountry' )
   ( abap = 'NAMEFORMAT' json = 'NameFormat' )
   ( abap = 'PERSONFULLNAME' json = 'PersonFullName' )
   ( abap = 'PERSONNUMBER' json = 'PersonNumber' )
   ( abap = 'ISMARKEDFORARCHIVING' json = 'IsMarkedForArchiving' )
   ( abap = 'BUSINESSPARTNERIDBYEXTSYSTEM' json = 'BusinessPartnerIDByExtSystem' )
   ( abap = 'BUSINESSPARTNERPRINTFORMAT' json = 'BusinessPartnerPrintFormat' )
   ( abap = 'BUSINESSPARTNEROCCUPATION' json = 'BusinessPartnerOccupation' )
   ( abap = 'BUSPARTMARITALSTATUS' json = 'BusPartMaritalStatus' )
   ( abap = 'BUSPARTNATIONALITY' json = 'BusPartNationality' )
   ( abap = 'BUSINESSPARTNERBIRTHNAME' json = 'BusinessPartnerBirthName' )
   ( abap = 'BUSINESSPARTNERSUPPLEMENTNAME' json = 'BusinessPartnerSupplementName' )
   ( abap = 'NATURALPERSONEMPLOYERNAME' json = 'NaturalPersonEmployerName' )
   ( abap = 'LASTNAMEPREFIX' json = 'LastNamePrefix' )
   ( abap = 'LASTNAMESECONDPREFIX' json = 'LastNameSecondPrefix' )
   ( abap = 'INITIALS' json = TEXT-008 )
   ( abap = 'TRADINGPARTNER' json = 'TradingPartner' )
   ( abap = 'BPIDENTIFICATIONTYPE' json = 'BPIdentificationType' )
   ( abap = 'BPIDENTIFICATIONNUMBER' json = 'BPIdentificationNumber' )
   ( abap = 'BPIDNNMBRISSUINGINSTITUTE' json = 'BPIdnNmbrIssuingInstitute' )
   ( abap = 'BPIDENTIFICATIONENTRYDATE' json = 'BPIdentificationEntryDate' )
   ( abap = 'COUNTRY' json = TEXT-009 )
   ( abap = 'REGION' json = TEXT-010 )
   ( abap = 'VALIDITYENDDATE' json = 'ValidityEndDate' )
   ( abap = 'INDUSTRYSECTOR' json = 'IndustrySector' )
   ( abap = 'INDUSTRYSYSTEMTYPE' json = 'IndustrySystemType' )
   ( abap = 'ISSTANDARDINDUSTRY' json = 'IsStandardIndustry' )
   ( abap = 'INDUSTRYKEYDESCRIPTION' json = 'IndustryKeyDescription' )
   ( abap = 'ADDRESSID' json = 'AddressID' )
   ( abap = 'ADDRESSUUID' json = 'AddressUUID' )
   ( abap = 'ADDITIONALSTREETPREFIXNAME' json = 'AdditionalStreetPrefixName' )
   ( abap = 'ADDITIONALSTREETSUFFIXNAME' json = 'AdditionalStreetSuffixName' )
   ( abap = 'ADDRESSTIMEZONE' json = 'AddressTimeZone' )
   ( abap = 'CAREOFNAME' json = 'CareOfName' )
   ( abap = 'CITYCODE' json = 'CityCode' )
   ( abap = 'COMPANYPOSTALCOD' json = 'CompanyPostalCod' )
   ( abap = 'COUNTY' json = TEXT-011 )
   ( abap = 'DELIVERYSERVICENUMBER' json = 'DeliveryServiceNumber' )
   ( abap = 'DELIVERYSERVICETYPECODE' json = 'DeliveryServiceTypeCode' )
   ( abap = 'DISTRICT' json =  TEXT-012 )
   ( abap = 'FULLNAME' json = 'FullName' )
   ( abap = 'HOMECITYNAME' json = 'HomeCityName' )
   ( abap = 'HOUSENUMBER' json = 'HouseNumber' )
   ( abap = 'HOUSENUMBERSUPPLEMENTTEXT' json = 'HouseNumberSupplementText' )
   ( abap = 'POBOX' json = 'POBox' )
   ( abap = 'POBOXDEVIATINGCITYNAME' json = 'POBoxDeviatingCityName' )
   ( abap = 'POBOXDEVIATINGCOUNTRY' json = 'POBoxDeviatingCountry' )
   ( abap = 'POBOXDEVIATINGREGION' json = 'POBoxDeviatingRegion' )
   ( abap = 'POBOXISWITHOUTNUMBER' json = 'POBoxIsWithoutNumber' )
   ( abap = 'POBOXLOBBYNAME' json = 'POBoxLobbyName' )
   ( abap = 'POBOXPOSTALCODE' json = 'POBoxPostalCode' )
   ( abap = 'PERSON' json = TEXT-013  )
   ( abap = 'POSTALCODE' json = 'PostalCode' )
   ( abap = 'PRFRDCOMMMEDIUMTYPE' json = 'PrfrdCommMediumType' )
   ( abap = 'STREETNAME' json = 'StreetName' )
   ( abap = 'STREETPREFIXNAME' json = 'StreetPrefixName' )
   ( abap = 'STREETSUFFIXNAME' json = 'StreetSuffixName' )
   ( abap = 'TAXJURISDICTION' json = 'TaxJurisdiction' )
   ( abap = 'TRANSPORTZONE' json = 'TransportZone' )
   ( abap = 'ADDRESSIDBYEXTERNALSYSTEM' json = 'AddressIDByExternalSystem' )
   ( abap = 'COUNTYCODE' json = 'CountyCode' )
   ( abap = 'TOWNSHIPCODE' json = 'TownshipCode' )
   ( abap = 'TOWNSHIPNAME' json = 'TownshipName' )
   ( abap = 'ADDRESSUSAGE' json = 'AddressUsage' )
   ( abap = 'STANDARDUSAGE' json = 'StandardUsage' )
   ( abap = 'ORDINALNUMBER' json = 'OrdinalNumber' )
   ( abap = 'ISDEFAULTEMAILADDRESS' json = 'IsDefaultEmailAddress' )
   ( abap = 'EMAILADDRESS' json = 'EmailAddress' )
   ( abap = 'SEARCHEMAILADDRESS' json = 'SearchEmailAddress' )
   ( abap = 'ADDRESSCOMMUNICATIONREMARKTEXT' json = 'AddressCommunicationRemarkText' )
   ( abap = 'FAXCOUNTRY' json = 'FaxCountry' )
   ( abap = 'FAXNUMBER' json = 'FaxNumber' )
   ( abap = 'FAXNUMBEREXTENSION' json = 'FaxNumberExtension' )
   ( abap = 'INTERNATIONALFAXNUMBER' json = 'InternationalFaxNumber' )
   ( abap = 'DESTINATIONLOCATIONCOUNTRY' json = 'DestinationLocationCountry' )
   ( abap = 'ISDEFAULTPHONENUMBER' json = 'IsDefaultPhoneNumber' )
   ( abap = 'PHONENUMBER' json = 'PhoneNumber' )
   ( abap = 'PHONENUMBEREXTENSION' json = 'PhoneNumberExtension' )
   ( abap = 'INTERNATIONALPHONENUMBER' json = 'InternationalPhoneNumber' )
   ( abap = 'PHONENUMBERTYPE' json = 'PhoneNumberType' )
   ( abap = 'URLFIELDLENGTH' json = 'URLFieldLength' )
   ( abap = 'WEBSITEURL' json = 'WebsiteURL' )
   ( abap = 'BANKIDENTIFICATION' json = 'BankIdentification' )
   ( abap = 'BANKCOUNTRYKEY' json = 'BankCountryKey' )
   ( abap = 'BANKNAME' json = 'BankName' )
   ( abap = 'BANKNUMBER' json = 'BankNumber' )
   ( abap = 'SWIFTCODE' json = 'SWIFTCode' )
   ( abap = 'BANKCONTROLKEY' json = 'BankControlKey' )
   ( abap = 'BANKACCOUNTHOLDERNAME' json = 'BankAccountHolderName' )
   ( abap = 'BANKACCOUNTNAME' json = 'BankAccountName' )
   ( abap = 'VALIDITYSTARTDATE' json = 'ValidityStartDate' )
   ( abap = 'IBAN' json = 'IBAN' )
   ( abap = 'BIBANVALIDITYSTARTDATE' json = 'BIBANValidityStartDate' )
   ( abap = 'BANKACCOUNT' json = 'BankAccount' )
   ( abap = 'BANKACCOUNTREFERENCETEXT' json = 'BankAccountReferenceText' )
   ( abap = 'COLLECTIONAUTHIND' json = 'CollectionAuthInd' )
   ( abap = 'CITYNAME' json = 'CityName' )
   ( abap = 'AUTHORIZATIONGROUP' json = 'AuthorizationGroup' )
   ( abap = 'BUSINESSPARTNERROLE' json = 'BusinessPartnerRole' )
   ( abap = 'VALIDFROM' json = 'ValidFrom' )
   ( abap = 'VALIDTO' json = 'ValidTo' )
   ( abap = 'BPTAXTYPE' json = 'BPTaxType' )
   ( abap = 'BPTAXNUMBER' json = 'BPTaxNumber' )
   ( abap = 'BPTAXLONGNUMBER'  json = 'BPTaxLongNumber' )
   ( abap = 'BILLINGISBLOCKEDFORCUSTOMER' json = 'BillingIsBlockedForCustomer' )
   ( abap = 'CUSTOMERACCOUNTGROUP' json = 'CustomerAccountGroup' )
   ( abap = 'CUSTOMERCLASSIFICATION' json = 'CustomerClassification' )
   ( abap = 'CUSTOMERFULLNAME' json = 'CustomerFullName' )
   ( abap = 'CUSTOMERNAME' json = 'CustomerName' )
   ( abap = 'DELIVERYISBLOCKED' json = 'DeliveryIsBlocked' )
   ( abap = 'NFPARTNERISNATURALPERSON' json = 'NFPartnerIsNaturalPerson' )
   ( abap = 'ISNATURALPERSON' json = 'IsNaturalPerson' )
   ( abap = 'ORDERISBLOCKEDFORCUSTOMER' json = 'OrderIsBlockedForCustomer' )
   ( abap = 'CUSTOMERCORPORATEGROUP' json = 'CustomerCorporateGroup' )
   ( abap = 'FISCALADDRESS' json = 'FiscalAddress' )
   ( abap = 'INDUSTRYCODE1' json = 'IndustryCode1' )
   ( abap = 'INDUSTRYCODE2' json = 'IndustryCode2' )
   ( abap = 'INDUSTRYCODE3' json = 'IndustryCode3' )
   ( abap = 'INDUSTRYCODE4' json = 'IndustryCode4' )
   ( abap = 'INDUSTRYCODE5' json = 'IndustryCode5' )
   ( abap = 'NIELSENREGION' json = 'NielsenRegion' )
   ( abap = 'RESPONSIBLETYPE' json = 'ResponsibleType' )
   ( abap = 'TAXNUMBER1' json = 'TaxNumber1' )
   ( abap = 'TAXNUMBER2' json = 'TaxNumber2' )
   ( abap = 'TAXNUMBER3' json = 'TaxNumber3' )
   ( abap = 'TAXNUMBER4' json = 'TaxNumber4' )
   ( abap = 'TAXNUMBER5' json = 'TaxNumber5' )
   ( abap = 'TAXNUMBERTYPE' json = 'TaxNumberType' )
   ( abap = 'VATREGISTRATION' json = 'VATRegistration' )
   ( abap = 'DELETIONINDICATOR' json = 'DeletionIndicator' )
   ( abap = 'EXPRESSTRAINSTATIONNAME' json = 'ExpressTrainStationName' )
   ( abap = 'TRAINSTATIONNAME' json = 'TrainStationName' )
   ( abap = 'XSUBT' json = TEXT-014   )
   ( abap = 'CFOPC' json = TEXT-015 )
   ( abap = 'SUFRAMA' json = TEXT-016 )
   ( abap = 'RG' json = 'Rg' )
   ( abap = 'EXP' json = 'Exp' )
   ( abap = 'UF' json = 'Uf' )
   ( abap = 'RGDATE' json = TEXT-017 )
   ( abap = 'RIC' json = 'Ric' )
   ( abap = 'RNE' json = 'Rne' )
   ( abap = 'RNEDATE' json = TEXT-018 )
   ( abap = 'CNAE'  json = TEXT-019 )
   ( abap = 'LEGALNAT' json = TEXT-020 )
   ( abap = 'CRTN' json = TEXT-021 )
   ( abap = 'ICMSTAXPAY' json = TEXT-022 )
   ( abap = 'INDTYP' json = TEXT-023 )
   ( abap = 'TDT' json = 'Tdt' )
   ( abap = 'COMSIZE' json = TEXT-024 )
   ( abap = 'DECREGPC' json = TEXT-025 )
   ( abap = 'KATR1' json =  TEXT-026 )
   ( abap = 'KATR2' json = TEXT-027 )
   ( abap = 'KATR3' json = TEXT-028 )
   ( abap = 'KATR4' json = TEXT-029 )
   ( abap = 'KATR5' json = TEXT-030 )
   ( abap = 'KATR6' json = TEXT-031 )
   ( abap = 'KATR7' json = TEXT-032 )
   ( abap = 'KATR8' json = TEXT-033 )
   ( abap = 'KATR9' json = TEXT-034 )
   ( abap = 'KATR10' json = TEXT-035 )
   ( abap = 'ALTERNATIVEPAYEEACCOUNTNUMBER' json = 'AlternativePayeeAccountNumber' )
   ( abap = 'PAYMENTISBLOCKEDFORSUPPLIER' json = 'PaymentIsBlockedForSupplier' )
   ( abap = 'POSTINGISBLOCKED' json = 'PostingIsBlocked' )
   ( abap = 'PURCHASINGISBLOCKED' json = 'PurchasingIsBlocked' )
   ( abap = 'SUPPLIERACCOUNTGROUP' json = 'SupplierAccountGroup' )
   ( abap = 'SUPPLIERNAME' json = 'SupplierName' )
   ( abap = 'SUPPLIERFULLNAME' json = 'SupplierFullName' )
   ( abap = 'CONCATENATEDINTERNATIONALLOCNO' json = 'ConcatenatedInternationalLocNo' )
   ( abap = 'SUPLRQLTYINPROCMTCERTFNVALIDTO' json = 'SuplrQltyInProcmtCertfnValidTo' )
   ( abap = 'SUPLRQUALITYMANAGEMENTSYSTEM' json = 'SuplrQualityManagementSystem' )
   ( abap = 'SUPPLIERCORPORATEGROUP' json = 'SupplierCorporateGroup' )
   ( abap = 'SUPPLIERPROCUREMENTBLOCK' json = 'SupplierProcurementBlock' )
   ( abap = 'SEARCHTERM1' json = 'SearchTerm1' )
   ( abap = 'SEARCHTERM2' json = 'SearchTerm2' )
   ( abap = 'ISBUSINESSPURPOSECOMPLETED' json = 'IsBusinessPurposeCompleted' )
   ( abap = 'COMPANYPOSTALCODE' json = 'CompanyPostalCode' )
   ( abap = 'IBANVALIDITYSTARTDATE' json = 'IBANValidityStartDate' )
    ( abap = 'RESULTS' json = 'results' )
   ( abap = 'BPBANKISPROTECTED' json = 'BPBankIsProtected' )
   ( abap = 'ISDEFAULTFAXNUMBER' json = 'IsDefaultFaxNumber' )
   ( abap = 'ISDEFAULTURLADDRESS' json = 'IsDefaultURLAddress' )
   ( abap = 'SEARCHURLADDRESS' json = 'SearchURLAddress' )
   ( abap = 'TAXNUMBERRESPONSIBLE' json = 'TaxNumberResponsible' )
   ( abap = 'SUPLRPROOFOFDELIVRLVTCODE' json = 'SuplrProofOfDelivRlvtCode' )
   ( abap = 'DATAEXCHANGEINSTRUCTIONKEY' json = 'DataExchangeInstructionKey' )
   ( abap = 'BR_TAXISSPLIT' json = 'BR_TaxIsSplit' )
   ( abap = '__METADATA' json = '__metadata' )
   ( abap = 'ID' json = 'id' )
   ( abap = 'URI' json = 'uri' )
   ( abap = 'TYPE' json = 'type' )
   ( abap = 'TO_BPRELATIONSHIP' json = 'to_BPRelationShip' )
   ( abap = 'TO_BPTAXGROUP' json = 'to_BPTaxGroup'  )
    ( abap = 'RELATIONSHIPNUMBER' json = 'RelationShipNumber'  )
    ( abap = 'BUSINESSPARTNERCOMPANY' json = 'BusinessPartnerCompany'  )
    ( abap = 'BUSINESSPARTNERPERSON' json = 'BusinessPartnerPerson'  )
    ( abap = 'BUSINESSPARTNER1' json = 'BusinessPartner1'  )
    ( abap = 'BUSINESSPARTNER2' json = 'BusinessPartner2'  )
    ( abap = 'ISSTANDARDRELATIONSHIP' json = 'IsStandardRelationShip'  )
    ( abap = 'RELATIONSHIPCATEGORY' json = 'RelationShipCategory'  )
    ( abap = 'BPRELATIONSHIPTYPE' json = 'BPRelationShipType'  )
    ( abap = 'BUSPARTRELSHPISROLEDEFINITION' json = 'BUSPartrelshpisroledefinition'  )
    ( abap = 'DATA' json = TEXT-039  )
    ( abap = 'TAXCOUNTRY' json = 'TaxCountry'  )
    ( abap = 'TAXREGION' json = 'TaxRegion'  )
    ( abap = 'TAXTYPE' json = 'TaxType'  )
    ( abap = 'TAXGROUP' json = 'TaxGroup'  )
    ( abap = 'COMPANYCODE' json = 'CompanyCode'  )
  ( abap = 'COMPANYCODENAME' json = 'CompanyCodeName'  )
  ( abap = 'PAYMENTBLOCKINGREASON' json = 'PaymentBlockingReason'  )
  ( abap = 'SUPPLIERISBLOCKEDFORPOSTING' json = 'SupplierIsBlockedForPosting'  )
  ( abap = 'ACCOUNTINGCLERK' json = 'AccountingClerk'  )
  ( abap = 'ACCOUNTINGCLERKFAXNUMBER' json = 'AccountingClerkFaxNumber'  )
  ( abap = 'ACCOUNTINGCLERKINTERNETADDRESS' json = 'AccountingClerkInternetAddress'  )
  ( abap = 'ACCOUNTINGCLERKPHONENUMBER' json = 'AccountingClerkPhoneNumber'  )
  ( abap = 'ALTERNATIVEPAYERACCOUNT' json = 'AlternativePayerAccount'  )
  ( abap = 'SUPPLIERCLERK' json = 'SupplierClerk'  )
  ( abap = 'COLLECTIVEINVOICEVARIANT' json = 'CollectiveInvoiceVariant'  )
  ( abap = 'CUSTOMERACCOUNTNOTE' json = 'CustomerAccountNote'  )
  ( abap = 'CUSTOMERHEADOFFICE' json = 'CustomerHeadOffice'  )
  ( abap = 'CUSTOMERSUPPLIERCLEARINGISUSED' json = 'CustomerSupplierClearingIsUsed'  )
  ( abap = 'SUPPLIERCLERKURL' json = 'SupplierClerkURL'  )
  ( abap = 'PAYMENTMETHODSLIST' json = 'PaymentMethodsList'  )
  ( abap = 'PAYMENTREASON' json = 'PaymentReason'  )
  ( abap = 'PAYMENTTERMS' json = 'PaymentTerms'  )
  ( abap = 'CLEARCUSTOMERSUPPLIER' json = 'ClearCustomerSupplier'  )
  ( abap = 'ISTOBELOCALLYPROCESSED' json = 'IsToBeLocallyProcessed'  )
  ( abap = 'ITEMISTOBEPAIDSEPARATELY' json = 'ItemIsToBePaidSeparately'  )
  ( abap = 'PAYMENTISTOBESENTBYEDI' json = 'PaymentIsToBeSentByEDI'  )
  ( abap = 'HOUSEBANK' json = 'HouseBank'  )
  ( abap = 'CHECKPAIDDURATIONINDAYS' json = 'CheckPaidDurationInDays'  )
  ( abap = 'BILLOFEXCHLMTAMTINCOCODECRCY' json = 'BillOfExchLmtAmtInCoCodeCrcy'  )
  ( abap = 'SUPPLIERCLERKIDBYSUPPLIER' json = 'SupplierClerkIDBySupplier'  )
  ( abap = 'RECONCILIATIONACCOUNT' json = 'ReconciliationAccount'  )
  ( abap = 'INTERESTCALCULATIONCODE' json = 'InterestCalculationCode'  )
  ( abap = 'INTERESTCALCULATIONDATE' json = 'InterestCalculationDate'  )
  ( abap = 'INTRSTCALCFREQUENCYINMONTHS' json = 'IntrstCalcFrequencyInMonths'  )
  ( abap = 'SUPPLIERHEADOFFICE' json = 'SupplierHeadOffice'  )
  ( abap = 'ALTERNATIVEPAYEE' json = 'AlternativePayee'  )
  ( abap = 'LAYOUTSORTINGRULE' json = 'LayoutSortingRule'  )
  ( abap = 'APARTOLERANCEGROUP' json = 'APARToleranceGroup'  )
  ( abap = 'SUPPLIERCERTIFICATIONDATE' json = 'SupplierCertificationDate'  )
  ( abap = 'SUPPLIERACCOUNTNOTE' json = 'SupplierAccountNote'  )
  ( abap = 'WITHHOLDINGTAXCOUNTRY' json = 'WithholdingTaxCountry'  )
  ( abap = 'CASHPLANNINGGROUP' json = 'CashPlanningGroup'  )
  ( abap = 'ISTOBECHECKEDFORDUPLICATES' json = 'IsToBeCheckedForDuplicates'  )
  ( abap = 'MINORITYGROUP' json = 'MinorityGroup'  )
  ( abap = 'TO_COMPANYTEXT' json = 'to_CompanyText'  )
  ( abap = 'PAYTADVICEISSENTBYEDI' json = 'PaytAdviceIsSentbyEDI'  )
  ( abap = 'PHYSICALINVENTORYBLOCKIND' json = 'PhysicalInventoryBlockInd'  )
  ( abap = 'RECORDPAYMENTHISTORYINDICATOR' json = 'RecordPaymentHistoryIndicator'  )
  ( abap = 'USERATCUSTOMER' json = 'UserAtCustomer'  )
  ( abap = 'KNOWNORNEGOTIATEDLEAVE' json = 'KnownOrNegotiatedLeave'  )
  ( abap = 'VALUEADJUSTMENTKEY' json = 'ValueAdjustmentKey'  )
  ( abap = 'ACCOUNTBYCUSTOMER' json = 'AccountByCustomer'  )
  ( abap = 'TO_CUSTOMERDUNNING' json = 'to_CustomerDunning'  )
  ( abap = 'TO_WITHHOLDINGTAX' json = 'to_WithHoldingTax'  )
  ( abap = 'SALESORGANIZATION' json = 'SalesOrganization'  )
  ( abap = 'DISTRIBUTIONCHANNEL' json = 'DistributionChannel'  )
  ( abap = 'DIVISION' json = TEXT-040  )
  ( abap = 'COMPLETEDELIVERYISDEFINED' json = 'CompleteDeliveryIsDefined'  )
  ( abap = 'CREDITCONTROLAREA' json = 'CreditControlArea'  )
  ( abap = 'CURRENCY' json = TEXT-041   )
  ( abap = 'CUSTISRLVTFORSETTLMTMGMT' json = 'CustIsRlvtForSettlmtmgmt'  )
  ( abap = 'CUSTOMERABCCLASSIFICATION' json = 'CustomerABCClassification'  )
  ( abap = 'CUSTOMERACCOUNTASSIGNMENTGROUP' json = 'CustomerAccountAssignmentGroup'  )
  ( abap = 'CUSTOMERGROUP' json = 'CustomerGroup'  )
  ( abap = 'CUSTOMERISREBATERELEVANT' json = 'CustomerIsRebateRelevant'  )
  ( abap = 'CUSTOMERPAYMENTTERMS' json = 'CustomerPaymentTerms'  )
  ( abap = 'CUSTOMERPRICEGROUP' json = 'CustomerPriceGroup'  )
  ( abap = 'CUSTOMERPRICINGPROCEDURE' json = 'CustomerPricingProcedure'  )
  ( abap = 'CUSTPRODPROPOSALPROCEDURE' json = 'CustProdProposalProcedure'  )
  ( abap = 'DELIVERYISBLOCKEDFORCUSTOMER' json = 'DeliveryIsBlockedForCustomer'  )
  ( abap = 'DELIVERYPRIORITY' json = 'DeliveryPriority'  )
  ( abap = 'INCOTERMSCLASSIFICATION' json = 'IncotermsClassification'  )
  ( abap = 'INCOTERMSLOCATION2' json = 'IncotermsLocation2'  )
  ( abap = 'INCOTERMSVERSION' json = 'IncotermsVersion'  )
  ( abap = 'INCOTERMSLOCATION1' json = 'IncotermsLocation1'  )
  ( abap = 'INCOTERMSSUPCHNLOC1ADDLUUID' json = 'IncotermsSupchnLoc1Addluuid'  )
  ( abap = 'INCOTERMSSUPCHNLOC2ADDLUUID' json = 'IncotermsSupchnloc2Addluuid'  )
  ( abap = 'INCOTERMSSUPCHNDVTGLOCADDLUUID' json = 'IncotermsSupchnDvtgLocaddluuid'  )
  ( abap = 'INCOTERMSTRANSFERLOCATION' json = 'IncotermsTransferLocation'  )
  ( abap = 'INSPSBSTHASNOTIMEORQUANTITY' json = 'InspSbsthasNoTimeOrQuantity'  )
  ( abap = 'INVOICEDATE' json = 'InvoiceDate'  )
  ( abap = 'ITEMORDERPROBABILITYINPERCENT' json = 'ItemOrderProbabilityInPercent'  )
  ( abap = 'MANUALINVOICEMAINTISRELEVANT' json = 'ManualInvoiceMaintIsRelevant'  )
  ( abap = 'MAXNMBROFPARTIALDELIVERY' json = 'MaxNmbrOfPartialDelivery'  )
  ( abap = 'ORDERCOMBINATIONISALLOWED' json = 'OrderCombinationIsAllowed'  )
  ( abap = 'OVERDELIVTOLRTDLMTRATIOINPCT' json = 'OverDelivToLrtdImtratioInpct'  )
  ( abap = 'PARTIALDELIVERYISALLOWED' json = 'PartialDeliveryIsAllowed'  )
  ( abap = 'PRICELISTTYPE' json = 'PriceListType'  )
  ( abap = 'PRODUCTUNITGROUP' json = 'ProductUnitGroup'  )
  ( abap = 'PROOFOFDELIVERYTIMEVALUE' json = 'ProofOfDeliveryTimeValue'  )
  ( abap = 'SALESGROUP' json = 'SalesGroup'  )
  ( abap = 'SALESITEMPROPOSAL' json = 'SalesItemProposal'  )
  ( abap = 'SALESOFFICE' json = 'SalesOffice'  )
  ( abap = 'SHIPPINGCONDITION' json = 'ShippingCondition'  )
  ( abap = 'SLSDOCISRLVTFORPROOFOFDELIV' json = 'SlsDocIsRlvtForProofOfDeliv'  )
  ( abap = 'SLSUNLMTDOVRDELIVISALLWD' json = 'SlsUnmtdOvrDelivIsAllwd'  )
  ( abap = 'SUPPLYINGPLANT' json = 'SupplyingPlant'  )
  ( abap = 'SALESDISTRICT' json = 'SalesDistrict'  )
  ( abap = 'UNDERDELIVTOLRTDLMTRATIOINPCT' json = 'UnderDelivToLrtdImtratioInpct'  )
  ( abap = 'INVOICELISTSCHEDULE' json = 'InvoiceListSchedule'  )
  ( abap = 'EXCHANGERATETYPE' json = 'ExchangeRateType'  )
  ( abap = 'ADDITIONALCUSTOMERGROUP1' json = 'AdditionalCustomerGroup1'  )
  ( abap = 'ADDITIONALCUSTOMERGROUP2' json = 'AdditionalCustomerGroup2'  )
  ( abap = 'ADDITIONALCUSTOMERGROUP3' json = 'AdditionalCustomerGroup3'  )
  ( abap = 'ADDITIONALCUSTOMERGROUP4' json = 'AdditionalCustomerGroup4'  )
  ( abap = 'ADDITIONALCUSTOMERGROUP5' json = 'AdditionalCustomerGroup5'  )
  ( abap = 'PAYMENTGUARANTEEPROCEDURE' json = 'PaymentGuaranteeProcedure'  )
  ( abap = 'TO_PARTNERFUNCTION' json = 'to_PartnerFunction'  )
  ( abap = 'PARTNERCOUNTER' json = 'PartnerCounter'  )
  ( abap = 'PARTNERFUNCTION' json = 'PartnerFunction'  )
  ( abap = 'BPCUSTOMERNUMBER' json = 'BPCustomerNumber'  )
  ( abap = 'CUSTOMERPARTNERDESCRIPTION' json = 'CustomerPartnerDescription'  )
  ( abap = 'DEFAULTPARTNER' json = 'DefaultPartner'  )
  ( abap = 'PERSONNELNUMBER' json = 'PersonnelNumber'  )
  ( abap = 'CONTACTPERSON' json = 'ContactPerson'  )
  ( abap = 'DEPARTURECOUNTRY' json = 'DepartureCountry'  )
  ( abap = 'CUSTOMERTAXCATEGORY' json = 'CustomerTaxCategory'  )
  ( abap = 'CUSTOMERTAXCLASSIFICATION' json = 'CustomerTaxClassification'  )
  ( abap = 'TO_SALESAREATAX' json = 'to_SalesAreaTax'  )
  ( abap = 'TO_SALESAREATEXT' json = 'to_SalesAreaText'  )
  ( abap = 'TO_SLSAREAADDRDEPDNTINFO' json = 'to_SlsAreaAddrDepdntInfo'  )
  ( abap = 'TO_SUPPLIERDUNNING' json = 'to_SupplierDunning'  )
  ( abap = 'TO_SLSAREAADDRDEPDNTTAX' json = 'to_SlsAreaAddrDepdntTax'  )
  ( abap = 'TO_SUPPLIERWITHHOLDINGTAX' json = 'to_SupplierWithHoldingTax'  ) ).

  ENDMETHOD.


  METHOD validate_changes.

    A_BusinessPartner(
    EXPORTING
        iv_json_local = iv_json_local
        is_json_local = is_json_local
        iv_json_remoto = iv_json_remoto
        is_json_remoto = is_json_remoto ).

    to_bupaidentification(
    EXPORTING
        iv_json_local = iv_json_local
        is_json_local = is_json_local
        iv_json_remoto = iv_json_remoto
        is_json_remoto = is_json_remoto ).

    to_BuPaIndustry(
    EXPORTING
        iv_json_local = iv_json_local
        is_json_local = is_json_local
        iv_json_remoto = iv_json_remoto
        is_json_remoto = is_json_remoto ).

    to_BusinessPartnerAddress(
    EXPORTING
        iv_json_local = iv_json_local
        is_json_local = is_json_local
        iv_json_remoto = iv_json_remoto
        is_json_remoto = is_json_remoto ).

    to_BusinessPartnerBank(
        EXPORTING
            iv_json_local = iv_json_local
            is_json_local = is_json_local
            iv_json_remoto = iv_json_remoto
            is_json_remoto = is_json_remoto ).


    to_BusinessPartnerRole(
        EXPORTING
         iv_json_local = iv_json_local
         is_json_local = is_json_local
         iv_json_remoto = iv_json_remoto
         is_json_remoto = is_json_remoto ).

    to_BusinessPartnerTax(
        EXPORTING
         iv_json_local = iv_json_local
         is_json_local = is_json_local
         iv_json_remoto = iv_json_remoto
         is_json_remoto = is_json_remoto ).

    to_Customer(
       EXPORTING
        iv_json_local = iv_json_local
        is_json_local = is_json_local
        iv_json_remoto = iv_json_remoto
        is_json_remoto = is_json_remoto ).

    to_Supplier(
       EXPORTING
        iv_json_local = iv_json_local
        is_json_local = is_json_local
        iv_json_remoto = iv_json_remoto
        is_json_remoto = is_json_remoto ).

    to_relationship(
       EXPORTING
        iv_json_local = iv_json_local
        is_json_local = is_json_local
        iv_json_remoto = iv_json_remoto
        is_json_remoto = is_json_remoto ).

    to_bptaxgroup(
       EXPORTING
        iv_json_local = iv_json_local
        is_json_local = is_json_local
        iv_json_remoto = iv_json_remoto
        is_json_remoto = is_json_remoto ).

  ENDMETHOD.


  METHOD to_bupaidentification.

    " Delete

    LOOP AT is_json_remoto-d-to_bupaidentification-results ASSIGNING FIELD-SYMBOL(<fs_identification>).

      CHECK NOT line_exists( is_json_local-d-to_bupaidentification-results[  BusinessPartner = <fs_identification>-BusinessPartner
                                                                                                                         BPIdentificationType  = <fs_identification>-BPIdentificationType
                                                                                                                         BPIdentificationNumber = <fs_identification>-BPIdentificationNumber ] )
         AND NOT line_exists( gt_param[ chave2 = gc_identification low = <fs_identification>-bpidentificationtype ] ).

      DATA(lv_uri_cop) = gv_uri_to_bupaidentification.

      REPLACE gc_values-value1 IN lv_uri_cop  WITH <fs_identification>-BusinessPartner.
      REPLACE gc_values-value2 IN lv_uri_cop  WITH <fs_identification>-BPIdentificationType.
      REPLACE gc_values-value3 IN lv_uri_cop  WITH <fs_identification>-BPIdentificationNumber.

      send_data(
              iv_uri = lv_uri_cop
              iv_method = gc_delete
              iv_destination = gv_dest_oil
           ).

    ENDLOOP.

    LOOP AT is_json_local-d-to_bupaidentification-results ASSIGNING <fs_identification>.

      CHECK NOT line_exists( gt_param[ chave2 = gc_identification low = <fs_identification>-bpidentificationtype ] ).

      " Patch
      IF  line_exists( iS_json_remoto-d-to_bupaidentification-results[ BusinessPartner = <fs_identification>-BusinessPartner
                                                                                                             BPIdentificationType  = <fs_identification>-BPIdentificationType
                                                                                                             BPIdentificationNumber = <fs_identification>-BPIdentificationNumber  ] ).

        CHECK NOT line_exists( is_json_remoto-d-to_bupaidentification-results[ table_line = <fs_identification> ] ).

        lv_uri_cop = gv_uri_to_bupaidentification.

        REPLACE gc_values-value1 IN lv_uri_cop  WITH <fs_identification>-BusinessPartner.
        REPLACE gc_values-value2 IN lv_uri_cop  WITH <fs_identification>-BPIdentificationType.
        REPLACE gc_values-value3 IN lv_uri_cop  WITH <fs_identification>-BPIdentificationNumber.

        DATA(lv_json) = serialize_json( <fs_identification> ).

        replace_json( CHANGING cv_json = lv_json  ).

        send_data(
        iv_uri = lv_uri_cop
        iv_method = gc_patch
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).

        "Post
      ELSE.

        lv_json = serialize_json( <fs_identification> ).

        replace_json( CHANGING cv_json = lv_json  ).

        send_data(
        iv_uri = gv_uri_bupaidentification
        iv_method = gc_post
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).

      ENDIF.

    ENDLOOP.

  ENDMETHOD.


  METHOD to_bupaindustry.

    LOOP AT is_json_local-d-to_bupaindustry-results ASSIGNING FIELD-SYMBOL(<fs_industry>).

      " Post
      IF  NOT line_exists( iS_json_remoto-d-to_bupaindustry-results[ IndustrySector = <fs_industry>-IndustrySector
                                                                                                     IndustrySystemType   = <fs_industry>-IndustrySystemType
                                                                                                     BusinessPartner = <fs_industry>-BusinessPartner  ] ).

        send_data(
        iv_uri = gv_uri_bupaindustry
        iv_method = gc_post
        iv_destination = gv_dest_oil
        iv_json = serialize_json( <fs_industry> )
     ).

      ENDIF.

    ENDLOOP.

    " Delete
    LOOP AT is_json_remoto-d-to_bupaindustry-results ASSIGNING <fs_industry>.

      DATA(lv_uri_cop) = gv_uri_to_bupaindustry.

      IF  NOT line_exists( iS_json_local-d-to_bupaindustry-results[ IndustrySector = <fs_industry>-IndustrySector
                                                                                                     IndustrySystemType   = <fs_industry>-IndustrySystemType
                                                                                                     BusinessPartner = <fs_industry>-BusinessPartner  ] ).

        REPLACE gc_values-value1 IN lv_uri_cop  WITH <fs_industry>-IndustrySector.
        REPLACE gc_values-value2 IN lv_uri_cop  WITH <fs_industry>-IndustrySystemType.
        REPLACE gc_values-value3 IN lv_uri_cop  WITH <fs_industry>-BusinessPartner.

        send_data(
        iv_uri = lv_uri_cop
        iv_method = gc_delete
        iv_destination = gv_dest_oil
        iv_json = serialize_json( <fs_industry> )
     ).

      ENDIF.

    ENDLOOP.

  ENDMETHOD.


  METHOD to_businesspartneraddress.

    DATA:
      lv_addresid    TYPE string,
      lv_json        TYPE string,
      lt_return      TYPE bapiret2_tab,
      ls_json_remoto TYPE ty_data.

    lt_return  = validate_cfopc( is_customer = is_json_remoto-d-to_customer iv_group = is_json_remoto-d-businesspartnergrouping ).

    IF lt_return IS INITIAL.

      DATA(lt_remoto) =  is_json_remoto-d-to_businesspartneraddress-results.
      DATA(lt_local) = is_json_local-d-to_businesspartneraddress-results.

      select( EXPORTING it_local = lt_local it_remoto = lt_remoto ).

      IF lines( lt_remoto ) GT 1.

        LOOP AT lt_remoto ASSIGNING FIELD-SYMBOL(<fs_remoto>).

          CHECK NOT line_exists( lt_local[ addressid = <fs_remoto>-addressidbyexternalsystem validityenddate = <fs_remoto>-validityenddate ] ).

          DATA(lv_ddressid) = |{ CONV char10( <fs_remoto>-addressid )  ALPHA = IN }|.
          DATA(lv_guid_remoto) = VALUE char32( gt_but020_remoto[ addrnumber = lv_ddressid ]-address_guid OPTIONAL ).

          CALL FUNCTION 'BAPI_BUPA_ADDRESS_REMOVE'
            DESTINATION gv_destination_rfc
            EXPORTING
              businesspartner = gv_bp
              addressguid     = lv_guid_remoto
            TABLES
              return          = lt_return.

          IF NOT line_exists( lt_return[ type = gc_values-e ] ).
            call_commit(  ).
            DATA(lv_release) = abap_true.
          ENDIF.

          connection_close(  ).

          send_log( EXPORTING it_return = lt_return iv_method =  gc_delete iv_json = serialize_json( is_json = | { gv_bp } { lv_guid_remoto } | ) ).

        ENDLOOP.
      ENDIF.

      IF lv_release EQ abap_true.

        CLEAR: lt_remoto[], lv_release.

        DATA(lv_json_remoto) = get_json(  EXPORTING iv_destination = gv_dest_oil  iv_method = gc_get CHANGING cv_uri = gv_uri ).
        deserialize_json( EXPORTING iv_json = lv_json_remoto IMPORTING es_structure = ls_json_remoto ).

        lt_remoto =  ls_json_remoto-d-to_businesspartneraddress-results.

        select( EXPORTING it_local = lt_local it_remoto = lt_remoto ).

      ENDIF.

      LOOP AT lt_local ASSIGNING FIELD-SYMBOL(<fs_businesspartneraddress>).

        to_addressusage(
          EXPORTING
            is_address_local    = <fs_businesspartneraddress>-to_addressusage-results
            is_address_main_remoto =  VALUE #( lt_remoto[ businesspartner = <fs_businesspartneraddress>-businesspartner addressidbyexternalsystem = <fs_businesspartneraddress>-addressid ]  OPTIONAL )
            is_address_remoto = VALUE #( lt_remoto[ businesspartner = <fs_businesspartneraddress>-businesspartner addressidbyexternalsystem = <fs_businesspartneraddress>-addressid ]-to_addressusage-results  OPTIONAL )
          IMPORTING
          ev_ok = lv_release
          CHANGING
            cs_address = <fs_businesspartneraddress>
            cv_json = lv_json ).

*        IF lv_release IS NOT INITIAL.
*
*          DATA(lv_uri_bupaaddress) = gv_uri_to_bupaaddress2.
*
*          REPLACE gc_values-value1 IN lv_uri_bupaaddress  WITH <fs_businesspartneraddress>-businesspartner.
*
*          DATA(lt_new_remoto) = deserialize_json_c(
*            EXPORTING
*            iv_json = get_json(  EXPORTING iv_destination = gv_dest_oil  iv_method = gc_get CHANGING cv_uri = lv_uri_bupaaddress )
*           ).
*
*          IF lt_new_remoto IS NOT INITIAL.
*            lt_remoto = lt_new_remoto-d-results.
*            select( EXPORTING it_local = lt_local it_remoto = lt_remoto ).
*          ENDIF.
*
*        ENDIF.
*
*        to_EmailAddress(
*          EXPORTING
*            is_emailaddress_local    = <fs_businesspartneraddress>-to_emailaddress-results
*            is_emailaddress_remoto =
*            VALUE #( lt_remoto[ businesspartner = <fs_businesspartneraddress>-businesspartner addressidbyexternalsystem = <fs_businesspartneraddress>-addressid ]-to_emailaddress-results  OPTIONAL )
*            iv_addressid =  VALUE #( lt_remoto[ businesspartner = <fs_businesspartneraddress>-businesspartner addressidbyexternalsystem = <fs_businesspartneraddress>-addressid ]-addressid  OPTIONAL )
*            CHANGING
*            cv_json = lv_json ).
*
*        to_FaxNumber(
*          EXPORTING
*            it_faxnumber_local    = <fs_businesspartneraddress>-to_faxnumber-results
*            it_faxnumber_remoto =
*            VALUE #( lt_remoto[ businesspartner = <fs_businesspartneraddress>-businesspartner addressidbyexternalsystem = <fs_businesspartneraddress>-addressid ]-to_faxnumber-results  OPTIONAL )
*            iv_addressid =  VALUE #( lt_remoto[ businesspartner = <fs_businesspartneraddress>-businesspartner addressidbyexternalsystem = <fs_businesspartneraddress>-addressid ]-addressid  OPTIONAL )
*            CHANGING
*            cv_json = lv_json ).

*        to_MobilePhoneNumber(
*      EXPORTING
*        it_mobphone_local    = <fs_businesspartneraddress>-to_mobilephonenumber-results
*        it_mobphone_remoto =
*        VALUE #( lt_remoto[ businesspartner = <fs_businesspartneraddress>-businesspartner addressidbyexternalsystem = <fs_businesspartneraddress>-addressid ]-to_mobilephonenumber-results  OPTIONAL )
*        iv_addressid =  VALUE #( lt_remoto[ businesspartner = <fs_businesspartneraddress>-businesspartner addressidbyexternalsystem = <fs_businesspartneraddress>-addressid ]-addressid  OPTIONAL )
*        CHANGING
*        cv_json = lv_json ).
*
*        to_PhoneNumber(
*      EXPORTING
*        it_phonenumber_local    = <fs_businesspartneraddress>-to_phonenumber-results
*        it_phonenumber_remoto =
*        VALUE #( lt_remoto[ businesspartner = <fs_businesspartneraddress>-businesspartner addressidbyexternalsystem = <fs_businesspartneraddress>-addressid ]-to_phonenumber-results  OPTIONAL )
*        iv_addressid =  VALUE #( lt_remoto[ businesspartner = <fs_businesspartneraddress>-businesspartner addressidbyexternalsystem = <fs_businesspartneraddress>-addressid ]-addressid  OPTIONAL )
*        CHANGING
*        cv_json = lv_json ).

*        to_URLAddress(
*      EXPORTING
*        it_urladdress_local    = <fs_businesspartneraddress>-to_urladdress-results
*        it_urladdress_remoto =
*        VALUE #( lt_remoto[ businesspartner = <fs_businesspartneraddress>-businesspartner addressidbyexternalsystem = <fs_businesspartneraddress>-addressid ]-to_urladdress-results  OPTIONAL )
*        iv_addressid =  VALUE #( lt_remoto[ businesspartner = <fs_businesspartneraddress>-businesspartner addressidbyexternalsystem = <fs_businesspartneraddress>-addressid ]-addressid  OPTIONAL )
*        CHANGING
*        cv_json = lv_json ).

      ENDLOOP.

    ELSE.
      send_log( EXPORTING it_return = lt_return iv_method =  gc_patch ).
    ENDIF.

  ENDMETHOD.


  METHOD change_businesspartneraddress.

    REPLACE is_aderess-BusinessPartner IN cv_json WITH space.
    REPLACE is_aderess-AddressID IN cv_json WITH space.

  ENDMETHOD.


  METHOD conv_raw16.

    DATA: lv_guid TYPE string .

    CALL FUNCTION 'SSFC_BASE64_ENCODE'
      EXPORTING
        bindata = CONV xstring( iv_raw )
      IMPORTING
        b64data = lv_guid
      EXCEPTIONS
        OTHERS  = 1.

    IF sy-subrc EQ 0.

      DATA(lv_uuid_hyphened_act) = cl_soap_wsrmb_helper=>convert_uuid_raw_to_hyphened(  iv_raw ).

      REPLACE lv_guid IN cv_json WITH lv_uuid_hyphened_act.

    ENDIF.

  ENDMETHOD.


  METHOD to_addressusage.

    DATA:
      lt_addressusage_local  TYPE STANDARD TABLE OF bapibus1006_addressusage,
      lt_addressusage_remoto TYPE STANDARD TABLE OF bapibus1006_addressusage,

      lt_bapiaduri_local     TYPE STANDARD TABLE OF bapiaduri,
      lt_bapiaduri_remoto    TYPE STANDARD TABLE OF bapiaduri,
      lt_bapiaduri_delete    TYPE STANDARD TABLE OF bapiaduri,
      lt_bapiaduri_x         TYPE STANDARD TABLE OF bapiadurix,
      lt_bapiaduri_change    TYPE STANDARD TABLE OF bapiaduri,

      lt_bapiadsmtp_local    TYPE STANDARD TABLE OF bapiadsmtp,
      lt_bapiadsmtp_remoto   TYPE STANDARD TABLE OF bapiadsmtp,
      lt_bapiadsmtp_delete   TYPE STANDARD TABLE OF bapiadsmtp,
      lt_bapiadsmtp_x        TYPE STANDARD TABLE OF bapiadsmtx,
      lt_bapiadsmtp_change   TYPE STANDARD TABLE OF bapiadsmtp,

      lt_bapiadtel_local     TYPE STANDARD TABLE OF bapiadtel,
      lt_bapiadtel_remoto    TYPE STANDARD TABLE OF bapiadtel,
      lt_bapiadtel_delete    TYPE STANDARD TABLE OF bapiadtel,
      lt_bapiadtel_x         TYPE STANDARD TABLE OF bapiadtelx,
      lt_bapiadtel_change    TYPE STANDARD TABLE OF bapiadtel,

      lt_bapiadfax_local     TYPE STANDARD TABLE OF bapiadfax,
      lt_bapiadfax_remoto    TYPE STANDARD TABLE OF bapiadfax,
      lt_bapiadfax_delete    TYPE STANDARD TABLE OF bapiadfax,
      lt_bapiadfax_x         TYPE STANDARD TABLE OF bapiadfaxx,
      lt_bapiadfax_change    TYPE STANDARD TABLE OF bapiadfax,

      lt_addressusage_change TYPE STANDARD TABLE OF bapibus1006_addressusage,
      lt_addressusage_delete TYPE STANDARD TABLE OF bapibus1006_addressusage,
      lt_addressusage_x      TYPE STANDARD TABLE OF bapibus1006_addressusage_x,
      lt_addressusage_del_x  TYPE STANDARD TABLE OF bapibus1006_addressusage_x,

      lt_return              TYPE STANDARD TABLE OF bapiret2,
      ls_addressdata         TYPE bapibus1006_address,
      lv_addresscreated      TYPE sysuuid_c,
      ls_data_local          TYPE bapibus1006_address,
      ls_addressdata_remoto  TYPE bapibus1006_address,
      ls_datax               TYPE bapibus1006_address_x,
      lv_cont                TYPE i,
      lv_contador            TYPE i,
      ls_td                  TYPE sydes_desc,
      lr_descr               TYPE REF TO cl_abap_structdescr.

    DATA(lt_address) = is_address_local.

    IF is_address_main_remoto-addressid IS NOT INITIAL.
      DATA(lv_addressid) = |{ CONV char10( is_address_main_remoto-addressid ) ALPHA = IN }|.
    ENDIF.

    " Patch
    IF lv_addressid IS NOT INITIAL.

      " BUSCAR DADOS OIL
      DATA(lv_date_remoto) =  CONV dats( change_addressusage( iv_date = is_address_main_remoto-validityenddate ) ).
      DATA(lv_guid_remoto) = VALUE char32( gt_but020_remoto[ addrnumber = lv_addressid ]-address_guid OPTIONAL ).

      CALL FUNCTION 'BAPI_BUPA_ADDRESS_GETDETAIL'
        DESTINATION gv_destination_rfc
        EXPORTING
          businesspartner = gv_bp
          addressguid     = lv_guid_remoto
          valid_date      = lv_date_remoto
        IMPORTING
          addressdata     = ls_addressdata_remoto
        TABLES
          addressusage    = lt_addressusage_remoto
          bapiadtel       = lt_bapiadtel_remoto
          bapiadfax       = lt_bapiadfax_remoto
          bapiadsmtp      = lt_bapiadsmtp_remoto
          bapiaduri       = lt_bapiaduri_remoto
          return          = lt_return.

      connection_close(  ).

      check_qtd_usages( EXPORTING iv_addresid = CONV #( lv_addressid ) CHANGING ct_usages = lt_addressusage_remoto ).

      " BUSCAR DADOS RETAIL
      DATA(lv_Addressid_local) = |{ CONV char10( cs_address-addressid )  ALPHA = IN }|.
      DATA(lv_date_local) = CONV dats( change_addressusage( iv_date = cs_address-validityenddate ) ).
      DATA(lv_guid_local) = VALUE char32( gt_but020[ addrnumber = lv_Addressid_local ]-address_guid OPTIONAL ).

      CALL FUNCTION 'BAPI_BUPA_ADDRESS_GETDETAIL'
        EXPORTING
          businesspartner = gv_bp
          addressguid     = lv_guid_local
          valid_date      = lv_date_local
        IMPORTING
          addressdata     = ls_data_local
        TABLES
          addressusage    = lt_addressusage_local
          bapiadtel       = lt_bapiadtel_local
          bapiadfax       = lt_bapiadfax_local
          bapiadsmtp      = lt_bapiadsmtp_local
          bapiaduri       = lt_bapiaduri_local
          return          = lt_return.

      connection_close(  ).

      check_qtd_usages( EXPORTING iv_addresid = CONV #( lv_Addressid_local ) iv_action = abap_true CHANGING ct_usages = lt_addressusage_local ).

      " DELETAR ADDRESS USAGES
      LOOP AT lt_addressusage_remoto INTO DATA(ls_usage_remoto).

        lv_contador = lv_contador + 1.

        CHECK NOT line_exists( lt_addressusage_local[ addresstype  = ls_usage_remoto-addresstype
                                                                                       usagevalidto = ls_usage_remoto-usagevalidto ] ).

        APPEND ls_usage_remoto TO lt_addressusage_delete.
        APPEND VALUE bapibus1006_addressusage_x( updateflag = gc_values-d ) TO  lt_addressusage_del_x.

      ENDLOOP.

      " DELETAR TEL
      IF lt_bapiadtel_remoto[] NE lt_bapiadtel_local[].
        LOOP AT lt_bapiadtel_remoto INTO DATA(ls_bapiadtel_remoto).

          APPEND ls_bapiadtel_remoto TO lt_bapiadtel_delete.
          APPEND VALUE bapiadtelx( updateflag = gc_values-d ) TO  lt_bapiadtel_x.

        ENDLOOP.
      ENDIF.

      CLEAR: lv_contador.

      " DELETAR FAX
      LOOP AT lt_bapiadfax_remoto INTO DATA(ls_bapiadfax_remoto).

        lv_contador = lv_contador + 1.

        CHECK NOT line_exists( lt_bapiadfax_local[ table_line = ls_bapiadfax_remoto ] ).

        APPEND ls_bapiadfax_remoto TO lt_bapiadfax_delete.
        APPEND VALUE bapiadfaxx( updateflag = gc_values-d ) TO  lt_bapiadfax_x.

      ENDLOOP.

      " DELETAR EMAIL
      LOOP AT lt_bapiadsmtp_remoto INTO DATA(ls_bapiadsmtp_remoto).

        lv_contador = lv_contador + 1.

        CHECK NOT line_exists( lt_bapiadsmtp_local[ table_line = ls_bapiadsmtp_remoto ] ).

        APPEND ls_bapiadsmtp_remoto TO lt_bapiadsmtp_delete.
        APPEND VALUE bapiadsmtx( updateflag = gc_values-d ) TO  lt_bapiadsmtp_x.

      ENDLOOP.

      " DELETAR URI
      LOOP AT lt_bapiaduri_remoto INTO DATA(ls_bapiaduri_remoto).

        lv_contador = lv_contador + 1.

        CHECK NOT line_exists( lt_bapiaduri_local[ table_line = ls_bapiaduri_remoto ] ).

        APPEND ls_bapiaduri_remoto TO lt_bapiaduri_delete.
        APPEND VALUE bapiadurix( updateflag = gc_values-d ) TO  lt_bapiaduri_x.

      ENDLOOP.

      IF lt_addressusage_delete IS NOT INITIAL OR
          lt_bapiadtel_delete IS NOT INITIAL OR
          lt_bapiadfax_delete IS NOT INITIAL OR
          lt_bapiadsmtp_delete IS NOT INITIAL OR
          lt_bapiaduri_delete IS NOT INITIAL.

        CALL FUNCTION 'BAPI_BUPA_ADDRESS_CHANGE'
          DESTINATION gv_destination_rfc
          EXPORTING
            businesspartner = gv_bp
            addressguid     = lv_guid_remoto
            addressdata     = ls_addressdata_remoto
            addressdata_x   = ls_datax
          TABLES
            addressusage    = lt_addressusage_delete
            addressusage_x  = lt_addressusage_del_x
            bapiadtel       = lt_bapiadtel_delete
            bapiadtel_x     = lt_bapiadtel_x
            bapiadfax       = lt_bapiadfax_delete
            bapiadfax_x     = lt_bapiadfax_x
            bapiadsmtp      = lt_bapiadsmtp_delete
            bapiadsmt_x     = lt_bapiadsmtp_x
            bapiaduri       = lt_bapiaduri_delete
            bapiaduri_x     = lt_bapiaduri_x
            return          = lt_return.

        IF NOT line_exists( lt_return[ type = gc_values-e ] ).
          call_commit(  ).
          DATA(lv_sucess) = abap_true.
        ENDIF.

        CLEAR: lt_bapiadtel_x[].

        connection_close(  ).

        send_log( EXPORTING it_return = lt_return iv_json = serialize_tables_json(   it_return  = VALUE ty_bapi(
                                                                                                                                    addressusage    =      lt_addressusage_delete
                                                                                                                                    addressusagex  = lt_addressusage_del_x
                                                                                                                                    bapiadtel  = lt_bapiadtel_delete
                                                                                                                                    bapiadtelx = lt_bapiadtel_x
                                                                                                                                    bapiadfax  = lt_bapiadfax_delete
                                                                                                                                    bapiadfaxx    = lt_bapiadfax_x
                                                                                                                                    bapiadsmtp   = lt_bapiadsmtp_delete
                                                                                                                                    bapiadsmtpx = lt_bapiadsmtp_x
                                                                                                                                    bapiaduri    = lt_bapiaduri_delete
                                                                                                                                    bapiadurix  = lt_bapiaduri_x  ) ) iv_method =  gc_delete ).

        CLEAR: lt_return[], lt_bapiadtel_x[],  lt_bapiadfax_x[], lt_bapiadsmtp_x[], lt_bapiaduri_x[].

      ENDIF.

      " ATUALIZAR ADRESS USAGE OIL
      IF lv_sucess EQ abap_true.

        CALL FUNCTION 'BAPI_BUPA_ADDRESS_GETDETAIL'
          DESTINATION gv_destination_rfc
          EXPORTING
            businesspartner = gv_bp
            addressguid     = lv_guid_remoto
            valid_date      = lv_date_remoto
          IMPORTING
            addressdata     = ls_addressdata_remoto
          TABLES
            addressusage    = lt_addressusage_remoto
            bapiadtel       = lt_bapiadtel_remoto
            bapiadfax       = lt_bapiadfax_remoto
            bapiadsmtp      = lt_bapiadsmtp_remoto
            bapiaduri       = lt_bapiaduri_remoto
            return          = lt_return.

        connection_close(  ).

      ENDIF.

      " VALIDAR DADOS ADDRESS - CABEÇALHO
      DATA(ls_data_remoto_cop) = ls_addressdata_remoto.

      ls_data_remoto_cop-standardaddress = ls_data_local-standardaddress.
      ls_data_local-extaddressnumber = ls_data_remoto_cop-extaddressnumber.

      IF ls_data_local NE ls_data_remoto_cop.

        lr_descr ?= cl_abap_typedescr=>describe_by_data( ls_data_local  ).
        LOOP AT lr_descr->components ASSIGNING FIELD-SYMBOL(<fs_field>).
          ASSIGN COMPONENT <fs_field>-name  OF STRUCTURE ls_data_local TO FIELD-SYMBOL(<fs_local>).
          IF sy-subrc NE 0.
            CONTINUE.
          ENDIF.
          ASSIGN COMPONENT <fs_field>-name OF STRUCTURE ls_datax TO FIELD-SYMBOL(<fs_data_local_x>).
          IF <fs_local> IS NOT INITIAL.
            <fs_data_local_x> = abap_true.
            DATA(lv_continue) = abap_true.
          ENDIF.
        ENDLOOP.
      ENDIF.

      CLEAR: lv_contador.

      " VALIDAR DADOS ADDRESS USAGE
      LOOP AT lt_addressusage_local INTO DATA(ls_usage_local).

        CHECK NOT line_exists( lt_addressusage_remoto[ table_line = ls_usage_local ] ).

        lv_contador = lv_contador + 1.

        APPEND ls_usage_local TO lt_addressusage_change.
        APPEND INITIAL LINE TO lt_addressusage_x ASSIGNING FIELD-SYMBOL(<fs_usage_x>).

        lr_descr ?= cl_abap_typedescr=>describe_by_data( <fs_usage_x> ).
        LOOP AT lr_descr->components ASSIGNING <fs_field>.
          ASSIGN COMPONENT <fs_field>-name OF STRUCTURE ls_usage_local TO <fs_local>.
          IF NOT sy-subrc = 0 AND <fs_field>-name NE 'UPDATEFLAG'.
            CONTINUE.
          ENDIF.
          ASSIGN COMPONENT <fs_field>-name OF STRUCTURE lt_addressusage_x[ lv_contador ] TO FIELD-SYMBOL(<fs_adusage_x>).
          IF <fs_local> IS NOT INITIAL.

            IF <fs_field>-name EQ 'UPDATEFLAG'.
              <fs_adusage_x> =
              COND #( WHEN line_exists( lt_addressusage_remoto[ addresstype  = ls_usage_local-addresstype standardaddressusage  = ls_usage_local-standardaddressusage ] ) THEN gc_values-u ELSE gc_values-i ).
            ELSE.
              <fs_adusage_x> = abap_true.
            ENDIF.

            lv_continue = abap_true.

          ENDIF.

          " Em atalização não preencher os campos abaixo
          IF <fs_usage_x>-updateflag EQ gc_values-u.
            CLEAR: <fs_usage_x>-usagevalidto, ls_datax-standardaddress.
          ENDIF.

        ENDLOOP.

        IF <fs_usage_x>-updateflag EQ gc_values-i.
          CLEAR: ls_datax-standardaddress.
        ENDIF.

      ENDLOOP.

      " VALIDAR DADOS TEL
      CLEAR: lv_contador.

      LOOP AT lt_bapiadtel_local INTO DATA(ls_bapiadtel_local).

        CHECK NOT line_exists( lt_bapiadtel_remoto[ table_line = ls_bapiadtel_local  ] ).

        lv_contador = lv_contador + 1.

        APPEND ls_bapiadtel_local TO lt_bapiadtel_change.
        APPEND INITIAL LINE TO lt_bapiadtel_x ASSIGNING FIELD-SYMBOL(<fs_bapiadtel_x>).

        lr_descr ?= cl_abap_typedescr=>describe_by_data( <fs_bapiadtel_x> ).
        LOOP AT lr_descr->components ASSIGNING <fs_field>.
          ASSIGN COMPONENT <fs_field>-name OF STRUCTURE ls_bapiadtel_local TO <fs_local>.
          IF NOT sy-subrc = 0 AND <fs_field>-name NE 'UPDATEFLAG'.
            CONTINUE.
          ENDIF.
          ASSIGN COMPONENT <fs_field>-name OF STRUCTURE lt_bapiadtel_x[ lv_contador ] TO FIELD-SYMBOL(<fs_bapiadtel_xx>).
          IF <fs_local> IS NOT INITIAL.

            IF <fs_field>-name EQ 'UPDATEFLAG'.
              <fs_bapiadtel_xx> =
              COND #( WHEN line_exists( lt_bapiadtel_remoto[ table_line = ls_bapiadtel_local ] ) THEN gc_values-u ELSE gc_values-i ).
            ELSE.
              <fs_bapiadtel_xx> = abap_true.
            ENDIF.

            lv_continue = abap_true.

          ENDIF.

        ENDLOOP.

      ENDLOOP.

      " VALIDAR DADOS FAX
      CLEAR: lv_contador.

      LOOP AT lt_bapiadfax_local INTO DATA(ls_bapiadfax_local).

        CHECK NOT line_exists( lt_bapiadfax_remoto[ table_line = ls_bapiadfax_local  ] ).

        lv_contador = lv_contador + 1.

        APPEND ls_bapiadfax_local TO lt_bapiadfax_change.
        APPEND INITIAL LINE TO lt_bapiadfax_x ASSIGNING FIELD-SYMBOL(<fs_bapiadfax_x>).

        lr_descr ?= cl_abap_typedescr=>describe_by_data( <fs_bapiadfax_x> ).
        LOOP AT lr_descr->components ASSIGNING <fs_field>.
          ASSIGN COMPONENT <fs_field>-name OF STRUCTURE ls_bapiadfax_local TO <fs_local>.
          IF NOT sy-subrc = 0 AND <fs_field>-name NE 'UPDATEFLAG'.
            CONTINUE.
          ENDIF.
          ASSIGN COMPONENT <fs_field>-name OF STRUCTURE lt_bapiadfax_x[ lv_contador ] TO FIELD-SYMBOL(<fs_bapiadfax_xx>).
          IF <fs_local> IS NOT INITIAL.

            IF <fs_field>-name EQ 'UPDATEFLAG'.
              <fs_bapiadfax_xx> =
              COND #( WHEN line_exists( lt_bapiadfax_remoto[ table_line = ls_bapiadfax_local ] ) THEN gc_values-u ELSE gc_values-i ).
            ELSE.
              <fs_bapiadfax_xx> = abap_true.
            ENDIF.

            lv_continue = abap_true.

          ENDIF.

        ENDLOOP.

      ENDLOOP.

      " VALIDAR DADOS EMAIL
      CLEAR: lv_contador.

      LOOP AT lt_bapiadsmtp_local INTO DATA(ls_bapiadsmtp_local).

        CHECK NOT line_exists( lt_bapiadsmtp_remoto[ table_line = ls_bapiadsmtp_local  ] ).

        lv_contador = lv_contador + 1.

        APPEND ls_bapiadsmtp_local TO lt_bapiadsmtp_change.
        APPEND INITIAL LINE TO lt_bapiadsmtp_x ASSIGNING FIELD-SYMBOL(<fs_bapiadsmtp_x>).

        lr_descr ?= cl_abap_typedescr=>describe_by_data( <fs_bapiadsmtp_x> ).
        LOOP AT lr_descr->components ASSIGNING <fs_field>.
          ASSIGN COMPONENT <fs_field>-name OF STRUCTURE ls_bapiadsmtp_local TO <fs_local>.
          IF NOT sy-subrc = 0 AND <fs_field>-name NE 'UPDATEFLAG'.
            CONTINUE.
          ENDIF.
          ASSIGN COMPONENT <fs_field>-name OF STRUCTURE lt_bapiadsmtp_x[ lv_contador ] TO FIELD-SYMBOL(<fs_bapiadsmtp_xx>).
          IF <fs_local> IS NOT INITIAL.

            IF <fs_field>-name EQ 'UPDATEFLAG'.
              <fs_bapiadsmtp_xx> =
              COND #( WHEN line_exists( lt_bapiadsmtp_remoto[ table_line = ls_bapiadsmtp_local ] ) THEN gc_values-u ELSE gc_values-i ).
            ELSE.
              <fs_bapiadsmtp_xx> = abap_true.
            ENDIF.

            lv_continue = abap_true.

          ENDIF.

        ENDLOOP.

      ENDLOOP.

      " VALIDAR DADOS URI
      CLEAR: lv_contador.

      LOOP AT lt_bapiaduri_local INTO DATA(ls_bapiaduri_local).

        CHECK NOT line_exists( lt_bapiaduri_remoto[ table_line = ls_bapiaduri_local  ] ).

        lv_contador = lv_contador + 1.

        APPEND ls_bapiaduri_local TO lt_bapiaduri_change.
        APPEND INITIAL LINE TO lt_bapiaduri_x ASSIGNING FIELD-SYMBOL(<fs_bapiaduri_x>).

        lr_descr ?= cl_abap_typedescr=>describe_by_data( <fs_bapiaduri_x> ).
        LOOP AT lr_descr->components ASSIGNING <fs_field>.
          ASSIGN COMPONENT <fs_field>-name OF STRUCTURE ls_bapiaduri_local TO <fs_local>.
          IF NOT sy-subrc = 0 AND <fs_field>-name NE 'UPDATEFLAG'.
            CONTINUE.
          ENDIF.
          ASSIGN COMPONENT <fs_field>-name OF STRUCTURE lt_bapiaduri_x[ lv_contador ] TO FIELD-SYMBOL(<fs_bapiaduri_xx>).
          IF <fs_local> IS NOT INITIAL.

            IF <fs_field>-name EQ 'UPDATEFLAG'.
              <fs_bapiaduri_xx> =
              COND #( WHEN line_exists( lt_bapiaduri_remoto[ table_line = ls_bapiaduri_local ] ) THEN gc_values-u ELSE gc_values-i ).
            ELSE.
              <fs_bapiaduri_xx> = abap_true.
            ENDIF.

            lv_continue = abap_true.

          ENDIF.

        ENDLOOP.

      ENDLOOP.

      IF  lv_continue IS INITIAL.
        EXIT.
      ENDIF.

      CALL FUNCTION 'BAPI_BUPA_ADDRESS_CHANGE'
        DESTINATION gv_destination_rfc
        EXPORTING
          businesspartner = gv_bp
          addressguid     = lv_guid_remoto
          addressdata     = ls_data_local
          addressdata_x   = ls_datax
        TABLES
          addressusage    = lt_addressusage_change
          addressusage_x  = lt_addressusage_x
          bapiadtel       = lt_bapiadtel_change
          bapiadtel_x     = lt_bapiadtel_x
          bapiadfax       = lt_bapiadfax_change
          bapiadfax_x     = lt_bapiadfax_x
          bapiadsmtp      = lt_bapiadsmtp_change
          bapiadsmt_x     = lt_bapiadsmtp_x
          bapiaduri       = lt_bapiaduri_change
          bapiaduri_x     = lt_bapiaduri_x
          return          = lt_return.

      IF NOT line_exists( lt_return[ type = gc_values-e ] ).
        call_commit(  ).
        ev_ok = abap_true.
      ENDIF.

      connection_close(  ).

      send_log( EXPORTING it_return = lt_return iv_json = serialize_tables_json(     it_return  = VALUE ty_bapi(
                                                                                                                                    addressusage =  lt_addressusage_change
                                                                                                                                    addressusagex  =  lt_addressusage_x
                                                                                                                                    bapiadtel  = lt_bapiadtel_change
                                                                                                                                    bapiadtelx = lt_bapiadtel_x
                                                                                                                                    bapiadfax  = lt_bapiadfax_change
                                                                                                                                    bapiadfaxx  = lt_bapiadfax_x
                                                                                                                                    bapiadsmtp  = lt_bapiadsmtp_change
                                                                                                                                    bapiadsmtpx = lt_bapiadsmtp_x
                                                                                                                                    bapiaduri = lt_bapiaduri_change
                                                                                                                                    bapiadurix  = lt_bapiaduri_x  ) ) iv_method =  gc_patch ).

      "Post
    ELSE.

      lv_addressid = |{ CONV char10( cs_address-addressid )  ALPHA = IN }|.

      lv_date_local = change_addressusage( iv_date = cs_address-validityenddate ).
      lv_guid_local = VALUE char32( gt_but020[ addrnumber = lv_addressid  ]-address_guid OPTIONAL ).

      CALL FUNCTION 'BAPI_BUPA_ADDRESS_GETDETAIL'
        EXPORTING
          businesspartner = gv_bp
          addressguid     = lv_guid_local
          valid_date      = lv_date_local
        IMPORTING
          addressdata     = ls_data_local
        TABLES
          addressusage    = lt_addressusage_local
          bapiadtel       = lt_bapiadtel_local
          bapiadfax       = lt_bapiadfax_local
          bapiadsmtp      = lt_bapiadsmtp_local
          bapiaduri       = lt_bapiaduri_local
          return          = lt_return.

      connection_close(  ).

      ls_data_local-extaddressnumber = cs_address-addressid.
      CLEAR: ls_data_local-standardaddress.

      CALL FUNCTION 'BAPI_BUPA_ADDRESS_ADD'
        DESTINATION gv_destination_rfc
        EXPORTING
          businesspartner = gv_bp
          addressdata     = ls_data_local
        TABLES
          addressusage    = lt_addressusage_local
          bapiadtel       = lt_bapiadtel_local
          bapiadfax       = lt_bapiadfax_local
          bapiadsmtp      = lt_bapiadsmtp_local
          bapiaduri       = lt_bapiaduri_local
          return          = lt_return.

      IF NOT line_exists( lt_return[ type = gc_values-e ] ).
        call_commit(  ).
        ev_ok = abap_true.
      ENDIF.

      connection_close(  ).

      send_log(
        EXPORTING
            it_return = lt_return
            iv_method =  gc_post
            iv_addresid = lv_addresscreated
            iv_json = serialize_tables_json(   it_return  = VALUE ty_bapi(
                                                                addressusage  = lt_addressusage_local
                                                                bapiadtel = lt_bapiadtel_local
                                                                bapiadfax = lt_bapiadfax_local
                                                                bapiadsmtp  = lt_bapiadsmtp_local
                                                                bapiaduri = lt_bapiaduri_local ) ) ).

    ENDIF.

    CLEAR: lt_addressusage_local[], lt_addressusage_remoto[], lt_addressusage_x[], lt_return[].

  ENDMETHOD.


  METHOD change_addressusage.

    DATA:
      lv_date     TYPE sy-datum,
      lv_data     TYPE string,
      lv_msec     TYPE num03,
      lv_time     TYPE sy-uzeit,
      lv_validity TYPE char40,
      lv_int      TYPE i.

    lv_validity =  iv_date.

    DATA(lv_len) = strlen( lv_validity ).

    CLEAR lv_int.

    WHILE lv_int < lv_len.

      IF NOT iv_date+lv_int(1) CA gc_values-number.

        MOVE space TO lv_validity+lv_int(1).

      ENDIF.

      ADD 1 TO lv_int.

    ENDWHILE.

    CONDENSE lv_validity NO-GAPS.

    lv_len = strlen( lv_validity ) - 4.

    cl_pco_utility=>convert_java_timestamp_to_abap(
    EXPORTING
    iv_timestamp = CONV #( lv_validity(lv_len) )
    IMPORTING
    ev_date = lv_date
    ev_msec = lv_msec
    ev_time = lv_time ).

    rv_date = lv_date.

  ENDMETHOD.


  METHOD to_emailaddress.

    " Delete

    LOOP AT is_emailaddress_remoto ASSIGNING FIELD-SYMBOL(<fs_emailaddress>).

      CHECK NOT line_exists(  is_emailaddress_local[ OrdinalNumber  = <fs_emailaddress>-OrdinalNumber ] ).  " Validar somente pelo ordinalnumber

      DATA(lv_uri_cop) = gv_uri_businessemailaddress.

      REPLACE gc_values-value1 IN lv_uri_cop  WITH <fs_emailaddress>-addressid.
      REPLACE gc_values-value2 IN lv_uri_cop  WITH <fs_emailaddress>-person.
      REPLACE gc_values-value3 IN lv_uri_cop  WITH <fs_emailaddress>-ordinalnumber.

      send_data(
      iv_uri = lv_uri_cop
      iv_method = gc_delete
      iv_destination = gv_dest_oil
    ).



    ENDLOOP.


    DATA(ls_emailaddress_local) = is_emailaddress_local.

    LOOP AT ls_emailaddress_local ASSIGNING <fs_emailaddress>.

      " Patch
      IF  line_exists(  is_emailaddress_remoto[  OrdinalNumber  = <fs_emailaddress>-OrdinalNumber ] ). " Validar somente pelo ordinalnumber

        IF NOT line_exists( is_emailaddress_remoto[ IsDefaultEmailAddress = <fs_emailaddress>-IsDefaultEmailAddress
                                                                                  EmailAddress = <fs_emailaddress>-EmailAddress
                                                                                  SearchEmailAddress = <fs_emailaddress>-SearchEmailAddress
                                                                                  AddressCommunicationRemarkText = <fs_emailaddress>-AddressCommunicationRemarkText ] ).

          lv_uri_cop = gv_uri_businessemailaddress.

          DATA(ls_addressI) = VALUE #( is_emailaddress_remoto[  OrdinalNumber  = <fs_emailaddress>-OrdinalNumber ]  OPTIONAL ).

          REPLACE gc_values-value1 IN lv_uri_cop  WITH ls_addressi-addressid.
          REPLACE gc_values-value2 IN lv_uri_cop WITH ls_addressi-person.
          REPLACE gc_values-value3 IN lv_uri_cop  WITH ls_addressi-ordinalnumber.

          CLEAR: <fs_emailaddress>-addressid, <fs_emailaddress>-person, <fs_emailaddress>-ordinalnumber.
          DATA(lv_json) = serialize_json( is_json = <fs_emailaddress> iv_compress = abap_true ).

          send_data(
           iv_uri = lv_uri_cop
          iv_method = gc_patch
          iv_destination = gv_dest_oil
          iv_json = lv_json
       ).



        ENDIF.

        "Post
      ELSE.

        <fs_emailaddress>-addressid = iv_addressid.

        lv_json = serialize_json( <fs_emailaddress> ).

        send_data(
        iv_uri = gv_uri_to_emailaddress
        iv_method = gc_post
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).



      ENDIF.

    ENDLOOP.


  ENDMETHOD.


  METHOD change_emailaddress.


    IF is_address-IsDefaultEmailAddress EQ abap_true.
      REPLACE '"IsDefaultEmailAddress":"X"'  IN cv_json WITH '"IsDefaultEmailAddress":true' .
    ELSE.
      REPLACE '"IsDefaultEmailAddress":""'  IN cv_json WITH '"IsDefaultEmailAddress":false' .
    ENDIF.

    insert_quotation(
    EXPORTING
    iv_field = 'OrdinalNumber":'
    iv_value = CONV #( is_address-OrdinalNumber )
    CHANGING
    cv_json = cv_json
     ).

  ENDMETHOD.


  METHOD to_faxnumber.

    DATA(lt_faxnumber_remoto) = it_faxnumber_remoto.

    " Delete
    LOOP AT lt_faxnumber_remoto ASSIGNING FIELD-SYMBOL(<fs_faxnumber>).

      CHECK NOT line_exists(  it_faxnumber_local[ OrdinalNumber  = <fs_faxnumber>-OrdinalNumber ] ).  " Validar somente pelo ordinalnumber

      DATA(lv_cop_uri) = gv_uri_to_businessfaxnumber.

      REPLACE gc_values-value1 IN lv_cop_uri  WITH <fs_faxnumber>-AddressID.
      REPLACE gc_values-value2 IN lv_cop_uri  WITH <fs_faxnumber>-Person.
      REPLACE gc_values-value3 IN lv_cop_uri  WITH |{ <fs_faxnumber>-OrdinalNumber ALPHA = IN }|.

      send_data(
      iv_uri = lv_cop_uri
      iv_method = gc_delete
      iv_destination = gv_dest_oil
    ).



    ENDLOOP.

    DATA(ls_faxnumber_local_cop) = it_faxnumber_local.

    LOOP AT ls_faxnumber_local_cop ASSIGNING <fs_faxnumber>.

      " Patch
      IF  line_exists(  it_faxnumber_remoto[  OrdinalNumber  = <fs_faxnumber>-OrdinalNumber ] ).  " Validar somente pelo ordinalnumber

        IF NOT line_exists( it_faxnumber_remoto[ IsDefaultFaxNumber  = <fs_faxnumber>-IsDefaultFaxNumber
                                                                              FaxCountry   = <fs_faxnumber>-FaxCountry
                                                                              FaxNumber   = <fs_faxnumber>-FaxNumber
                                                                              FaxNumberExtension  = <fs_faxnumber>-FaxNumberExtension
                                                                              InternationalFaxNumber  = <fs_faxnumber>-InternationalFaxNumber
                                                                              AddressCommunicationRemarkText   = <fs_faxnumber>-AddressCommunicationRemarkText ] ).

          lv_cop_urI = gv_uri_to_businessfaxnumber.

          DATA(ls_fax) = VALUE #( it_faxnumber_remoto[  OrdinalNumber  = <fs_faxnumber>-OrdinalNumber ] OPTIONAL ).

          REPLACE gc_values-value1 IN lv_cop_urI   WITH ls_fax-addressid.
          REPLACE gc_values-value2 IN lv_cop_urI   WITH ls_fax-Person.
          REPLACE gc_values-value3 IN lv_cop_urI   WITH <fs_faxnumber>-OrdinalNumber.

          CLEAR: <fs_faxnumber>-addressid, <fs_faxnumber>-person, <fs_faxnumber>-ordinalnumber.

          DATA(lv_json) = serialize_json( <fs_faxnumber> ).

          send_data(
          iv_uri = lv_cop_urI
          iv_method = gc_patch
          iv_destination = gv_dest_oil
          iv_json = lv_json
       ).



        ENDIF.

        "Post
      ELSE.

        <fs_faxnumber>-addressid = iv_addressid.

        lv_json = serialize_json( <fs_faxnumber> ).

        send_data(
        iv_uri = gv_uri_to_faxnumber
        iv_method = gc_post
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).



      ENDIF.

    ENDLOOP.

  ENDMETHOD.


  METHOD to_mobilephonenumber.

    DATA(lt_mobphone_remoto) = it_mobphone_remoto.

    " Delete
    LOOP AT lt_mobphone_remoto ASSIGNING FIELD-SYMBOL(<fs_mobphone>).

      CHECK NOT line_exists(  it_mobphone_local[   DestinationLocationCountry  = <fs_mobphone>-DestinationLocationCountry
                                                                                  IsDefaultPhoneNumber  = <fs_mobphone>-IsDefaultPhoneNumber
                                                                                  PhoneNumber   = <fs_mobphone>-PhoneNumber
                                                                                  PhoneNumberExtension  = <fs_mobphone>-PhoneNumberExtension
                                                                                  internationalPhoneNumber = <fs_mobphone>-internationalPhoneNumber
                                                                                  PhoneNumberType   = <fs_mobphone>-PhoneNumberType
                                                                                  AddressCommunicationRemarkText   = <fs_mobphone>-AddressCommunicationRemarkText ] ).  " Validar somente pelo ordinalnumber

      DATA(lv_uri_cop) = gv_uri_businessmobilephone.

      REPLACE gc_values-value1 IN lv_uri_cop WITH <fs_mobphone>-addressid.
      REPLACE gc_values-value2 IN lv_uri_cop WITH <fs_mobphone>-Person.
      REPLACE gc_values-value3 IN lv_uri_cop WITH |{  <fs_mobphone>-OrdinalNumber ALPHA = IN }|.

      send_data(
      iv_uri = lv_uri_cop
      iv_method = gc_delete
      iv_destination = gv_dest_oil
    ).

      WAIT UP TO '0.1' SECONDS.

    ENDLOOP.

    DATA(lt_local_cop) = it_mobphone_local.

    IF lt_local_cop IS NOT INITIAL.
      SORT lt_local_cop BY ordinalnumber ASCENDING.
    ENDIF.

    LOOP AT lt_local_cop ASSIGNING <fs_mobphone>.

      " Patch

      IF  line_exists( it_mobphone_remoto[         DestinationLocationCountry  = <fs_mobphone>-DestinationLocationCountry
                                                                            IsDefaultPhoneNumber  = <fs_mobphone>-IsDefaultPhoneNumber
                                                                            PhoneNumber   = <fs_mobphone>-PhoneNumber
                                                                            PhoneNumberExtension  = <fs_mobphone>-PhoneNumberExtension
                                                                            internationalPhoneNumber = <fs_mobphone>-internationalPhoneNumber
                                                                            PhoneNumberType   = <fs_mobphone>-PhoneNumberType
                                                                            AddressCommunicationRemarkText   = <fs_mobphone>-AddressCommunicationRemarkText ] ).

        lv_uri_cop = gv_uri_businessmobilephone.

        DATA(ls_mob) = VALUE #( it_mobphone_remoto[  OrdinalNumber  = <fs_mobphone>-OrdinalNumber ] OPTIONAL ).

        REPLACE gc_values-value1 IN lv_uri_cop WITH ls_mob-addressid.
        REPLACE gc_values-value2 IN lv_uri_cop WITH ls_mob-Person.
        REPLACE gc_values-value3 IN lv_uri_cop WITH <fs_mobphone>-OrdinalNumber .

        CLEAR: <fs_mobphone>-addressid, <fs_mobphone>-person, <fs_mobphone>-ordinalnumber.

        DATA(lv_json) = serialize_json( <fs_mobphone>  ).

        send_data(
        iv_uri = lv_uri_cop
        iv_method = gc_patch
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).

        WAIT UP TO '0.1' SECONDS.

        "Post
      ELSE.

        <fs_mobphone>-addressid = iv_addressid.

        lv_json = serialize_json( <fs_mobphone> ).

        send_data(
        iv_uri = gv_uri_to_mobilephonenumber
        iv_method = gc_post
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).

        WAIT UP TO '0.1' SECONDS.

      ENDIF.

    ENDLOOP.

  ENDMETHOD.


  METHOD to_phonenumber.

    " Delete
    LOOP AT it_phonenumber_remoto ASSIGNING FIELD-SYMBOL(<fs_phonenumber>).

      CHECK NOT line_exists(  it_phonenumber_local[ DestinationLocationCountry  = <fs_phonenumber>-DestinationLocationCountry
                                                                                   IsDefaultPhoneNumber  =  <fs_phonenumber>-IsDefaultPhoneNumber
                                                                                   PhoneNumber   =  <fs_phonenumber>-PhoneNumber
                                                                                   PhoneNumberExtension  =  <fs_phonenumber>-PhoneNumberExtension
                                                                                   internationalPhoneNumber =  <fs_phonenumber>-internationalPhoneNumber
                                                                                   PhoneNumberType   =  <fs_phonenumber>-PhoneNumberType
                                                                                   AddressCommunicationRemarkText   =  <fs_phonenumber>-AddressCommunicationRemarkText ] ).  " Validar somente pelo ordinalnumber

      DATA(lv_ordinal) =  |{ <fs_phonenumber>-OrdinalNumber ALPHA = OUT }|.

      DATA(lv_uri_cop) = gv_uri_businessphonenumber.

      REPLACE gc_values-value1 IN lv_uri_cop WITH <fs_phonenumber>-AddressID.
      REPLACE gc_values-value2 IN lv_uri_cop WITH <fs_phonenumber>-Person.
      REPLACE gc_values-value3 IN lv_uri_cop WITH lv_ordinal.

      send_data(
      iv_uri = lv_uri_cop
      iv_method = gc_delete
      iv_destination = gv_dest_oil
    ).

      WAIT UP TO '0.1' SECONDS.

    ENDLOOP.

    DATA(lt_phonenumber_cop) = it_phonenumber_local.

    IF lt_phonenumber_cop IS NOT INITIAL.
      SORT lt_phonenumber_cop BY ordinalnumber ASCENDING.
    ENDIF.

    LOOP AT lt_phonenumber_cop ASSIGNING <fs_phonenumber>.

      " Patch

      IF  line_exists( it_phonenumber_remoto[         DestinationLocationCountry  = <fs_phonenumber>-DestinationLocationCountry
                                                                                 IsDefaultPhoneNumber  =  <fs_phonenumber>-IsDefaultPhoneNumber
                                                                                 PhoneNumber   =  <fs_phonenumber>-PhoneNumber
                                                                                 PhoneNumberExtension  =  <fs_phonenumber>-PhoneNumberExtension
                                                                                 internationalPhoneNumber =  <fs_phonenumber>-internationalPhoneNumber
                                                                                 PhoneNumberType   =  <fs_phonenumber>-PhoneNumberType
                                                                                 AddressCommunicationRemarkText   =  <fs_phonenumber>-AddressCommunicationRemarkText ] ).

        lv_uri_cop = gv_uri_businessphonenumber .

        DATA(ls_phone) = VALUE #( it_phonenumber_remoto[  OrdinalNumber  = <fs_phonenumber>-OrdinalNumber ] OPTIONAL ).

        CLEAR: <fs_phonenumber>-ordinalnumber, <fs_phonenumber>-addressid, <fs_phonenumber>-person.

        DATA(lv_json) = serialize_json( is_json = <fs_phonenumber> ).

        REPLACE gc_values-value1 IN lv_uri_cop WITH ls_phone-addressid.
        REPLACE gc_values-value2 IN lv_uri_cop WITH ls_phone-Person.
        REPLACE gc_values-value3 IN lv_uri_cop WITH ls_phone-OrdinalNumber.

        send_data(
        iv_uri = lv_uri_cop
        iv_method = gc_patch
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).

        WAIT UP TO '0.1' SECONDS.

        "Post
      ELSE.

        lv_uri_cop = gv_uri_to_phonenumber.

        <fs_phonenumber>-addressid = iv_addressid.

        lv_json = serialize_json( <fs_phonenumber> ).

        send_data(
        iv_uri = lv_uri_cop
        iv_method = gc_post
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).

        WAIT UP TO '0.1' SECONDS.

      ENDIF.

    ENDLOOP.


  ENDMETHOD.


  METHOD to_urladdress.

    " Delete

    LOOP AT it_urladdress_remoto ASSIGNING FIELD-SYMBOL(<fs_urladdress>).

      CHECK NOT line_exists(  it_urladdress_local[ OrdinalNumber  = <fs_urladdress>-OrdinalNumber ] ).  " Validar somente pelo ordinalnumber

      DATA(ls_ret) =  change_urladdress( EXPORTING is_address =  <fs_urladdress> iv_method = gc_patch ).

      DATA(lv_uri_cop) = gv_uri_to_urladdress.

      REPLACE gc_values-value1 IN lv_uri_cop WITH <fs_urladdress>-AddressID.
      REPLACE gc_values-value2 IN lv_uri_cop WITH <fs_urladdress>-Person.
      REPLACE gc_values-value3 IN lv_uri_cop WITH <fs_urladdress>-OrdinalNumber.
      REPLACE gc_values-value4 IN lv_uri_cop WITH ls_ret-validitystartdate.
      REPLACE gc_values-value5 IN lv_uri_cop WITH <fs_urladdress>-isdefaulturladdress.

      send_data(
      iv_uri = lv_uri_cop
      iv_method = gc_delete
      iv_destination = gv_dest_oil
    ).



    ENDLOOP.

    DATA(lt_local) = it_urladdress_local.

    LOOP AT lt_local ASSIGNING <fs_urladdress>.

      " Patch
      IF  line_exists(  it_urladdress_remoto[  OrdinalNumber  = <fs_urladdress>-OrdinalNumber ] ).  " Validar somente pelo ordinalnumber

        IF NOT line_exists( it_urladdress_remoto[ SearchURLAddress  = <fs_urladdress>-SearchURLAddress
                                                                              AddressCommunicationRemarkText  = <fs_urladdress>-AddressCommunicationRemarkText
                                                                              URLFieldLength  = <fs_urladdress>-URLFieldLength
                                                                              WebsiteURL  = <fs_urladdress>-WebsiteURL  ] ).

          DATA(lv_json) = serialize_json( <fs_urladdress> ).

          ls_ret =  change_urladdress( EXPORTING is_address =  <fs_urladdress> iv_method = gc_patch CHANGING cv_json = lv_json ).

          DATA(ls_url) = VALUE #(  it_urladdress_remoto[  OrdinalNumber  = <fs_urladdress>-OrdinalNumber ] OPTIONAL ).

          lv_uri_cop = gv_uri_to_urladdress.

          REPLACE gc_values-value1 IN lv_uri_cop WITH ls_url-AddressID.
          REPLACE gc_values-value2 IN lv_uri_cop WITH ls_url-Person.
          REPLACE gc_values-value3 IN lv_uri_cop WITH <fs_urladdress>-OrdinalNumber.
          REPLACE gc_values-value4 IN lv_uri_cop WITH ls_ret-validitystartdate.
          REPLACE gc_values-value5 IN lv_uri_cop WITH ls_ret-isdefaulturladdress.

          send_data(
          iv_uri = lv_uri_cop
          iv_method = gc_patch
          iv_destination = gv_dest_oil
          iv_json = lv_json
       ).



        ENDIF.

        "Post
      ELSE.

        <fs_urladdress>-addressid = iv_addressid.

        lv_json = serialize_json( <fs_urladdress> ).

        send_data(
        iv_uri = gv_uri_businessurl
        iv_method = gc_post
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).



      ENDIF.

    ENDLOOP.

  ENDMETHOD.


  METHOD change_urladdress.

    DATA:
      lv_timestamp TYPE string,
      lv_date      TYPE sydate,
      lv_time      TYPE syuzeit,
      lv_msec      TYPE num03,
      lv_int       TYPE i, lv_len TYPE i,
      lv_validity  TYPE char40.

    lv_validity =  is_address-validitystartdate .

    lv_len = strlen( lv_validity ).

    CLEAR lv_int.

    WHILE lv_int < lv_len.

      IF NOT is_address-validitystartdate+lv_int(1) CA gc_values-number.

        MOVE space TO lv_validity+lv_int(1).

      ENDIF.

      ADD 1 TO lv_int.

    ENDWHILE.

    CONDENSE lv_validity NO-GAPS.

    cl_pco_utility=>convert_java_timestamp_to_abap(
    EXPORTING
    iv_timestamp = CONV #( lv_validity )
    IMPORTING
    ev_date = lv_date
    ev_msec = lv_msec
    ev_time = lv_time ).

    rs_ret = VALUE #( validitystartdate  = lv_validity ).

  ENDMETHOD.


  METHOD to_businesspartnerbank.

    " Delete
    LOOP AT is_json_remoto-d-to_businesspartnerbank-results ASSIGNING FIELD-SYMBOL(<fs_partnerbank>).

      CHECK NOT line_exists( is_json_local-d-to_businesspartnerbank-results[ BusinessPartner      = <fs_partnerbank>-BusinessPartner
                                                                                                                             BankIdentification   = <fs_partnerbank>-BankIdentification  ]  ).

      DATA(lv_uri_cop) = gv_uri_to_businesspartnerbank.

      REPLACE gc_values-value1 IN lv_uri_cop WITH <fs_partnerbank>-BusinessPartner.
      REPLACE gc_values-value2 IN lv_uri_cop WITH <fs_partnerbank>-BankIdentification.

      send_data(
              iv_uri = lv_uri_cop
              iv_method = gc_delete
              iv_destination = gv_dest_oil
           ).

    ENDLOOP.

    LOOP AT is_json_local-d-to_businesspartnerbank-results ASSIGNING <fs_partnerbank>.

      " Patch
      IF  line_exists( iS_json_remoto-d-to_businesspartnerbank-results[  BusinessPartner      = <fs_partnerbank>-BusinessPartner
                                                                                                                   BankIdentification   = <fs_partnerbank>-BankIdentification  ] ).

        CHECK NOT line_exists( is_json_remoto-d-to_businesspartnerbank-results[ table_line = <fs_partnerbank> ] ).

        lv_uri_cop = gv_uri_to_businesspartnerbank.

        DATA(lv_json) = serialize_json( is_json = <fs_partnerbank> iv_compress = abap_true ).

        REPLACE gc_values-value1 IN lv_uri_cop WITH <fs_partnerbank>-BusinessPartner.
        REPLACE gc_values-value2 IN lv_uri_cop WITH <fs_partnerbank>-BankIdentification.

        send_data(
        iv_uri = lv_uri_cop
        iv_method = gc_patch
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).

        "Post
      ELSE.

        lv_json = serialize_json( EXPORTING is_json = <fs_partnerbank> iv_compress = abap_true ).

        send_data(
        iv_uri = gv_uri_businesspartnerbank
        iv_method = gc_post
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).

      ENDIF.

    ENDLOOP.

  ENDMETHOD.


  METHOD change_businesspartnerbank.
    RETURN.
  ENDMETHOD.


  METHOD to_businesspartnerrole.

    LOOP AT is_json_local-d-to_businesspartnerrole-results ASSIGNING FIELD-SYMBOL(<fs_partnerrole>).

      CHECK line_exists( gt_param[ chave2 = gc_role low = <fs_partnerrole>-BusinessPartnerRole ] ).

      " Patch
      IF  line_exists( iS_json_remoto-d-to_businesspartnerrole-results[  BusinessPartner          = <fs_partnerrole>-BusinessPartner
                                                                                                                 BusinessPartnerRole   = <fs_partnerrole>-BusinessPartnerRole  ] ).

        CHECK NOT line_exists( is_json_remoto-d-to_businesspartnerrole-results[ table_line = <fs_partnerrole> ] ).

        DATA(lv_json) = serialize_json( <fs_partnerrole> ).

        DATA(lv_businesspartnerrole_cop) = gv_uri_to_businesspartnerrole.

        REPLACE gc_values-value1 IN lv_businesspartnerrole_cop WITH <fs_partnerrole>-BusinessPartner.
        REPLACE gc_values-value2 IN lv_businesspartnerrole_cop WITH <fs_partnerrole>-BusinessPartnerRole.

        send_data(
        iv_uri = lv_businesspartnerrole_cop
        iv_method = gc_patch
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).

        "Post
      ELSE.

        lv_json = serialize_json( <fs_partnerrole> ).

        send_data(
        iv_uri = gv_uri_businessrole
        iv_method = gc_post
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).

      ENDIF.

    ENDLOOP.

  ENDMETHOD.


  METHOD change_partnerrole.
    RETURN.
  ENDMETHOD.


  METHOD to_businesspartnertax.

    " Delete

    LOOP AT is_json_remoto-d-to_businesspartnertax-results ASSIGNING FIELD-SYMBOL(<fs_partnertax>).

      CHECK NOT line_exists( is_json_local-d-to_businesspartnertax-results[ BusinessPartner  = <fs_partnertax>-BusinessPartner
                                                                                                                           BPTaxType          = <fs_partnertax>-BPTaxType   ]  ).

      DATA(lv_uri_cop) = gv_uri_to_businesspartnertax.

      REPLACE gc_values-value1 IN lv_uri_cop WITH <fs_partnertax>-BusinessPartner.
      REPLACE gc_values-value2 IN lv_uri_cop WITH <fs_partnertax>-BPTaxType.

      send_data(
              iv_uri = lv_uri_cop
              iv_method = gc_delete
              iv_destination = gv_dest_oil
           ).

    ENDLOOP.

    LOOP AT is_json_local-d-to_businesspartnertax-results ASSIGNING <fs_partnertax>.

      " Patch
      IF  line_exists( iS_json_remoto-d-to_businesspartnertax-results[  BusinessPartner  = <fs_partnertax>-BusinessPartner
                                                                                                                 BPTaxType          = <fs_partnertax>-BPTaxType  ] ).

        CHECK NOT line_exists( is_json_remoto-d-to_businesspartnertax-results[ table_line = <fs_partnertax> ] ).

        lv_uri_cop = gv_uri_to_businesspartnertax.

        DATA(lv_json) = serialize_json( <fs_partnertax> ).

        REPLACE gc_values-value1 IN lv_uri_cop WITH <fs_partnertax>-BusinessPartner.
        REPLACE gc_values-value2 IN lv_uri_cop WITH <fs_partnertax>-BPTaxType.

        send_data(
        iv_uri = lv_uri_cop
        iv_method = gc_patch
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).

        "Post
      ELSE.

        lv_json = serialize_json( <fs_partnertax> ).

        send_data(
        iv_uri =  gv_uri_businesstaxnumber
        iv_method = gc_post
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).

      ENDIF.

    ENDLOOP.

  ENDMETHOD.


  METHOD to_customer.

    " Patch

    DATA(ls_local) = CORRESPONDING ty_customer_fields( is_json_local-d-to_customer ).
    DATA(ls_remoto) = CORRESPONDING ty_customer_fields( is_json_remoto-d-to_customer ).

    CHECK ls_local IS NOT INITIAL.

    ls_remoto-creationdate = ls_local-creationdate.

    CHECK ls_local NE ls_remoto.

    DATA(lv_json) = serialize_json( EXPORTING is_json = ls_local ).

    replace_json( CHANGING cv_json = lv_json ).

    REPLACE gc_values-value1 IN gv_uri_to_customer WITH is_json_local-d-to_customer-customer.

    send_data(
    iv_uri = gv_uri_to_customer
    iv_method = gc_patch
    iv_destination = gv_dest_oil
    iv_json = lv_json
    ).

  ENDMETHOD.


  METHOD to_supplier.

    " Patch

    DATA(ls_local) = CORRESPONDING ty_supplier_f( is_json_local-d-to_supplier ).
    DATA(ls_remoto) = CORRESPONDING ty_supplier_f( is_json_remoto-d-to_supplier ).

    CHECK ls_local IS NOT INITIAL.

    ls_remoto-creationdate = ls_local-creationdate.

    CHECK ls_local NE ls_remoto.

    DATA(lv_json) = serialize_json( EXPORTING is_json = ls_local iv_compress = abap_true ).
    replace_json( CHANGING cv_json = lv_json ).

    REPLACE gc_values-value1 IN gv_uri_to_supplier WITH is_json_local-d-to_supplier-Supplier.

    send_data(
    iv_uri = gv_uri_to_supplier
    iv_method = gc_patch
    iv_destination = gv_dest_oil
    iv_json = lv_json
    ).

  ENDMETHOD.


  METHOD get_params.

    SORT gt_param BY high ASCENDING.

    gv_dest_retail = VALUE #( gt_param[ chave2 = 'DESTINATION' low = 'LOCAL' ]-high OPTIONAL ).
    gv_dest_oil = VALUE #( gt_param[ chave2 = 'DESTINATION' low = sy-mandt ]-high OPTIONAL ).
    gv_block = VALUE #( gt_param[ chave2 = 'BLOCK' ]-low OPTIONAL ).
    gv_uri = REDUCE #( INIT lv_val TYPE string FOR ls_uri IN  gt_param WHERE ( chave2 =  'DATA_COMPARE' )  NEXT lv_val = lv_val && ls_uri-low ).
    gv_uri_businesspartner =  VALUE #( gt_param[ low = 'BUSINESSPARTNER' ]-high OPTIONAL ).
    gv_uri_a_businesspartner =  VALUE #( gt_param[ low = 'A_BUSINESSPARTNER' ]-high OPTIONAL ).
    gv_time = VALUE #( gt_param[ chave2 = 'TIME' ]-low OPTIONAL ).
    gv_uri_to_bupaidentification =  VALUE #( gt_param[ low = 'TO_BUPAIDENTIFICATION' ]-high OPTIONAL ).
    gv_uri_bupaidentification =  VALUE #( gt_param[ low = 'BUPAIDENTIFICATION' ]-high OPTIONAL ).
    gv_uri_to_bupaindustry =  VALUE #( gt_param[ low = 'TO_BUPAINDUSTRY' ]-high OPTIONAL ).
    gv_uri_bupaindustry =  VALUE #( gt_param[ low = 'BUPAINDUSTRY' ]-high OPTIONAL ).
    gv_uri_to_bupaaddress =  VALUE #( gt_param[ low = 'TO_BUSINESSPARTNERADDRESS' ]-high OPTIONAL ).
    gv_uri_to_bupaaddress2 =  VALUE #( gt_param[ low = 'TO_BUPAADDRESS2' ]-high OPTIONAL ).
    gv_uri_to_businesspartnerbank =  VALUE #( gt_param[ low = 'TO_BUSINESSPARTNERBANK' ]-high OPTIONAL ).
    gv_uri_businesspartnerbank =  VALUE #( gt_param[ low = 'BUSINESSPARTNERBANK' ]-high OPTIONAL ).
    gv_uri_to_businesspartnerrole =  VALUE #( gt_param[ low = 'TO_BUSINESSPARTNERROLE' ]-high OPTIONAL ).
    gv_uri_businessrole =  VALUE #( gt_param[ low = 'BUSINESSROLE' ]-high OPTIONAL ).
    gv_uri_to_businesspartnertax =  VALUE #( gt_param[ low = 'TO_BUSINESSPARTNERTAX' ]-high OPTIONAL ).
    gv_uri_businesstaxnumber =  VALUE #( gt_param[ low = 'BUSINESSTAXNUMBER' ]-high OPTIONAL ).
    gv_uri_to_customer =  VALUE #( gt_param[ low = 'TO_CUSTOMER' ]-high OPTIONAL ).
    gv_uri_to_supplier =  VALUE #( gt_param[ low = 'TO_SUPPLIER' ]-high OPTIONAL ).
    gv_uri_businesspartneraddress =  VALUE #( gt_param[ low = 'BUSINESSPARTNERADDRESS' ]-high OPTIONAL ).
    gv_uri_to_addressusage =  VALUE #( gt_param[ low = 'TO_ADDRESSUSAGE' ]-high OPTIONAL ).
    gv_uri_bupaaddressusage =  VALUE #( gt_param[ low = 'BUPAADDRESSUSAGE' ]-high OPTIONAL ).
    gv_uri_to_emailaddress =  VALUE #( gt_param[ low = 'TO_EMAILADDRESS' ]-high OPTIONAL ).
    gv_uri_businessemailaddress =  VALUE #( gt_param[ low = 'BUSINESSEMAILADDRESS' ]-high OPTIONAL ).
    gv_uri_to_faxnumber =  VALUE #( gt_param[ low = 'TO_FAXNUMBER' ]-high OPTIONAL ).
    gv_uri_to_businessfaxnumber =  VALUE #( gt_param[ low = 'BUSINESSFAXNUMBER' ]-high OPTIONAL ).
    gv_uri_businessfaxnumber =  VALUE #( gt_param[ low = 'BUSINESSFAXNUMBER' ]-high OPTIONAL ).
    gv_uri_to_mobilephonenumber =  VALUE #( gt_param[ low = 'TO_MOBILEPHONENUMBER' ]-high OPTIONAL ).
    gv_uri_businessmobilephone =  VALUE #( gt_param[ low = 'BUSINESSMOBILEPHONE' ]-high OPTIONAL ).
    gv_uri_to_phonenumber =  VALUE #( gt_param[ low = 'TO_PHONENUMBER' ]-high OPTIONAL ).
    gv_uri_businessphonenumber =  VALUE #( gt_param[ low = 'BUSINESSPHONENUMBER' ]-high OPTIONAL ).
    gv_uri_to_urladdress =  VALUE #( gt_param[ low = 'TO_URLADDRESS' ]-high OPTIONAL ).
    gv_uri_businessurl =  VALUE #( gt_param[ low = 'BUSINESSURL' ]-high OPTIONAL ).
    gv_uri_to_relationship =  VALUE #( gt_param[ low = 'TO_RELATIONSHIP' ]-high OPTIONAL ).
    gv_uri_to_bptaxgroup =  VALUE #( gt_param[ low = 'TO_BPTAXGROUP' ]-high OPTIONAL ).
    gv_uri_role_get =  VALUE #( gt_param[ low = 'TO_BUSINESSPARTNERROLE_GET' ]-high OPTIONAL ).
    gv_destination_rfc = VALUE #( gt_param[ chave2 = 'DESTINATION_RFC' chave3 = ''  low = sy-mandt ]-high OPTIONAL ).
    gv_destination_select = VALUE #( gt_param[ chave2 = 'DESTINATION_SELECT' low = sy-mandt ]-high OPTIONAL ).

  ENDMETHOD.


  METHOD a_businesspartner.

    DATA(ls_remoto) = CORRESPONDING ty_partner( is_json_remoto-d  ).
    DATA(ls_local) = CORRESPONDING ty_partner( is_json_local-d  ).

    CHECK check_businesspartner( is_remoto = ls_remoto is_local = ls_local  ) IS NOT INITIAL.

    DATA(lv_json) = serialize_json(  CORRESPONDING ty_partner( is_json_local-d ) ).

    change_businesspartner( EXPORTING is_bp =  CORRESPONDING #( is_json_local-d ) CHANGING cv_json = lv_json ).

    REPLACE gc_values-value1 IN gv_uri_a_businesspartner  WITH is_json_local-d-businesspartner.

    send_data(
    iv_uri = gv_uri_a_businesspartner
    iv_method = gc_patch
    iv_destination = gv_dest_oil
    iv_json = lv_json
    ).

  ENDMETHOD.


  METHOD change_businesspartner.

    IF is_bp-BirthDate IS INITIAL.
      REPLACE  ALL OCCURRENCES OF '"BirthDate":""' IN  cv_json WITH '"BirthDate":null'.
    ENDIF.
    IF is_bp-OrganizationFoundationDate IS INITIAL.
      REPLACE  ALL OCCURRENCES OF '"OrganizationFoundationDate":""' IN  cv_json WITH '"OrganizationFoundationDate":null'.
    ENDIF.
    IF is_bp-OrganizationLiquidationDate IS INITIAL.
      REPLACE  ALL OCCURRENCES OF '"OrganizationLiquidationDate":""' IN  cv_json WITH '"OrganizationLiquidationDate":null'.
    ENDIF.
    IF is_bp-BusinessPartnerDeathDate IS INITIAL.
      REPLACE  ALL OCCURRENCES OF '"BusinessPartnerDeathDate":""' IN  cv_json WITH '"BusinessPartnerDeathDate":null'.
    ENDIF.
    IF is_bp-LastChangeDate IS INITIAL.
      REPLACE  ALL OCCURRENCES OF '"LastChangeDate":""' IN  cv_json WITH '"LastChangeDate":null'.
    ENDIF.

  ENDMETHOD.


  METHOD conv_field_value.

    IF iv_value IS INITIAL.

      FIND  iv_field  IN cv_json MATCH OFFSET DATA(lv_off)
                                                MATCH LENGTH DATA(lv_len).

      lv_off = lv_off + lv_len + 2.
      lv_len = 2.

      REPLACE SECTION OFFSET lv_off  LENGTH lv_len OF:  cv_json WITH iv_value_change.

      CLEAR:
      lv_off,
      lv_len.

    ENDIF.

  ENDMETHOD.


  METHOD insert_quotation.

    DATA: lv_value TYPE char50.

    IF iv_value IS NOT INITIAL.

      lv_value = iv_value.

      lv_value = |{ lv_value  ALPHA = OUT } |.

      DATA(lv_field1) = iv_field && lv_value.
      DATA(lv_field2) = iv_field && '"' && lv_value && '"'.

      REPLACE  iv_field && lv_value  IN cv_json WITH iv_field && '"' && lv_value && '"'.

    ENDIF.

  ENDMETHOD.


  METHOD to_relationship.

    " Delete
    LOOP AT is_json_remoto-d-to_bprelationship-results ASSIGNING FIELD-SYMBOL(<fs_relation>).

      DATA(ls_ranger_oil) = VALUE #( gt_param[ chave2 = gc_ranger Descricao = gc_values-oil ] OPTIONAL ).

      IF ls_ranger_oil IS NOT INITIAL.

        IF <fs_relation>-businesspartnercompany BETWEEN ls_ranger_oil-low AND ls_ranger_oil-high
        OR <fs_relation>-businesspartnerperson BETWEEN ls_ranger_oil-low AND ls_ranger_oil-high.
          CONTINUE.
        ENDIF.
      ENDIF.

      CHECK NOT line_exists( is_json_local-d-to_bprelationship-results[   BusinessPartnerCompany  =  <fs_relation>-BusinessPartnerCompany
                                                                                                                     BusinessPartnerPerson = <fs_relation>-BusinessPartnerPerson
                                                                                                                     ValidityEndDate = <fs_relation>-ValidityEndDate
                                                                                                                     businesspartner1 = <fs_relation>-businesspartner1
                                                                                                                     businesspartner2 = <fs_relation>-businesspartner2
                                                                                                                     validitystartdate = <fs_relation>-validitystartdate
                                                                                                                     isstandardrelationship = <fs_relation>-isstandardrelationship
                                                                                                                     relationshipcategory = <fs_relation>-relationshipcategory
                                                                                                                     bprelationshiptype = <fs_relation>-bprelationshiptype
                                                                                                                     buspartrelshpisroledefinition = <fs_relation>-buspartrelshpisroledefinition   ]  ).

      DATA(ls_relation) = <fs_relation>.

      REPLACE ALL OCCURRENCES OF '-' IN ls_relation-validityenddate WITH space.
      CONDENSE ls_relation-validityenddate NO-GAPS.

      REPLACE ALL OCCURRENCES OF '-' IN ls_relation-validitystartdate WITH space.
      CONDENSE ls_relation-validitystartdate NO-GAPS.

      DATA(lv_json) = serialize_json(  CORRESPONDING i_bprelationship( ls_relation ) ).

      send_data(
      iv_uri = gv_uri_to_relationship
      iv_method = gc_delete
      iv_destination = gv_dest_oil
      iv_json = lv_json
    ).

    ENDLOOP.

    DATA(lt_local) =  is_json_local-d-to_bprelationship-results .

    LOOP AT lt_local ASSIGNING <fs_relation>.

      CHECK NOT line_Exists(   is_json_remoto-d-to_bprelationship-results[
                                                                                          BusinessPartnerCompany  = <fs_relation>-BusinessPartnerCompany
                                                                                          BusinessPartnerPerson = <fs_relation>-BusinessPartnerPerson
                                                                                          validityenddate = <fs_relation>-validityenddate
                                                                                          businesspartner1 = <fs_relation>-businesspartner1
                                                                                          businesspartner2 = <fs_relation>-businesspartner2
                                                                                          validitystartdate = <fs_relation>-validitystartdate
                                                                                          isstandardrelationship = <fs_relation>-isstandardrelationship
                                                                                          relationshipcategory = <fs_relation>-relationshipcategory
                                                                                          bprelationshiptype = <fs_relation>-bprelationshiptype
                                                                                          buspartrelshpisroledefinition = <fs_relation>-buspartrelshpisroledefinition ] ) .

      DATA(ls_ranger_retail) = VALUE #( gt_param[ chave2 = gc_ranger Descricao = gc_values-retail ] OPTIONAL ).

      IF ls_ranger_retail IS NOT INITIAL.

        IF <fs_relation>-businesspartnercompany BETWEEN ls_ranger_retail-low AND ls_ranger_retail-high
        OR <fs_relation>-businesspartnerperson BETWEEN ls_ranger_retail-low AND ls_ranger_retail-high.
          CONTINUE.
        ENDIF.
      ENDIF.

      DATA(lv_bp) = CONV kunnr( <fs_relation>-BusinessPartnerPerson ).

      lv_bp = |{ lv_bp ALPHA = OUT }|.

      CHECK lv_bp(2) NE gc_values-v81.

      replace_relat( CHANGING cs_relat = <fs_relation> ).

      ls_relation = <fs_relation>.

      lv_json = serialize_json(  CORRESPONDING i_bprelationship( ls_relation ) ).

      send_data(
      iv_uri = gv_uri_to_relationship
      iv_method = gc_post
      iv_destination = gv_dest_oil
      iv_json = lv_json
    ).

    ENDLOOP.

  ENDMETHOD.


  METHOD to_bptaxgroup.

    " Delete
    LOOP AT is_json_remoto-d-to_bptaxgroup-results ASSIGNING FIELD-SYMBOL(<fs_tax>).

      CHECK NOT line_exists( is_json_local-d-to_bptaxgroup-results[ table_line = <fs_tax> ]  ).

      DATA(lv_json) = serialize_json(  CORRESPONDING ty_bptaxgroup( <fs_tax> ) ).

      send_data(
      iv_uri = gv_uri_to_bptaxgroup
      iv_method = gc_delete
      iv_destination = gv_dest_oil
      iv_json = lv_json
    ).

    ENDLOOP.

    LOOP AT is_json_local-d-to_bptaxgroup-results ASSIGNING <fs_tax>.

      CHECK NOT line_Exists( is_json_remoto-d-to_bptaxgroup-results[ table_line = <fs_tax> ] ).

      lv_json = serialize_json(  CORRESPONDING ty_bptaxgroup( <fs_tax> ) ).

      send_data(
      iv_uri = gv_uri_to_bptaxgroup
      iv_method = gc_post
      iv_destination = gv_dest_oil
      iv_json = lv_json
    ).

    ENDLOOP.

  ENDMETHOD.


  METHOD replace_relat.

    REPLACE ALL OCCURRENCES OF  '-' IN cs_relat-validityenddate WITH space.
    REPLACE ALL OCCURRENCES OF '-' IN cs_relat-validitystartdate WITH space.

    CONDENSE cs_relat-validityenddate NO-GAPS.
    CONDENSE cs_relat-validitystartdate NO-GAPS.

  ENDMETHOD.


  METHOD release_data.

    DATA:
      lt_return        TYPE STANDARD TABLE OF bapiret2,
      ls_addressdata   TYPE bapibus1006_address,
      ls_addressdata_x TYPE bapibus1006_address_x,
      lv_guid          TYPE char32.

    SELECT addrnumber, address_guid FROM but020
    WHERE partner EQ @iv_bp
    AND adext IS INITIAL
    INTO TABLE @DATA(lt_but020).

    CHECK lt_but020 IS NOT INITIAL.

    LOOP AT lt_but020 ASSIGNING FIELD-SYMBOL(<fs_but020>).

      ls_addressdata-extaddressnumber = |{ <fs_but020>-addrnumber ALPHA = OUT }|.
      ls_addressdata_x-extaddressnumber = abap_true.

      lv_guid = <fs_but020>-address_guid.

      CALL FUNCTION 'BAPI_BUPA_ADDRESS_CHANGE'
        EXPORTING
          businesspartner = iv_bp
          addressguid     = lv_guid
          addressdata     = ls_addressdata
          addressdata_x   = ls_addressdata_x
        TABLES
          return          = lt_return.

      IF NOT line_exists(  lt_return[ type = gc_values-e ] ).

        CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
          EXPORTING
            wait = abap_true.

      ENDIF.

    ENDLOOP.

  ENDMETHOD.


  METHOD replace_json.

    IF  iv_create IS NOT INITIAL.

      DATA(lv_bp) = |{ gv_bp ALPHA = OUT }| .

      DATA(lv_c) = |"Customer":"| && lv_bp && |"|.
      DATA(lv_s) = |"Supplier":"| && lv_bp && |"|.

      CONDENSE lv_c NO-GAPS.
      CONDENSE lv_s NO-GAPS.

      REPLACE ALL OCCURRENCES OF lv_c IN cv_json WITH '"Customer" : ""'.
      REPLACE ALL OCCURRENCES OF lv_s IN cv_json WITH '"Supplier" : ""'.

    ENDIF.

    IF cv_json CS '"Rgdate":""'.
      REPLACE  ALL OCCURRENCES OF '"Rgdate":""' IN  cv_json WITH '"Rgdate":null'.
    ENDIF.
    IF cv_json CS '"Rnedate":""'.
      REPLACE  ALL OCCURRENCES OF '"Rnedate":""' IN  cv_json WITH '"Rnedate":null'.
    ENDIF.

    IF cv_json CS '"ValidityEndDate":""'.
      REPLACE  ALL OCCURRENCES OF '"ValidityEndDate":""' IN  cv_json WITH '"ValidityEndDate":null'.
    ENDIF.
    IF cv_json CS '"ValidityStartDate":""'.
      REPLACE  ALL OCCURRENCES OF '"ValidityStartDate":""' IN  cv_json WITH '"ValidityStartDate":null'.
    ENDIF.
    IF cv_json CS '"BPIdentificationEntryDate":""'.
      REPLACE  ALL OCCURRENCES OF '"BPIdentificationEntryDate":""' IN  cv_json WITH '"BPIdentificationEntryDate":null'.
    ENDIF.
    IF cv_json CS '"CreationDate":""'.
      REPLACE  ALL OCCURRENCES OF '"CreationDate":""' IN  cv_json WITH '"CreationDate":null'.
    ENDIF.
    IF cv_json CS '"BirthDate":""'.
      REPLACE  ALL OCCURRENCES OF '"BirthDate":""' IN  cv_json WITH '"BirthDate":null'.
    ENDIF.
    IF cv_json CS '"OrganizationFoundationDate":""'.
      REPLACE  ALL OCCURRENCES OF '"OrganizationFoundationDate":""' IN  cv_json WITH '"OrganizationFoundationDate":null'.
    ENDIF.
    IF cv_json CS '"OrganizationLiquidationDate":""'.
      REPLACE  ALL OCCURRENCES OF '"OrganizationLiquidationDate":""' IN  cv_json WITH '"OrganizationLiquidationDate":null'.
    ENDIF.
    IF cv_json CS '"BusinessPartnerDeathDate":""'.
      REPLACE  ALL OCCURRENCES OF '"BusinessPartnerDeathDate":""' IN  cv_json WITH '"BusinessPartnerDeathDate":null'.
    ENDIF.
    IF cv_json CS '"LastChangeDate":""'.
      REPLACE  ALL OCCURRENCES OF '"LastChangeDate":""' IN  cv_json WITH '"LastChangeDate":null'.
    ENDIF.

    IF cv_json CS '"to_BPAddrDepdntIntlLocNumber":""'.
      REPLACE ALL OCCURRENCES OF '"to_BPAddrDepdntIntlLocNumber":""' IN cv_json WITH '"to_BPAddrDepdntIntlLocNumber":null'.
    ENDIF.

    IF cv_json CS '"IBANValidityStartDate":""'.
      REPLACE ALL OCCURRENCES OF '"IBANValidityStartDate":""' IN cv_json WITH '"IBANValidityStartDate":null'.
    ENDIF.

    IF cv_json CS '"InterestCalculationDate":""'.
      REPLACE ALL OCCURRENCES OF '"InterestCalculationDate":""' IN cv_json WITH '"InterestCalculationDate":null'.
    ENDIF.

    IF cv_json CS '"InterestCalculationDate":""'.
      REPLACE ALL OCCURRENCES OF '"InterestCalculationDate":""' IN cv_json WITH '"InterestCalculationDate":null'.
    ENDIF.

    IF cv_json CS '"SupplierCertificationDate":""'.
      REPLACE ALL OCCURRENCES OF '"SupplierCertificationDate":""' IN cv_json WITH '"SupplierCertificationDate":null'.
    ENDIF.

    IF cv_json CS '"SuplrQltyInProcmtCertfnValidTo":""'.
      REPLACE ALL OCCURRENCES OF '"SuplrQltyInProcmtCertfnValidTo":""' IN cv_json WITH '"SuplrQltyInProcmtCertfnValidTo":null'.
    ENDIF.

    REPLACE ALL OCCURRENCES OF '/Date(' IN cv_json WITH '\/Date('.
    REPLACE ALL OCCURRENCES OF ')/",' IN cv_json WITH ')\/",'.

  ENDMETHOD.


  METHOD change_structure.

    change_struc_address( CHANGING cs_json = cs_json ).
    change_struc_identific( CHANGING cs_json = cs_json ).
    change_struc_role( CHANGING cs_json = cs_json ).

  ENDMETHOD.


  METHOD call_commit.

    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
      DESTINATION gv_destination_rfc
      EXPORTING
        wait = abap_true.

  ENDMETHOD.


  METHOD send_log.

    IF it_return IS NOT INITIAL.

      IF iv_method = gc_delete.

        DATA(lv_string_writer) = cl_sxml_string_writer=>create( type = if_sxml=>co_xt_json ).
        CALL TRANSFORMATION id SOURCE return = it_return RESULT XML lv_string_writer.
        DATA(lv_xstring) = lv_string_writer->get_output( ).

      ELSE.

        DATA(lv_json) = serialize_json( is_json = it_return ).

      ENDIF.

    ENDIF.

    IF iv_method = gc_post AND iv_addresid IS NOT INITIAL.
      MESSAGE s002(zbp_log_api_bp) INTO DATA(lv_message) WITH iv_addresid.
    ENDIF.

    CALL FUNCTION 'ZFMBP_LOG_API_BP'
      STARTING NEW TASK 'ZBP_LOG_API_BP'
      EXPORTING
        iv_processo    = gv_uri_to_addressusage
        iv_metodo      = iv_method
        iv_json        = iv_json
        iv_json_ret    = COND #( WHEN iv_method NE gc_delete THEN lv_json ELSE lv_xstring )
        iv_destination = gv_dest_oil
        iv_code        = COND #( WHEN NOT line_exists( it_return[ type = gc_values-e ] ) THEN 200 ELSE 400 )
        iv_reason      = CONV string( COND #( WHEN iv_method = gc_delete THEN COND #( WHEN NOT line_exists( it_return[ type = gc_values-e ] ) THEN TEXT-042 ELSE TEXT-043 )
                                                                       WHEN iv_method = gc_post THEN COND #(  WHEN NOT line_exists( it_return[ type = gc_values-e ] ) THEN TEXT-045 )
                                                                       WHEN iv_method = gc_patch AND NOT line_exists( it_return[ type = gc_values-e ] ) THEN TEXT-046 ELSE TEXT-047  ) ).

  ENDMETHOD.


  METHOD select.

    DATA:
      lt_adext_remoto TYPE STANDARD TABLE OF bu_adext.

    SELECT addrnumber, address_guid FROM but020
       WHERE partner = @gv_bp
       INTO TABLE @gt_but020.

    IF gt_but020 IS NOT INITIAL.

      lt_adext_remoto = VALUE #( FOR ls_but020 IN  gt_but020 ( |{ ls_but020-addrnumber ALPHA = OUT }|  ) ).

      SELECT addrnumber, address_guid, adext FROM but020 CLIENT SPECIFIED
     WHERE  client = @gv_destination_select
     AND partner = @gv_bp
     INTO TABLE @gt_but020_remoto.

    ENDIF.

    SELECT * FROM but021_fs
    WHERE partner = @gv_bp
    INTO TABLE @gt_usage_local.

    SELECT * FROM but021_fs CLIENT SPECIFIED
    WHERE  client = @gv_destination_select
    AND  partner  = @gv_bp
    INTO TABLE @gt_usage_remoto.

  ENDMETHOD.


  METHOD deserialize_json_c.

    /ui2/cl_json=>deserialize(
            EXPORTING
                json        = iv_json
                pretty_name = /ui2/cl_json=>pretty_mode-camel_case
            CHANGING
                data      = rt_json ).

  ENDMETHOD.


  METHOD validate_bp.

    SELECT SINGLE cfopc FROM kna1
        WHERE kunnr =  @gv_bp
        AND ktokd = @gc_values-zcpj  AND
        cfopc EQ @space INTO @DATA(lv_cfop).

    IF sy-subrc EQ 0 AND lv_cfop IS INITIAL.
      MESSAGE e003(zbp_log_api_bp) INTO DATA(lv_message) WITH gv_bp.
      APPEND VALUE #( type = gc_values-e number = 003 id =  gc_values-zbp_log_api_bp message = lv_message message_v1 = gv_bp ) TO rt_result.
      RETURN.
    ENDIF.

  ENDMETHOD.


  METHOD start_address_equalization.


    DATA:
      ls_json_local  TYPE ty_data,
      ls_json_remoto TYPE ty_data.

    DATA(lv_json_local) = get_json(  EXPORTING iv_destination = gv_dest_retail iv_method = gc_get CHANGING cv_uri = gv_uri ).
    DATA(lv_json_remoto) = get_json(  EXPORTING iv_destination = gv_dest_oil  iv_method = gc_get CHANGING cv_uri = gv_uri ).

    CHECK ( lv_json_local IS NOT INITIAL AND lv_json_remoto IS NOT INITIAL ).

    deserialize_json( EXPORTING iv_json = lv_json_local IMPORTING es_structure = ls_json_local ).
    deserialize_json( EXPORTING iv_json = lv_json_remoto IMPORTING es_structure = ls_json_remoto ).

    IF ( ls_json_local IS NOT INITIAL AND ls_json_remoto IS NOT INITIAL ).

      IF line_exists( ls_json_local-d-to_businesspartnerrole-results[ businesspartnerrole = 'FLCU00' ] )
      OR line_exists( ls_json_local-d-to_businesspartnerrole-results[ businesspartnerrole = 'FLCU01' ] ).

        to_Customer(
           EXPORTING
            iv_json_local = lv_json_local
            is_json_local = ls_json_local
            iv_json_remoto = lv_json_remoto
            is_json_remoto = ls_json_remoto ).

      ENDIF.

      validate_changes_address(
     EXPORTING
      iv_json_local = lv_json_local
      is_json_local = ls_json_local
      iv_json_remoto = lv_json_remoto
      is_json_remoto = ls_json_remoto ).

    ENDIF.

  ENDMETHOD.


  METHOD validate_changes_address.

    DATA(lt_local) = is_json_local-d-to_businesspartneraddress-results.

    LOOP AT lt_local ASSIGNING FIELD-SYMBOL(<fs_businesspartneraddress>).

      " Patch

      DATA(ls_remoto) = VALUE #( is_json_remoto-d-to_businesspartneraddress-results[
                                                                                                                       housenumber = <fs_businesspartneraddress>-housenumber
                                                                                                                       HouseNumberSupplementText = <fs_businesspartneraddress>-HouseNumberSupplementText
                                                                                                                       CityName = <fs_businesspartneraddress>-CityName
                                                                                                                       streetname  = <fs_businesspartneraddress>-streetname
                                                                                                                       postalcode = <fs_businesspartneraddress>-postalcode ] OPTIONAL ).

      IF ls_remoto IS NOT INITIAL.

        ls_remoto-addressidbyexternalsystem = <fs_businesspartneraddress>-addressid.

        DATA(lv_json) = serialize_json( CORRESPONDING ty_partneraddress( ls_remoto ) ).

        DATA(lv_uri) = gv_uri_to_bupaaddress.

        REPLACE gc_values-value1 IN lv_uri  WITH <fs_businesspartneraddress>-businesspartner.
        REPLACE gc_values-value2 IN lv_uri  WITH ls_remoto-addressid.

        send_data(
        iv_uri = lv_uri
        iv_method = gc_patch
        iv_destination = gv_dest_oil
        iv_json = lv_json
     ).

      ELSE.

        MESSAGE e004(zbp_log_api_bp) INTO DATA(lv_message)  WITH | { <fs_businesspartneraddress>-addressid } { <fs_businesspartneraddress>-housenumber } |
                                                                                                                 | { <fs_businesspartneraddress>-HouseNumberSupplementText } |
                                                                                                                 | { <fs_businesspartneraddress>-CityName } |
                                                                                                                 | { <fs_businesspartneraddress>-streetname } { <fs_businesspartneraddress>-postalcode } |.

        CALL FUNCTION 'ZFMBP_LOG_API_BP'
          STARTING NEW TASK 'ZBP_LOG_API_BP'
          EXPORTING
            iv_processo    = gv_uri_a_businesspartner
            iv_metodo      = gc_get
            iv_json_ret    = serialize_json( is_json = lv_message )
            iv_destination = gv_dest_oil.

        gt_message = VALUE #( ( type = gc_values-e message = lv_message message_v1 = gv_bp ) ).

      ENDIF.

    ENDLOOP.

  ENDMETHOD.


  METHOD validate_data.

    DATA: lt_control_int TYPE ty_control_int .

    CLEAR: ct_bp[].

    TRY .
        DATA(lv_lote) = cl_system_uuid=>create_uuid_x16_static( ).
      CATCH cx_uuid_error.
    ENDTRY.

    DATA(lv_time_processing) = CONV char14( sy-datum && sy-uzeit ).

    LOOP AT ct_control_int ASSIGNING FIELD-SYMBOL(<fs_control_int>).

      DATA(lv_datahora_atua) = <fs_control_int>-datahora_atua.

      DATA(lv_seconds) = CONV int8( lv_time_processing ) - CONV int8( lv_datahora_atua ).

      IF lv_seconds GT gv_time.

        <fs_control_int>-lote = lv_lote.

        APPEND <fs_control_int> TO lt_control_int.

        APPEND VALUE #( sign = gc_values-i option = gc_values-eq low = <fs_control_int>-bp ) TO ct_bp.

*      ELSE.
*        DELETE ct_bp WHERE table_line EQ <fs_control_int>-bp.
      ENDIF.

      CLEAR: lv_seconds.

    ENDLOOP.

    IF lt_control_int IS NOT INITIAL.

      MODIFY ztbp_control_int FROM TABLE lt_control_int.
      IF sy-subrc EQ 0.
        COMMIT WORK.
      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD check_job.

    DATA: lt_wplist TYPE STANDARD TABLE OF wpinfo.

    SELECT COUNT(*) FROM tbtco
    WHERE jobname = @gc_values-zbpr_replica_dados
    AND status = @gc_values-r
    INTO @DATA(lv_numbers).

    IF lv_numbers GT 1.

      rv_job = abap_true.

    ENDIF.

  ENDMETHOD.


  METHOD check_businesspartner.
    IF   is_remoto-businesspartner NE is_local-businesspartner
       OR is_remoto-customer  NE is_local-customer
       OR  is_remoto-supplier     NE is_local-supplier
       OR  is_remoto-academictitle     NE is_local-academictitle
       OR  is_remoto-authorizationgroup     NE is_local-authorizationgroup
       OR  is_remoto-businesspartnercategory     NE is_local-businesspartnercategory
       OR   is_remoto-businesspartnerfullname     NE is_local-businesspartnerfullname
       OR is_remoto-businesspartnergrouping     NE is_local-businesspartnergrouping
       OR  is_remoto-businesspartnername     NE is_local-businesspartnername
       OR  is_remoto-correspondencelanguage     NE is_local-correspondencelanguage
       OR  is_remoto-firstname     NE is_local-firstname
       OR   is_remoto-formofaddress     NE is_local-formofaddress
       OR   is_remoto-industry     NE is_local-industry
       OR  is_remoto-internationallocationnumber1     NE is_local-internationallocationnumber1
       OR  is_remoto-internationallocationnumber2     NE is_local-internationallocationnumber2
       OR  is_remoto-isfemale    NE is_local-isfemale
       OR   is_remoto-ismale    NE is_local-ismale
       OR   is_remoto-isnaturalperson     NE is_local-isnaturalperson
       OR  is_remoto-issexunknown    NE is_local-issexunknown
       OR   is_remoto-gendercodename     NE is_local-gendercodename
       OR   is_remoto-language     NE is_local-language
       OR   is_remoto-lastname     NE is_local-lastname
       OR   is_remoto-legalform     NE is_local-legalform
       OR  is_remoto-organizationbpname1     NE is_local-organizationbpname1
       OR is_remoto-organizationbpname2    NE is_local-organizationbpname2
       OR   is_remoto-organizationbpname3     NE is_local-organizationbpname3
       OR is_remoto-organizationbpname4     NE is_local-organizationbpname4
       OR is_remoto-organizationfoundationdate     NE is_local-organizationfoundationdate
       OR is_remoto-organizationliquidationdate     NE is_local-organizationliquidationdate
       OR is_remoto-searchterm1     NE is_local-searchterm1
       OR is_remoto-searchterm2     NE is_local-searchterm2
       OR  is_remoto-additionallastname     NE is_local-additionallastname
       OR  is_remoto-birthdate     NE is_local-birthdate
       OR  is_remoto-businesspartnerbirthdatestatus     NE is_local-businesspartnerbirthdatestatus
       OR  is_remoto-businesspartnerbirthplacename     NE is_local-businesspartnerbirthplacename
       OR  is_remoto-businesspartnerdeathdate     NE is_local-businesspartnerdeathdate
       OR  is_remoto-businesspartnerisblocked    NE is_local-businesspartnerisblocked
       OR  is_remoto-businesspartnertype     NE is_local-businesspartnertype
       OR is_remoto-groupbusinesspartnername1     NE is_local-groupbusinesspartnername1
       OR  is_remoto-groupbusinesspartnername2     NE is_local-groupbusinesspartnername2
       OR is_remoto-internationallocationnumber3     NE is_local-internationallocationnumber3
       OR  is_remoto-middlename     NE is_local-middlename
       OR is_remoto-namecountry     NE is_local-namecountry
       OR is_remoto-nameformat     NE is_local-nameformat
       OR  is_remoto-personfullname     NE is_local-personfullname
       OR is_remoto-ismarkedforarchiving    NE is_local-ismarkedforarchiving
       OR is_remoto-businesspartneridbyextsystem     NE is_local-businesspartneridbyextsystem
       OR   is_remoto-businesspartnerprintformat     NE is_local-businesspartnerprintformat
       OR   is_remoto-businesspartneroccupation     NE is_local-businesspartneroccupation
       OR  is_remoto-buspartmaritalstatus     NE is_local-buspartmaritalstatus
       OR is_remoto-buspartnationality   NE is_local-buspartnationality
       OR  is_remoto-businesspartnerbirthname     NE is_local-businesspartnerbirthname
       OR is_remoto-businesspartnersupplementname     NE is_local-businesspartnersupplementname
       OR is_remoto-naturalpersonemployername     NE is_local-naturalpersonemployername
       OR is_remoto-lastnameprefix     NE is_local-lastnameprefix
       OR  is_remoto-lastnamesecondprefix     NE is_local-lastnamesecondprefix
       OR  is_remoto-initials     NE is_local-initials
       OR  is_remoto-tradingpartner     NE is_local-tradingpartner .

      rv_dif = abap_true.

    ENDIF.
  ENDMETHOD.


  METHOD start.

    FREE: et_return.

    me->validate( EXPORTING it_bp     = it_bp
                            iv_action = iv_action
                  IMPORTING et_bp     = DATA(lt_bp)
                            et_return = et_return ).

    IF et_return IS NOT INITIAL.
      RETURN.
    ENDIF.

    SELECT BusinessPartner  FROM A_BusinessPartner AS a
      INNER JOIN zi_ca_param_val AS b
      ON a~BusinessPartnerGrouping = b~Low
      WHERE BusinessPartner IN @lt_bp
           AND b~Modulo = @gc_values-bp
           AND b~Chave1 = @gc_values-cross_client
           AND b~Chave2 = @gc_values-businesspartnergrouping
    INTO  TABLE @DATA(lt_bps).

    IF lt_bps IS NOT INITIAL.

      SELECT chave2, chave3,low, high, Descricao FROM zi_ca_param_val
      WHERE Modulo EQ @gc_values-bp
      AND Chave1 EQ @gc_values-cross_client
      INTO TABLE @DATA(lt_param).

      CHECK line_exists( lt_param[ chave2 = gc_values-destination low = sy-mandt ] )
          AND line_exists( lt_param[ chave2 = gc_values-destination low = gc_values-local ] ) .

*      DATA(go_instance) = NEW zclbp_replica_dados( ).

      IF iv_action NE gc_values-a
      AND sy-batch EQ abap_true.

        IF sy-batch EQ abap_true.

          IF  me->check_job(  ) IS NOT INITIAL.
            WRITE: / TEXT-r06.

            " Já existe um job em execução
            et_return = VALUE #( BASE et_return ( type = if_xo_const_message=>info id = gc_message-id number = 7 ) ).
            EXIT.
          ENDIF.
        ENDIF.

        IF  gt_control_int IS NOT INITIAL.

*          go_instance->validate_data(
          me->validate_data(
            CHANGING
              ct_control_int =  gt_control_int
              ct_bp = lt_bp[] ).

        ELSE.
          WRITE: / TEXT-r07.

          " BP(s) não identificados na tabela 'ztbp_control_int'.
          et_return = VALUE #( BASE et_return ( type = if_xo_const_message=>info id = gc_message-id number = 10 ) ).
          EXIT.
        ENDIF.

      ENDIF.

      IF lt_bps IS NOT INITIAL.

        IF iv_action NE gc_values-a
        AND sy-batch EQ abap_true.

          sort(
          CHANGING
             ct_bps = lt_bps ).

        ENDIF.

        LOOP AT lt_bps ASSIGNING FIELD-SYMBOL(<fs_bp>).

          IF iv_action NE gc_values-a
          AND sy-batch EQ abap_true.
            gt_control_int[ bp = <fs_bp>-BusinessPartner ]-datahora_inicio = sy-datum && sy-uzeit.
          ENDIF.

          DATA(lt_return) = NEW zclbp_replica_dados( iv_bp = <fs_bp>-BusinessPartner
                    iv_action = COND #( WHEN iv_action NE gc_values-a AND iv_action NE gc_values-m THEN COND #( WHEN line_exists( gt_bps_oil[ table_line = <fs_bp>-BusinessPartner ] ) THEN gc_values-u ELSE gc_values-i ) ELSE iv_action )
                    it_param = lt_param )->execute(  ).

          IF lt_return IS NOT INITIAL.
            APPEND LINES OF lt_return TO gt_return.
            CLEAR: lt_return[].
          ELSE.
            APPEND  VALUE #(  type = gc_values-s message = COND #( WHEN iv_action NE gc_values-a AND iv_action NE gc_values-m THEN CONV string( TEXT-r02 ) ELSE TEXT-r04 )  message_v1 = <fs_bp>-BusinessPartner ) TO gt_return.
          ENDIF.

          IF iv_action NE gc_values-a
          AND sy-batch EQ abap_true.

            gt_control_int[ bp = <fs_bp>-BusinessPartner ]-datahora_fim = sy-datum && sy-uzeit.

            DATA(ls_bp) = VALUE #( gt_control_int[ bp = <fs_bp>-BusinessPartner ] OPTIONAL ).

            CHECK ls_bp IS NOT INITIAL.

            MODIFY ztbp_control_int FROM ls_bp.     "#EC CI_IMUD_NESTED

            IF sy-subrc EQ 0.
              COMMIT WORK.
            ENDIF.

            CLEAR: ls_bp.

          ENDIF.

        ENDLOOP.

        IF iv_action NE gc_values-a
        AND sy-batch EQ abap_true.

          DATA(lv_times) = sy-datum && sy-uzeit.

          SELECT bp, datahora_atua FROM ztbp_control_int
              WHERE bp IN @lt_bp
                   AND datahora_inicio IS INITIAL
                   INTO TABLE @DATA(lt_control_int). "Get data when finishing the program, because need to check if there are changes in BP

          LOOP AT gt_control_int ASSIGNING FIELD-SYMBOL(<fs_control>).

            DATA(lv_datahora_atual) = VALUE #( lt_control_int[ bp = <fs_control>-bp ]-datahora_atua OPTIONAL ).

            IF lv_datahora_atual IS INITIAL.
              CONTINUE.
            ENDIF.

            IF lv_datahora_atual GT <fs_control>-datahora_inicio.
              CLEAR:
              <fs_control>-datahora_inicio,
              <fs_control>-datahora_fim,
              <fs_control>-lote.
            ELSE.
              <fs_control>-datahora_atua = lv_datahora_atual.
            ENDIF.

            <fs_control>-usuario = sy-uname.

            CLEAR: lv_datahora_atual.

          ENDLOOP.

          MODIFY ztbp_control_int FROM TABLE gt_control_int.

          IF sy-subrc EQ 0.
            COMMIT WORK.
          ENDIF.

        ENDIF.

        LOOP AT gt_return ASSIGNING FIELD-SYMBOL(<fs_return>).
          WRITE: / |{ TEXT-r05 } { <fs_return>-message_v1 } {  CONV char255( <fs_return>-message ) }|.

          " BP &1 &2
          et_return = VALUE #( BASE et_return ( type = if_xo_const_message=>success id = gc_message-id number = 9
                                                message_v1 = <fs_return>-message_v1
                                                message_v2 = <fs_return>-message+0(50)
                                                message_v3 = <fs_return>-message+50(50)
                                                message_v4 = <fs_return>-message+100(50) ) ).

        ENDLOOP.

      ELSE.
        WRITE: / TEXT-r03.

        " BP(s) inválidos.
        et_return = VALUE #( BASE et_return ( type = if_xo_const_message=>error id = gc_message-id number = 8 ) ).

      ENDIF.

    ELSE.
      WRITE: / TEXT-r03.

      " BP(s) inválidos.
      et_return = VALUE #( BASE et_return ( type = if_xo_const_message=>error id = gc_message-id number = 8 ) ).

    ENDIF.

  ENDMETHOD.


  METHOD validate.

    FREE: et_bp, et_return.

    et_bp = it_bp.

    IF sy-batch EQ abap_false AND et_bp[] IS INITIAL.

      " Obrigatório inserir BP
      et_return = VALUE #( BASE et_return ( type = if_xo_const_message=>error id = gc_message-id number = 5 ) ).
      RETURN.

    ELSE.

      IF sy-batch EQ abap_true.

        SELECT * FROM ztbp_control_int
          WHERE bp IN @et_bp
              AND datahora_inicio IS INITIAL
              INTO TABLE @gt_control_int. " Get data when starting the program

        IF et_bp[] IS INITIAL AND gt_control_int IS NOT INITIAL.
          et_bp[] = VALUE ty_bp( FOR ls_control IN gt_control_int ( sign = gc_values-i option = gc_values-eq low = ls_control-bp ) ).
        ENDIF.

      ENDIF.

      SELECT SINGLE high FROM zi_ca_param_val
      WHERE Modulo = @gc_values-bp
           AND Chave1 = @gc_values-cross_client
           AND Chave2 = @gc_values-destination_select
           AND low = @sy-mandt
      INTO  @gv_destination_oil.

      IF gv_destination_oil IS NOT INITIAL.

        SELECT partner  FROM but000 CLIENT SPECIFIED
             WHERE client EQ @gv_destination_oil
             AND partner IN @et_bp[]
             INTO TABLE @gt_bps_oil.

      ENDIF.

    ENDIF.

  ENDMETHOD.


  METHOD replica_bupa_role_tm.

    CONSTANTS: BEGIN OF gc_param_destination,
                 modulo TYPE ztca_param_mod-modulo VALUE 'BP'                ##NO_TEXT,
                 chave1 TYPE ztca_param_par-chave1 VALUE 'CROSS_CLIENT'      ##NO_TEXT,
                 chave2 TYPE ztca_param_par-chave2 VALUE 'DESTINATION_RFC'   ##NO_TEXT,
                 chave3 TYPE ztca_param_par-chave3 VALUE 'RETAIL_TO_OIL'     ##NO_TEXT,
               END OF gc_param_destination,

               BEGIN OF gc_param_moto_agrupamento,
                 modulo TYPE ztca_param_mod-modulo VALUE 'TM'                ##NO_TEXT,
                 chave1 TYPE ztca_param_par-chave1 VALUE 'MOTORISTAS'        ##NO_TEXT,
                 chave2 TYPE ztca_param_par-chave2 VALUE 'AGRUPAMENTO'       ##NO_TEXT,
               END OF gc_param_moto_agrupamento.

    DATA:
      lr_destination TYPE RANGE OF string,
      ls_prr         TYPE /scmb/prr.

    DATA(lo_param) = zclca_tabela_parametros=>get_instance( ).

* ---------------------------------------------------------------------------
* Recupera lista de destinos RFC de RETAIL para OIL
* ---------------------------------------------------------------------------
    TRY.
        lo_param->m_get_range( EXPORTING iv_modulo = gc_param_destination-modulo
                                         iv_chave1 = gc_param_destination-chave1
                                         iv_chave2 = gc_param_destination-chave2
                                         iv_chave3 = gc_param_destination-chave3
                                IMPORTING et_range = lr_destination ).

      CATCH zcxca_tabela_parametros INTO DATA(lo_param_cx).
        FREE: lr_destination.
    ENDTRY.

    TRY.
        DATA(lv_oil_rfc_destination) = lr_destination[ low = sy-mandt ]-high.

      CATCH cx_root.

        " Destino RFC para OIL não cadastrado na tabela de parâmetros.
        et_return = VALUE #( BASE et_return ( type       = if_xo_const_message=>info
                                              id         = zcltm_cadastrar_motorista=>gc_message-id
                                              number     = zcltm_cadastrar_motorista=>gc_message-no_008 ) ).
    ENDTRY.

* ---------------------------------------------------------------------------
* Recupera Agrupamento de parceiros de negócios
* ---------------------------------------------------------------------------
    SELECT SINGLE bu_group
        FROM but000
        INTO @DATA(lv_partner_group)
        WHERE partner = @iv_bp.

    IF sy-subrc NE 0.
      FREE lv_partner_group.
    ENDIF.

    IF et_return IS NOT INITIAL.
      RETURN.
    ENDIF.

* ---------------------------------------------------------------------------
* Verifica se será criado a função parceiro de TM (TM0001)
* ---------------------------------------------------------------------------
    SELECT COUNT(*)
        FROM but100
        WHERE partner = @iv_bp
          AND rltyp   = 'TM0001'.

    IF sy-subrc EQ 0.
      DATA(lv_create_tm) = abap_true.
    ELSE.
      lv_create_tm = abap_false.
    ENDIF.

* ---------------------------------------------------------------------------
* Recupera o ID do parceiro
* ---------------------------------------------------------------------------
    IF lv_create_tm EQ abap_true.

      SELECT SINGLE BusinessPartnerUUID
        FROM I_BusinessPartner
        INTO @DATA(lv_uuid_x16)
        WHERE BusinessPartner = @iv_bp.

      IF sy-subrc NE 0.
        CLEAR lv_uuid_x16.
      ENDIF.

    ENDIF.

* ---------------------------------------------------------------------------
* Recupera a data de validade (início e fim) do Motorista
* ---------------------------------------------------------------------------
    IF lv_create_tm EQ abap_true.

      SELECT SINGLE prr_guid, prr_id, valid_from, valid_to
          FROM /scmb/prr
          INTO CORRESPONDING FIELDS OF @ls_prr
          WHERE prr_guid = @lv_uuid_x16.

      IF sy-subrc NE 0.
        FREE ls_prr.
      ENDIF.
    ENDIF.

    DATA(ls_motora) = VALUE zi_tm_motoristas( bp = iv_bp ).

    CALL FUNCTION 'ZFMTM_CAD_MOTORISTAS_RETAIL'
      DESTINATION lv_oil_rfc_destination
      EXPORTING
        iv_processo      = 3
        iv_partner_group = lv_partner_group
        iv_create_tm     = lv_create_tm
        is_prr           = ls_prr ##ENH_OK
      IMPORTING
        et_return        = et_return
      CHANGING
        cs_motora        = ls_motora.

    CALL FUNCTION 'ZFMTM_CAD_MOTORISTAS_RETAIL'
      DESTINATION lv_oil_rfc_destination
      EXPORTING
        iv_processo = 7
      IMPORTING
        et_return   = et_return
      CHANGING
        cs_motora   = ls_motora.

  ENDMETHOD.

  METHOD change_struc_address.

    LOOP AT cs_json-d-to_businesspartneraddress-results  ASSIGNING FIELD-SYMBOL(<fs_json>).
      <fs_json>-addressidbyexternalsystem  = <fs_json>-addressid.
    ENDLOOP.

  ENDMETHOD.


  METHOD change_struc_identific.

    IF cs_json-d-to_bupaidentification-results IS NOT INITIAL.

      DATA(lt_identification) = cs_json-d-to_bupaidentification-results.

      REFRESH: cs_json-d-to_bupaidentification-results.

      LOOP AT lt_identification ASSIGNING FIELD-SYMBOL(<fs_identification>).

        IF NOT line_exists( gt_param[ chave2 = gc_identification low = <fs_identification>-bpidentificationtype ] ).
          APPEND <fs_identification> TO cs_json-d-to_bupaidentification-results.
        ENDIF.

      ENDLOOP.

    ENDIF.

  ENDMETHOD.


  METHOD change_struc_role.

    IF cs_json-d-to_businesspartnerrole-results IS NOT INITIAL.

      DATA(lt_role) = cs_json-d-to_businesspartnerrole-results.

      REFRESH: cs_json-d-to_businesspartnerrole-results.

      LOOP AT lt_role ASSIGNING FIELD-SYMBOL(<fs_role>).

        IF line_exists( gt_param[ chave2 = gc_role low = <fs_role>-BusinessPartnerRole ] ).
          APPEND <fs_role> TO cs_json-d-to_businesspartnerrole-results.
        ENDIF.

      ENDLOOP.

    ENDIF.

  ENDMETHOD.


  METHOD connection_close.

    DATA: lt_return TYPE bapiret2_tab.

    CALL FUNCTION 'RFC_CONNECTION_CLOSE'
      EXPORTING
        destination          = gv_destination_rfc
      EXCEPTIONS
        destination_not_open = 1
        OTHERS               = 2.
    IF sy-subrc <> 0.
      APPEND VALUE #( type = gc_values-e message = CONV bapi_msg( TEXT-049 )  ) TO lt_return.
    ENDIF.

  ENDMETHOD.


  METHOD check_qtd_usages.

    DATA: lt_usages TYPE STANDARD TABLE OF ty_usage_change.

    DATA(lt_usages_table) = COND #( WHEN iv_action IS NOT INITIAL THEN gt_usage_local ELSE gt_usage_remoto ).

    lt_usages = VALUE #( FOR ls_usage IN lt_usages_table WHERE ( addrnumber = iv_addresid )
                                                            ( addressid = ls_usage-addrnumber
                                                            addressusage = ls_usage-adr_kind
                                                            businesspartner = ls_usage-partner
                                                            standardusage = ls_usage-xdfadu
                                                            validityenddate =  CONV string( ls_usage-valid_to(8) )
                                                            validitystartdate = ls_usage-valid_from ) ).

    IF lines( lt_usages ) NE lines( ct_usages ).

      LOOP AT lt_usages ASSIGNING FIELD-SYMBOL(<fs_usage>).

        CHECK NOT line_exists( ct_usages[ addresstype = <fs_usage>-addressusage usagevalidto = <fs_usage>-validityenddate ]  ).

        APPEND VALUE bapibus1006_addressusage( addresstype = <fs_usage>-addressusage
                                                                                  standardaddressusage = <fs_usage>-standardusage
                                                                                  usagevalidfrom =  CONV string( <fs_usage>-ValidityStartDate(8) )
                                                                                  usagevalidto =  CONV string( <fs_usage>-validityenddate(8) ) ) TO ct_usages.

      ENDLOOP.



    ENDIF.

  ENDMETHOD.


  METHOD start_driver_equalization.

    DATA:
      ls_json_local  TYPE ty_data,
      ls_json_remoto TYPE ty_data.

    DATA(lv_json_local) = get_json(  EXPORTING iv_destination = gv_dest_retail iv_method = gc_get CHANGING cv_uri = gv_uri ).
    DATA(lv_json_remoto) = get_json(  EXPORTING iv_destination = gv_dest_oil  iv_method = gc_get CHANGING cv_uri = gv_uri ).

    CHECK ( lv_json_local IS NOT INITIAL AND lv_json_remoto IS NOT INITIAL ).

    deserialize_json( EXPORTING iv_json = lv_json_local IMPORTING es_structure = ls_json_local ).
    deserialize_json( EXPORTING iv_json = lv_json_remoto IMPORTING es_structure = ls_json_remoto ).

    IF ( ls_json_local IS NOT INITIAL AND ls_json_remoto IS NOT INITIAL ).

      validate_changes_driver(
     EXPORTING
          iv_json_local = lv_json_local
          is_json_local = ls_json_local
          iv_json_remoto = lv_json_remoto
          is_json_remoto = ls_json_remoto ).

    ENDIF.

  ENDMETHOD.


  METHOD validate_changes_driver.

    DATA:
      lv_time TYPE timestamp.

    DATA(lv_role_local) = VALUE #( is_json_local-d-to_businesspartnerrole-results[ businesspartnerrole = 'TM0001' ]-businesspartnerrole OPTIONAL ).
    DATA(lv_role_remoto) = VALUE #( is_json_remoto-d-to_businesspartnerrole-results[ businesspartnerrole = 'TM0001' ]-businesspartnerrole OPTIONAL ).

    DATA(lv_bp) = |{ is_json_local-d-businesspartner ALPHA = IN }|.

    IF lv_role_local IS NOT INITIAL AND lv_role_remoto IS NOT INITIAL.

      lv_time = sy-datum && sy-uzeit.

      prr_upd_local( EXPORTING iv_bp = CONV #( lv_bp ) iv_time = lv_time ).
      prr_upd_remoto( EXPORTING iv_bp = CONV #( lv_bp ) iv_time = lv_time ).

    ELSE.
      MESSAGE e013(zbp_log_api_bp) INTO DATA(lv_message).
      APPEND VALUE #( type = gc_values-e number = 013 id = gc_values-zbp_log_api_bp message = lv_message message_v1 = lv_bp ) TO gt_message.
    ENDIF.

  ENDMETHOD.


  METHOD prr_upd_local.

    SELECT SINGLE BusinessPartnerUUID
      FROM I_BusinessPartner
      INTO @DATA(lv_uuid_x16)
      WHERE BusinessPartner = @iv_bp.

    IF lv_uuid_x16 IS NOT INITIAL.

      DATA(lt_prr) = VALUE /scmb/tt_prr_upd( ( prr_guid   = lv_uuid_x16
                                               prr_id     = iv_bp
                                               calendar   = 'BR'
                                               valid_from = iv_time
                                               valid_to   =  '20991231235959'
                                               mode       = gc_values-m ) ).

      CALL FUNCTION '/SCMB/PRR_UPD'
        EXPORTING
          iv_tcode = sy-tcode
          it_prr   = lt_prr.

      CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
        EXPORTING
          wait = abap_true.

      CALL FUNCTION 'ZFMBP_LOG_API_BP'
        STARTING NEW TASK '/SCMB/PRR_UPD'
        EXPORTING
          iv_processo    = gv_uri_to_businesspartnerrole
          iv_metodo      = gc_patch
          iv_json        = serialize_json( is_json = lt_prr )
          iv_code        = 200
          iv_reason      = CONV string( TEXT-038 )
          iv_destination = gc_values-retail.

    ENDIF.

  ENDMETHOD.

  METHOD prr_upd_remoto.

    DATA:
      lt_return TYPE bapiret2_t,
      ls_prr    TYPE /scmb/prr.

    SELECT SINGLE partner_guid
      FROM but000 CLIENT SPECIFIED
      INTO @DATA(lv_uuid_x16)
      WHERE client = @gv_destination_select
      AND partner = @iv_bp.

    IF lv_uuid_x16 IS NOT INITIAL.

      DATA(ls_motora) = VALUE zi_tm_motoristas( bp = iv_bp ).

      ls_prr = VALUE #(  prr_guid   = lv_uuid_x16
                                    prr_id     = iv_bp
                                    calendar   = 'BR'
                                    valid_from = iv_time
                                     valid_to   = '20991231235959' ).

      CALL FUNCTION 'ZFMTM_CAD_MOTORISTAS_RETAIL'
        DESTINATION gv_destination_rfc
        EXPORTING
          iv_processo  = 3
          iv_create_tm = abap_true
          is_prr       = ls_prr ##ENH_OK
        IMPORTING
          et_return    = lt_return
        CHANGING
          cs_motora    = ls_motora.

      connection_close(  ).

      CALL FUNCTION 'ZFMBP_LOG_API_BP'
        STARTING NEW TASK '/SCMB/PRR_UPD'
        EXPORTING
          iv_processo    = gv_uri_to_businesspartnerrole
          iv_metodo      = gc_patch
          iv_json        = serialize_json( is_json = ls_prr )
          iv_json_ret    = serialize_json( is_json = lt_return )
          iv_code        = 200
          iv_reason      = CONV string( TEXT-038 )
          iv_destination = gv_destination_rfc.

    ENDIF.

  ENDMETHOD.


  METHOD sort.

    SORT gt_control_int ASCENDING BY datahora_atua.

    DATA(lt_bps_cop) = ct_bps.

    CLEAR: ct_bps[].

    LOOP AT gt_control_int ASSIGNING FIELD-SYMBOL(<fs_control>).
      CHECK line_exists( lt_bps_cop[ BusinessPartner = <fs_control>-bp ] ).
      APPEND |{ <fs_control>-bp ALPHA = IN }| TO ct_bps.
    ENDLOOP.

  ENDMETHOD.


  METHOD validate_cfopc.

    IF iv_group EQ  gc_values-zppj
    AND is_customer-customer IS NOT INITIAL
    AND is_customer-cfopc IS INITIAL.

      MESSAGE e003(zbp_log_api_bp) INTO DATA(lv_message) WITH gv_bp.
      APPEND VALUE #( type = gc_values-e number = 003 id = gc_values-zbp_log_api_bp message = lv_message message_v1 = gv_bp ) TO rt_result.

    ENDIF.

  ENDMETHOD.

  METHOD serialize_tables_json.

    rv_json = serialize_json( is_json = it_return iv_compress = abap_true ).

  ENDMETHOD.

ENDCLASS.
