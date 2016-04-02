.class public Lae/gov/xmlhandler/MySalaryDetailsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MySalaryDetailsHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mySalaryVo:Lae/gov/mol/vo/MySalaryVo;


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

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentElement:Ljava/lang/Boolean;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

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
    .line 92
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    .line 95
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

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentElement:Ljava/lang/Boolean;

    .line 50
    const-string v0, "PersonCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryVo;->setPersonCode(Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v0, "PersonNameArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryVo;->setPersonNameArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    const-string v0, "PersonNameEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryVo;->setPersonNameEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    const-string v0, "PassportNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryVo;->setPassportNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_4
    const-string v0, "BirthDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryVo;->setBirthDate(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_5
    const-string v0, "PassportIssueDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryVo;->setPassportIssue(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_6
    const-string v0, "PassportExpiryDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 67
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryVo;->setPassportExpiryDate(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_7
    const-string v0, "NationalityCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 70
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryVo;->setNationalityCode(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_8
    const-string v0, "nationalityEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 73
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryVo;->setNationalityEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_9
    const-string v0, "nationalityArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 76
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryVo;->setNationalityArabic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_a
    const-string v0, "CardNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 79
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryVo;->setCardNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_b
    const-string v0, "CompanyNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryVo;->setCompanyNumber(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getMySalaryVo()Lae/gov/mol/vo/MySalaryVo;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    return-object v0
.end method

.method public setMySalaryVo(Lae/gov/mol/vo/MySalaryVo;)V
    .locals 0
    .param p1, "mySalaryVo"    # Lae/gov/mol/vo/MySalaryVo;

    .prologue
    .line 27
    iput-object p1, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    .line 28
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

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentElement:Ljava/lang/Boolean;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->currentValue:Ljava/lang/String;

    .line 37
    const-string v0, "EmployeeDetails"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lae/gov/mol/vo/MySalaryVo;

    invoke-direct {v0}, Lae/gov/mol/vo/MySalaryVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailsHandler;->mySalaryVo:Lae/gov/mol/vo/MySalaryVo;

    .line 40
    :cond_0
    return-void
.end method
