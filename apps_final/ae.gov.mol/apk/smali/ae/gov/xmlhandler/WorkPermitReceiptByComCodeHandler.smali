.class public Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WorkPermitReceiptByComCodeHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;",
            ">;"
        }
    .end annotation
.end field

.field mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mArrayList:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentElement:Ljava/lang/Boolean;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentValue:Ljava/lang/String;

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
    .line 88
    iget-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentValue:Ljava/lang/String;

    .line 91
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
    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentElement:Ljava/lang/Boolean;

    .line 52
    const-string v0, "per_name_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->setPer_name_eng(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "per_name_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->setPer_name_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    const-string v0, "desc_arabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->setDesc_arabic(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_3
    const-string v0, "desc_english"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->setDesc_english(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_4
    const-string v0, "card_no"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->setCard_no(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_5
    const-string v0, "emp_card_expiry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    iget-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->setEmp_card_expiry(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_6
    const-string v0, "paycardno"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    iget-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->setPaycardno(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_7
    const-string v0, "paycategory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 74
    iget-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->setPaycategory(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_8
    const-string v0, "WorkPermitReceiptByComCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getmArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mArrayList:Ljava/util/ArrayList;

    .line 26
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
    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentElement:Ljava/lang/Boolean;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->currentValue:Ljava/lang/String;

    .line 40
    const-string v0, "WorkPermitReceiptByComCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    invoke-direct {v0}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/WorkPermitReceiptByComCodeHandler;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    .line 43
    :cond_0
    return-void
.end method
