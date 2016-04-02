.class public Lae/gov/xmlhandler/OwnerStatisticsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OwnerStatisticsHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/OwnerstatisticsVo;",
            ">;"
        }
    .end annotation
.end field

.field private mArrayListCompanyQuotaVo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyQuotaVo;",
            ">;"
        }
    .end annotation
.end field

.field private mArrayListViolationStatsVo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ViolationStatsVo;",
            ">;"
        }
    .end annotation
.end field

.field mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

.field mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

.field mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListViolationStatsVo:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListCompanyQuotaVo:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentElement:Ljava/lang/Boolean;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    .line 211
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 77
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentElement:Ljava/lang/Boolean;

    .line 79
    const-string v5, "OWNERCODE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setOWNERCODE(Ljava/lang/String;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v5, "OWNERNAME"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setOWNERNAME(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v5, "COMPANYCODE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setCOMPANYCODE(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_3
    const-string v5, "COMPANYNAME"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 86
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setCOMPANYNAME(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_4
    const-string v5, "OFFICENAME"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 88
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setOFFICENAME(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_5
    const-string v5, "OFFICENAME_ENG"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 90
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setOFFICENAME_ENG(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_6
    const-string v5, "LICENSEDATE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 92
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setLICENSEDATE(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_7
    const-string v5, "LICENSENO"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 94
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setLICENSENO(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_8
    const-string v5, "STATUS_NAME"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 96
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setSTATUS_NAME(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_9
    const-string v5, "INCOMPLETE_COUNT"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 98
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setINCOMPLETE_COUNT(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_a
    const-string v5, "EMPLOYEES"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 100
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setEMPLOYEES(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_b
    const-string v5, "TOTALABSCONDING"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 102
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setTOTALABSCONDING(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_c
    const-string v5, "TOTALCOMPLAINT"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 104
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setTOTALCOMPLAINT(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_d
    const-string v5, "EXPIREDLABOURCARD"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 106
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setEXPIREDLABOURCARD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_e
    const-string v5, "EXPIREDWORKPERMIT"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 108
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setEXPIREDWORKPERMIT(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_f
    const-string v5, "SALARYBLOCK"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 110
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setSALARYBLOCK(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_10
    const-string v5, "UPCANCEL"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 112
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setUPCANCEL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_11
    const-string v5, "LABOURWITHOUTCONTRACT"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 114
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setLABOURWITHOUTCONTRACT(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_12
    const-string v5, "ExpiredCardMorethan60Days"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 116
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setExpiredCardMorethan60Days(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_13
    const-string v5, "Expiredin60Days"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 118
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setExpiredin60Days(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :cond_14
    const-string v5, "ExpiredCardLesshan60Days"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 120
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setExpiredCardLesshan60Days(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_15
    const-string v5, "OWNERNAME_ENG"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 122
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setOWNERNAME_ENG(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_16
    const-string v5, "companyName_eng"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 124
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setCompanyName_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_17
    const-string v5, "OFFICENAME_ENG"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 126
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setOFFICENAME_ENG(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :cond_18
    const-string v5, "COMPANY_FINE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 128
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setCOMPANY_FINE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_19
    const-string v5, "com_status"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 130
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setCom_status(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :cond_1a
    const-string v5, "comcode"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 132
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/CompanyQuotaVo;->setComcode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_1b
    const-string v5, "type_english"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 134
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/CompanyQuotaVo;->setType_english(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_1c
    const-string v5, "type_arabic"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 136
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/CompanyQuotaVo;->setType_arabic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_1d
    const-string v5, "APPROVE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 138
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/CompanyQuotaVo;->setAPPROVE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_1e
    const-string v5, "USED"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 140
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/CompanyQuotaVo;->setUSED(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_1f
    const-string v5, "balance"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 142
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/CompanyQuotaVo;->setBalance(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_20
    const-string v5, "CompanyQuota"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 144
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setmCompanyQuotaVo(Lae/gov/mol/vo/CompanyQuotaVo;)V

    goto/16 :goto_0

    .line 145
    :cond_21
    const-string v5, "CompanyCode"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 146
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/ViolationStatsVo;->setCompanyCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_22
    const-string v5, "Violation_Eng"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 148
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/ViolationStatsVo;->setViolation_Eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_23
    const-string v5, "Violation_arb"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 150
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/ViolationStatsVo;->setViolation_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_24
    const-string v5, "Help_eng"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 152
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/ViolationStatsVo;->setHelp_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_25
    const-string v5, "Help_arb"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 154
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/ViolationStatsVo;->setHelp_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_26
    const-string v5, "VoilationStats"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 156
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListViolationStatsVo:Ljava/util/ArrayList;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 157
    :cond_27
    const-string v5, "OwnerStats"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    const-string v0, "0"

    .line 159
    .local v0, "CompanyCode":Ljava/lang/String;
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListViolationStatsVo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2a

    .line 160
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListViolationStatsVo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_28

    .line 194
    .end local v3    # "j":I
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListViolationStatsVo:Ljava/util/ArrayList;

    .line 195
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListCompanyQuotaVo:Ljava/util/ArrayList;

    .line 196
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListViolationStatsVo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 197
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListCompanyQuotaVo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 161
    .restart local v3    # "j":I
    :cond_28
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListViolationStatsVo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/ViolationStatsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/ViolationStatsVo;->getCompanyCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 166
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;

    move-result-object v5

    invoke-virtual {v5}, Lae/gov/mol/vo/ViolationStatsVo;->getViolation_Eng()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "Violation":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListViolationStatsVo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/ViolationStatsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/ViolationStatsVo;->getViolation_Eng()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;

    move-result-object v5

    invoke-virtual {v5}, Lae/gov/mol/vo/ViolationStatsVo;->getHelp_eng()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "Help":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListViolationStatsVo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/ViolationStatsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/ViolationStatsVo;->getHelp_eng()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;

    move-result-object v4

    .line 171
    .local v4, "mViolationStatsVo":Lae/gov/mol/vo/ViolationStatsVo;
    invoke-virtual {v4, v2}, Lae/gov/mol/vo/ViolationStatsVo;->setViolation_Eng(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v4, v1}, Lae/gov/mol/vo/ViolationStatsVo;->setHelp_eng(Ljava/lang/String;)V

    .line 173
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v5, v4}, Lae/gov/mol/vo/OwnerstatisticsVo;->setmViolationStatsVo(Lae/gov/mol/vo/ViolationStatsVo;)V

    .line 175
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;

    move-result-object v5

    invoke-virtual {v5}, Lae/gov/mol/vo/ViolationStatsVo;->getViolation_arb()Ljava/lang/String;

    move-result-object v2

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListViolationStatsVo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/ViolationStatsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/ViolationStatsVo;->getViolation_arb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;

    move-result-object v5

    invoke-virtual {v5}, Lae/gov/mol/vo/ViolationStatsVo;->getHelp_arb()Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListViolationStatsVo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/ViolationStatsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/ViolationStatsVo;->getHelp_arb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;

    move-result-object v4

    .line 180
    invoke-virtual {v4, v2}, Lae/gov/mol/vo/ViolationStatsVo;->setViolation_arb(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v4, v1}, Lae/gov/mol/vo/ViolationStatsVo;->setHelp_arb(Ljava/lang/String;)V

    .line 182
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v5, v4}, Lae/gov/mol/vo/OwnerstatisticsVo;->setmViolationStatsVo(Lae/gov/mol/vo/ViolationStatsVo;)V

    .line 160
    .end local v1    # "Help":Ljava/lang/String;
    .end local v2    # "Violation":Ljava/lang/String;
    .end local v4    # "mViolationStatsVo":Lae/gov/mol/vo/ViolationStatsVo;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 185
    :cond_29
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListViolationStatsVo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/ViolationStatsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/ViolationStatsVo;->getCompanyCode()Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayListViolationStatsVo:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lae/gov/mol/vo/ViolationStatsVo;

    invoke-virtual {v6, v5}, Lae/gov/mol/vo/OwnerstatisticsVo;->setmViolationStatsVo(Lae/gov/mol/vo/ViolationStatsVo;)V

    .line 187
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 191
    .end local v3    # "j":I
    :cond_2a
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    new-instance v6, Lae/gov/mol/vo/ViolationStatsVo;

    invoke-direct {v6}, Lae/gov/mol/vo/ViolationStatsVo;-><init>()V

    invoke-virtual {v5, v6}, Lae/gov/mol/vo/OwnerstatisticsVo;->setmViolationStatsVo(Lae/gov/mol/vo/ViolationStatsVo;)V

    .line 192
    iget-object v5, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v6, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public getmArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/OwnerstatisticsVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmOwnerstatisticsVo()Lae/gov/mol/vo/OwnerstatisticsVo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    return-object v0
.end method

.method public getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    return-object v0
.end method

.method public setmArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/OwnerstatisticsVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/OwnerstatisticsVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mArrayList:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public setmOwnerstatisticsVo(Lae/gov/mol/vo/OwnerstatisticsVo;)V
    .locals 0
    .param p1, "mOwnerstatisticsVo"    # Lae/gov/mol/vo/OwnerstatisticsVo;

    .prologue
    .line 28
    iput-object p1, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    .line 29
    return-void
.end method

.method public setmViolationStatsVo(Lae/gov/mol/vo/ViolationStatsVo;)V
    .locals 0
    .param p1, "mViolationStatsVo"    # Lae/gov/mol/vo/ViolationStatsVo;

    .prologue
    .line 36
    iput-object p1, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    .line 37
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentElement:Ljava/lang/Boolean;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->currentValue:Ljava/lang/String;

    .line 61
    const-string v0, "OwnerStats"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/OwnerstatisticsVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    .line 63
    new-instance v0, Lae/gov/mol/vo/CompanyQuotaVo;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyQuotaVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

    .line 64
    new-instance v0, Lae/gov/mol/vo/ViolationStatsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ViolationStatsVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v0, "CompanyQuota"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    new-instance v0, Lae/gov/mol/vo/CompanyQuotaVo;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyQuotaVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mCompanyQuotaVo:Lae/gov/mol/vo/CompanyQuotaVo;

    goto :goto_0

    .line 67
    :cond_2
    const-string v0, "VoilationStats"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lae/gov/mol/vo/ViolationStatsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ViolationStatsVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerStatisticsHandler;->mViolationStatsVo:Lae/gov/mol/vo/ViolationStatsVo;

    goto :goto_0
.end method
