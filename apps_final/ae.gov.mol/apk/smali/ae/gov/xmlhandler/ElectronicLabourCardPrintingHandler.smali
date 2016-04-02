.class public Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ElectronicLabourCardPrintingHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

.field mValidateVo:Lae/gov/mol/vo/ValidateVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentElement:Ljava/lang/Boolean;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

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
    .line 114
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    .line 117
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
    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentElement:Ljava/lang/Boolean;

    .line 62
    const-string v0, "ComOwner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mValidateVo:Lae/gov/mol/vo/ValidateVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ValidateVo;->setComOwner(Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v0, "has_balag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mValidateVo:Lae/gov/mol/vo/ValidateVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ValidateVo;->setHas_balag(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "per_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mValidateVo:Lae/gov/mol/vo/ValidateVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ValidateVo;->setPer_code(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_3
    const-string v0, "EMP_CARD_NO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->setEMP_CARD_NO(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_4
    const-string v0, "EMP_CARD_ACTIVE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->setEMP_CARD_ACTIVE(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_5
    const-string v0, "PER_CODE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 80
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->setPER_CODE(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_6
    const-string v0, "PER_NAME_ARB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 83
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->setPER_NAME_ARB(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_7
    const-string v0, "PER_NAME_ENG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 86
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->setPER_NAME_ENG(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_8
    const-string v0, "card_expiry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 89
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->setCard_expiry(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_9
    const-string v0, "COM_NAME_ARB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 92
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->setCOM_NAME_ARB(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_a
    const-string v0, "COM_NAME_ENG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 95
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->setCOM_NAME_ENG(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_b
    const-string v0, "nationality_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 98
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->setNationality_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_c
    const-string v0, "job_name_a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 101
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->setJob_name_a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_d
    const-string v0, "labour_office"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;->setLabour_office(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getmElectronicLabourCardPrintingVo()Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    return-object v0
.end method

.method public getmValidateVo()Lae/gov/mol/vo/ValidateVo;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mValidateVo:Lae/gov/mol/vo/ValidateVo;

    return-object v0
.end method

.method public setmElectronicLabourCardPrintingVo(Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;)V
    .locals 0
    .param p1, "mElectronicLabourCardPrintingVo"    # Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    .prologue
    .line 33
    iput-object p1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    .line 34
    return-void
.end method

.method public setmValidateVo(Lae/gov/mol/vo/ValidateVo;)V
    .locals 0
    .param p1, "mValidateVo"    # Lae/gov/mol/vo/ValidateVo;

    .prologue
    .line 24
    iput-object p1, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mValidateVo:Lae/gov/mol/vo/ValidateVo;

    .line 25
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

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentElement:Ljava/lang/Boolean;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->currentValue:Ljava/lang/String;

    .line 47
    const-string v0, "Validate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lae/gov/mol/vo/ValidateVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ValidateVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mValidateVo:Lae/gov/mol/vo/ValidateVo;

    .line 50
    :cond_0
    const-string v0, "LabourCardInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicLabourCardPrintingHandler;->mElectronicLabourCardPrintingVo:Lae/gov/mol/vo/ElectronicLabourCardPrintingVo;

    .line 53
    :cond_1
    return-void
.end method
