.class public Lae/gov/xmlhandler/ExpiredCardDetailsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ExpiredCardDetailsHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ExpiredCard_DateRangeVo;",
            ">;"
        }
    .end annotation
.end field

.field mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mArrayList:Ljava/util/ArrayList;

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentElement:Ljava/lang/Boolean;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

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
    .line 91
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

    .line 94
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
    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentElement:Ljava/lang/Boolean;

    .line 60
    const-string v0, "CardNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->setCardNumber(Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v0, "IssueDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->setIssueDate(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "ExpiryDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->setExpiryDate(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    const-string v0, "CardTypeEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->setCardTypeEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_4
    const-string v0, "CardTypeArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->setCardTypeArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_5
    const-string v0, "PersonNameArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->setPersonNameArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_6
    const-string v0, "PersonNameEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 73
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->setPersonNameEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_7
    const-string v0, "NationalityEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 75
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->setNationalityEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_8
    const-string v0, "NationalityArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 77
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->setNationalityArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_9
    const-string v0, "PassportNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 79
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->setPassportNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_a
    const-string v0, "sp_GetExpiredCards_dt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

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
            "Lae/gov/mol/vo/ExpiredCard_DateRangeVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmExpiredCard_DateRangeVo()Lae/gov/mol/vo/ExpiredCard_DateRangeVo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    return-object v0
.end method

.method public setmArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ExpiredCard_DateRangeVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ExpiredCard_DateRangeVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mArrayList:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public setmExpiredCard_DateRangeVo(Lae/gov/mol/vo/ExpiredCard_DateRangeVo;)V
    .locals 0
    .param p1, "mExpiredCard_DateRangeVo"    # Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    .prologue
    .line 42
    iput-object p1, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    .line 43
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
    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentElement:Ljava/lang/Boolean;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->currentValue:Ljava/lang/String;

    .line 31
    const-string v0, "sp_GetExpiredCards_dt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    .line 34
    :cond_0
    return-void
.end method
