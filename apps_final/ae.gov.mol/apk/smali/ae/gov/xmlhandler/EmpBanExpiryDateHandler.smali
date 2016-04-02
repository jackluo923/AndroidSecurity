.class public Lae/gov/xmlhandler/EmpBanExpiryDateHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "EmpBanExpiryDateHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mEmpBanExpiryDateVo:Lae/gov/mol/vo/EmpBanExpiryDateVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->currentElement:Ljava/lang/Boolean;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->currentValue:Ljava/lang/String;

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
    .line 58
    iget-object v0, p0, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->currentValue:Ljava/lang/String;

    .line 61
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
    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->currentElement:Ljava/lang/Boolean;

    .line 47
    const-string v0, "ban_expiry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->mEmpBanExpiryDateVo:Lae/gov/mol/vo/EmpBanExpiryDateVo;

    iget-object v1, p0, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/EmpBanExpiryDateVo;->setBan_expiry(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public getmEmpBanExpiryDateVo()Lae/gov/mol/vo/EmpBanExpiryDateVo;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->mEmpBanExpiryDateVo:Lae/gov/mol/vo/EmpBanExpiryDateVo;

    return-object v0
.end method

.method public setmEmpBanExpiryDateVo(Lae/gov/mol/vo/EmpBanExpiryDateVo;)V
    .locals 0
    .param p1, "mEmpBanExpiryDateVo"    # Lae/gov/mol/vo/EmpBanExpiryDateVo;

    .prologue
    .line 21
    iput-object p1, p0, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->mEmpBanExpiryDateVo:Lae/gov/mol/vo/EmpBanExpiryDateVo;

    .line 22
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
    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->currentElement:Ljava/lang/Boolean;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->currentValue:Ljava/lang/String;

    .line 35
    const-string v0, "EmpBanExpiryDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lae/gov/mol/vo/EmpBanExpiryDateVo;

    invoke-direct {v0}, Lae/gov/mol/vo/EmpBanExpiryDateVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->mEmpBanExpiryDateVo:Lae/gov/mol/vo/EmpBanExpiryDateVo;

    .line 38
    :cond_0
    return-void
.end method
