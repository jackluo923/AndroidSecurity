.class public Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "CompanyQuotaDetailsHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field private mComQuotadetailsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyQuotaDetailsData;",
            ">;"
        }
    .end annotation
.end field

.field mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentElement:Ljava/lang/Boolean;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mComQuotadetailsList:Ljava/util/ArrayList;

    .line 16
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
    .line 129
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    .line 132
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
    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentElement:Ljava/lang/Boolean;

    .line 57
    const-string v0, "CompanyCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setCompanyCode(Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v0, "CompanyNameArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setCompanyNameArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v0, "CompanyNameEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setCompanyNameEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    const-string v0, "LabourOfficeCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setLabourOfficeCode(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_4
    const-string v0, "CompanyAddress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setCompanyAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_5
    const-string v0, "LabourOfficeEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setLabourOfficeEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_6
    const-string v0, "LabourOfficeArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 89
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setLabourOfficeArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_7
    const-string v0, "Category"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_8
    const-string v0, "CompanyAddress1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setCompanyAddress1(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_9
    const-string v0, "QuotaType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 99
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setQuotaType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_a
    const-string v0, "Approved"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 102
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setApproved(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_b
    const-string v0, "Used"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 105
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setUsed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_c
    const-string v0, "QuotaTypeEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 108
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setQuotaTypeEnglish(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :cond_d
    const-string v0, "QuotaTypeArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 111
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setQuotaTypeArabic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_e
    const-string v0, "CompanyQuotaDetails"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 114
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mComQuotadetailsList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 115
    :cond_f
    const-string v0, "balance"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->setBalance(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getmComQuotadetailsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyQuotaDetailsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mComQuotadetailsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmComQuotadetailsList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyQuotaDetailsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "mComQuotadetailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/CompanyQuotaDetailsData;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mComQuotadetailsList:Ljava/util/ArrayList;

    .line 35
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
    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentElement:Ljava/lang/Boolean;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->currentValue:Ljava/lang/String;

    .line 44
    const-string v0, "CompanyQuotaDetails"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    .line 47
    :cond_0
    return-void
.end method
