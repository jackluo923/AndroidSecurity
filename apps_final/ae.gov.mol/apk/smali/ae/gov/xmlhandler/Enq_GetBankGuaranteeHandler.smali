.class public Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Enq_GetBankGuaranteeHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field mEnq_GetBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentElement:Ljava/lang/Boolean;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentValue:Ljava/lang/String;

    .line 14
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
    .line 81
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentValue:Ljava/lang/String;

    .line 84
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
    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentElement:Ljava/lang/Boolean;

    .line 50
    const-string v0, "com_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->mEnq_GetBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->setCom_code(Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v0, "com_Name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->mEnq_GetBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->setCom_Name(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "com_name_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->mEnq_GetBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->setCom_name_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_3
    const-string v0, "Category"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->mEnq_GetBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->setCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_4
    const-string v0, "License_Number"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->mEnq_GetBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->setLicense_Number(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_5
    const-string v0, "Emirate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->mEnq_GetBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->setEmirate(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_6
    const-string v0, "Labour_Office"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->mEnq_GetBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->setLabour_Office(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getmEnq_GetBankGuaranteeVo()Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->mEnq_GetBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    return-object v0
.end method

.method public setmEnq_GetBankGuaranteeVo(Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;)V
    .locals 0
    .param p1, "mEnq_GetBankGuaranteeVo"    # Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    .prologue
    .line 25
    iput-object p1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->mEnq_GetBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

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
    .line 36
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentElement:Ljava/lang/Boolean;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->currentValue:Ljava/lang/String;

    .line 38
    const-string v0, "Table1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;->mEnq_GetBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    .line 41
    :cond_0
    return-void
.end method
