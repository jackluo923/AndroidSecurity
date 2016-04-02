.class public Lae/gov/xmlhandler/PersonCompanyListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PersonCompanyListHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

.field private mPersonCompanyListVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PersonCompanyListVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentElement:Ljava/lang/Boolean;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVos:Ljava/util/ArrayList;

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
    .line 103
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    .line 106
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

    iput-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentElement:Ljava/lang/Boolean;

    .line 61
    const-string v0, "code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setCode(Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v0, "com_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setCom_code(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v0, "comNameA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setComNameA(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_3
    const-string v0, "comNameE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setComNameE(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_4
    const-string v0, "COM_STATUS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setCOM_STATUS(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_5
    const-string v0, "POBOX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 72
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setPOBOX(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_6
    const-string v0, "EMIRATE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setEMIRATE(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_7
    const-string v0, "PerNameA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setPerNameA(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_8
    const-string v0, "PerNameE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setPerNameE(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_9
    const-string v0, "PassportNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 80
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setPassportNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_a
    const-string v0, "Nationality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 82
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setNationality(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :cond_b
    const-string v0, "auth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 84
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setAuth(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :cond_c
    const-string v0, "sponsor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 86
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setSponsor(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_d
    const-string v0, "owner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 88
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setOwner(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_e
    const-string v0, "expiry_date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 90
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setExpiry_date(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_f
    const-string v0, "License_flag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 92
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PersonCompanyListVo;->setLicense_flag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_10
    const-string v0, "GetPersonCompanyList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVos:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getmPersonCompanyListVo()Lae/gov/mol/vo/PersonCompanyListVo;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    return-object v0
.end method

.method public getmPersonCompanyListVos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PersonCompanyListVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmPersonCompanyListVo(Lae/gov/mol/vo/PersonCompanyListVo;)V
    .locals 0
    .param p1, "mPersonCompanyListVo"    # Lae/gov/mol/vo/PersonCompanyListVo;

    .prologue
    .line 27
    iput-object p1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    .line 28
    return-void
.end method

.method public setmPersonCompanyListVos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PersonCompanyListVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "mPersonCompanyListVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/PersonCompanyListVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVos:Ljava/util/ArrayList;

    .line 40
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
    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentElement:Ljava/lang/Boolean;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->currentValue:Ljava/lang/String;

    .line 49
    const-string v0, "GetPersonCompanyList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-direct {v0}, Lae/gov/mol/vo/PersonCompanyListVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/PersonCompanyListHandler;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    .line 52
    :cond_0
    return-void
.end method
