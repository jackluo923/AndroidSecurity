.class public Lae/gov/xmlhandler/CompanyCategoryInfoHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "CompanyCategoryInfoHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyCategoryInfoVo;",
            ">;"
        }
    .end annotation
.end field

.field mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentElement:Ljava/lang/Boolean;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mArrayList:Ljava/util/ArrayList;

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
    .line 110
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    .line 113
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
    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentElement:Ljava/lang/Boolean;

    .line 60
    const-string v0, "NameEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->setNameEnglish(Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v0, "NameArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->setNameArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    const-string v0, "LabourOfficeCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->setLabourOfficeCode(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_3
    const-string v0, "LabourOfficeEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->setLabourOfficeEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_4
    const-string v0, "LabourOfficeArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->setLabourOfficeArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_5
    const-string v0, "NationalityCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->setNationalityCode(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_6
    const-string v0, "NationalityEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 79
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->setNationalityEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_7
    const-string v0, "NationalityArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 82
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->setNationalityArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_8
    const-string v0, "ActiveEmployees"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->setActiveEmployees(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_9
    const-string v0, "ApprovedQuota"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 88
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->setApprovedQuota(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_a
    const-string v0, "Abscornded"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 92
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->setAbscornded(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_b
    const-string v0, "TotalNat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 95
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->setTotalNat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_c
    const-string v0, "TotalEmployees"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 98
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyCategoryInfoVo;->setTotalEmployees(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_d
    const-string v0, "CategoryInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getmArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyCategoryInfoVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmCompanyCategoryInfoVo()Lae/gov/mol/vo/CompanyCategoryInfoVo;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    return-object v0
.end method

.method public setmArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyCategoryInfoVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/CompanyCategoryInfoVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mArrayList:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public setmCompanyCategoryInfoVo(Lae/gov/mol/vo/CompanyCategoryInfoVo;)V
    .locals 0
    .param p1, "mCompanyCategoryInfoVo"    # Lae/gov/mol/vo/CompanyCategoryInfoVo;

    .prologue
    .line 37
    iput-object p1, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    .line 38
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
    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentElement:Ljava/lang/Boolean;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->currentValue:Ljava/lang/String;

    .line 47
    const-string v0, "CategoryInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lae/gov/mol/vo/CompanyCategoryInfoVo;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyCategoryInfoVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->mCompanyCategoryInfoVo:Lae/gov/mol/vo/CompanyCategoryInfoVo;

    .line 50
    :cond_0
    return-void
.end method
