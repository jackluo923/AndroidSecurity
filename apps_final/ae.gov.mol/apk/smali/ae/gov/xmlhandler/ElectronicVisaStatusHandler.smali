.class public Lae/gov/xmlhandler/ElectronicVisaStatusHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ElectronicVisaStatusHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 13
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentElement:Ljava/lang/Boolean;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentValue:Ljava/lang/String;

    .line 12
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
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentValue:Ljava/lang/String;

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
    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentElement:Ljava/lang/Boolean;

    .line 47
    const-string v0, "Transaction_x0020_Number"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->setTransaction_x0020_Number(Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v0, "Date_x0020_of_x0020_Submit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->setDate_x0020_of_x0020_Submit(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    const-string v0, "Company_x0020_Name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->setCompany_x0020_Name(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    const-string v0, "Emirate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->setEmirate(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_4
    const-string v0, "Transaction_x0020_Type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->setTransaction_x0020_Type(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_5
    const-string v0, "Location"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->setLocation(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_6
    const-string v0, "State"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_7
    const-string v0, "Status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->setStatus(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getmElectronicVisaStatusVo()Lae/gov/mol/vo/ElectronicVisaStatusVo;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

    return-object v0
.end method

.method public setmElectronicVisaStatusVo(Lae/gov/mol/vo/ElectronicVisaStatusVo;)V
    .locals 0
    .param p1, "mElectronicVisaStatusVo"    # Lae/gov/mol/vo/ElectronicVisaStatusVo;

    .prologue
    .line 24
    iput-object p1, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

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
    .line 32
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentElement:Ljava/lang/Boolean;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->currentValue:Ljava/lang/String;

    .line 34
    const-string v0, "ElectronicVisaStatus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lae/gov/mol/vo/ElectronicVisaStatusVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ElectronicVisaStatusVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

    .line 37
    :cond_0
    return-void
.end method
