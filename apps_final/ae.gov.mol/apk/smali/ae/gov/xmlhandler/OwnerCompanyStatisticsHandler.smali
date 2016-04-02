.class public Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OwnerCompanyStatisticsHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field private mArrayListOwnerCompanyStatisticsVo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/OwnerCompanyStatisticsVo;",
            ">;"
        }
    .end annotation
.end field

.field mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mArrayListOwnerCompanyStatisticsVo:Ljava/util/ArrayList;

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentElement:Ljava/lang/Boolean;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    .line 15
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
    .line 126
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    .line 129
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentElement:Ljava/lang/Boolean;

    .line 61
    const-string v0, "PersonCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setPersonCode(Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v0, "NameEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setNameEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    const-string v0, "NameArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setNameArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_3
    const-string v0, "NationalityEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setNationalityEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_4
    const-string v0, "NationalityArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setNationalityArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_5
    const-string v0, "CompanyCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 78
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setCompanyCode(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_6
    const-string v0, "CompanyEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setCompanyEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_7
    const-string v0, "CompanyArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 84
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setCompanyArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_8
    const-string v0, "LabourOfficeEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 87
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setLabourOfficeEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_9
    const-string v0, "LabourOfficeArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 90
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setLabourOfficeArabic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :cond_a
    const-string v0, "LicenseEndDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 93
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setLicenseEndDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    :cond_b
    const-string v0, "LicenseNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 96
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setLicenseNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_c
    const-string v0, "ActiveEmployees"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 99
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setActiveEmployees(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_d
    const-string v0, "BALAGH"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 102
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setBALAGH(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_e
    const-string v0, "SHAKWA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 105
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setSHAKWA(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_f
    const-string v0, "ExpiredLabourCards"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 108
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setExpiredLabourCards(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_10
    const-string v0, "ExpiredWorkPermits"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 111
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->setExpiredWorkPermits(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_11
    const-string v0, "sp_GetOwnerCompanyStatistics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mArrayListOwnerCompanyStatisticsVo:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getmArrayListOwnerCompanyStatisticsVo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/OwnerCompanyStatisticsVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mArrayListOwnerCompanyStatisticsVo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmOwnerCompanyStatisticsVo()Lae/gov/mol/vo/OwnerCompanyStatisticsVo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    return-object v0
.end method

.method public setmArrayListOwnerCompanyStatisticsVo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/OwnerCompanyStatisticsVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "mArrayListOwnerCompanyStatisticsVo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/OwnerCompanyStatisticsVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mArrayListOwnerCompanyStatisticsVo:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public setmOwnerCompanyStatisticsVo(Lae/gov/mol/vo/OwnerCompanyStatisticsVo;)V
    .locals 0
    .param p1, "mOwnerCompanyStatisticsVo"    # Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    .prologue
    .line 41
    iput-object p1, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    .line 42
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
    .line 28
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentElement:Ljava/lang/Boolean;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->currentValue:Ljava/lang/String;

    .line 30
    const-string v0, "sp_GetOwnerCompanyStatistics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/OwnerCompanyStatisticsHandler;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    .line 33
    :cond_0
    return-void
.end method
