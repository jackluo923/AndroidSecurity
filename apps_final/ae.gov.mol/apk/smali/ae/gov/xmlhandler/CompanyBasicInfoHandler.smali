.class public Lae/gov/xmlhandler/CompanyBasicInfoHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "CompanyBasicInfoHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mBasicInfoVo:Lae/gov/mol/vo/CompanyBasicInfoVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->currentElement:Ljava/lang/Boolean;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->currentValue:Ljava/lang/String;

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
    .line 59
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->currentValue:Ljava/lang/String;

    .line 62
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

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->currentElement:Ljava/lang/Boolean;

    .line 46
    const-string v0, "ComNameEng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->mBasicInfoVo:Lae/gov/mol/vo/CompanyBasicInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyBasicInfoVo;->setComNameEng(Ljava/lang/String;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v0, "ComNameArb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->mBasicInfoVo:Lae/gov/mol/vo/CompanyBasicInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyBasicInfoVo;->setComNameArb(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getmBasicInfoVo()Lae/gov/mol/vo/CompanyBasicInfoVo;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->mBasicInfoVo:Lae/gov/mol/vo/CompanyBasicInfoVo;

    return-object v0
.end method

.method public setmBasicInfoVo(Lae/gov/mol/vo/CompanyBasicInfoVo;)V
    .locals 0
    .param p1, "mBasicInfoVo"    # Lae/gov/mol/vo/CompanyBasicInfoVo;

    .prologue
    .line 20
    iput-object p1, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->mBasicInfoVo:Lae/gov/mol/vo/CompanyBasicInfoVo;

    .line 21
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

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->currentElement:Ljava/lang/Boolean;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->currentValue:Ljava/lang/String;

    .line 34
    const-string v0, "ComBasicInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lae/gov/mol/vo/CompanyBasicInfoVo;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyBasicInfoVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->mBasicInfoVo:Lae/gov/mol/vo/CompanyBasicInfoVo;

    .line 37
    :cond_0
    return-void
.end method
