.class public Lae/gov/xmlhandler/SalaryPaidInfoHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SalaryPaidInfoHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentElement:Ljava/lang/Boolean;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    .line 13
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
    .line 119
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    .line 122
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
    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentElement:Ljava/lang/Boolean;

    .line 49
    const-string v0, "COM_COMPANY_CODE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setCOM_COMPANY_CODE(Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v0, "OFFICE_NAME"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setOFFICE_NAME(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "COM_NAME_ARB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setCOM_NAME_ARB(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_3
    const-string v0, "COM_NAME_ENG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setCOM_NAME_ENG(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_4
    const-string v0, "EMP_CARD_ISSUE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setEMP_CARD_ISSUE(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_5
    const-string v0, "EMP_CARD_EXPIRY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setEMP_CARD_EXPIRY(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_6
    const-string v0, "EMP_CARD_NO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 72
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setEMP_CARD_NO(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_7
    const-string v0, "PER_CODE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setPER_CODE(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_8
    const-string v0, "PER_NAME_ARB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 79
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setPER_NAME_ARB(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_9
    const-string v0, "PER_NAME_ENG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 82
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setPER_NAME_ENG(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :cond_a
    const-string v0, "DESC_ARABIC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setDESC_ARABIC(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_b
    const-string v0, "CONTRACT_TYPE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 88
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setCONTRACT_TYPE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_c
    const-string v0, "EMP_CON_START"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 91
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setEMP_CON_START(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_d
    const-string v0, "EMP_CON_END"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 94
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setEMP_CON_END(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_e
    const-string v0, "COMTRACT_SALARY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 97
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setCOMTRACT_SALARY(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_f
    const-string v0, "CONTRACT_TOTAL_SALARY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 100
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setCONTRACT_TOTAL_SALARY(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :cond_10
    const-string v0, "COMTRACT_RESIDANCE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 103
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setCOMTRACT_RESIDANCE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_11
    const-string v0, "Result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 106
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_12
    const-string v0, "COMTRACT_TRANSPORTATION"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->setCOMTRACT_TRANSPORTATION(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getSalaryPaidInfoVo()Lae/gov/mol/vo/SalaryPaidInfoVo;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    return-object v0
.end method

.method public setSalaryPaidInfoVo(Lae/gov/mol/vo/SalaryPaidInfoVo;)V
    .locals 0
    .param p1, "salaryPaidInfoVo"    # Lae/gov/mol/vo/SalaryPaidInfoVo;

    .prologue
    .line 23
    iput-object p1, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    .line 24
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
    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentElement:Ljava/lang/Boolean;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->currentValue:Ljava/lang/String;

    .line 37
    const-string v0, "SalaryInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-direct {v0}, Lae/gov/mol/vo/SalaryPaidInfoVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->salaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    .line 40
    :cond_0
    return-void
.end method
