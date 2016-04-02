.class public Lae/gov/xmlhandler/CompanyHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "CompanyHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mCompanyVo:Lae/gov/mol/vo/CompanyVo;


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

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyHandler;->currentElement:Ljava/lang/Boolean;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyHandler;->currentValue:Ljava/lang/String;

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
    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyHandler;->currentValue:Ljava/lang/String;

    .line 67
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

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyHandler;->currentElement:Ljava/lang/Boolean;

    .line 46
    const-string v0, "Company_Name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyHandler;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyVo;->setCompany_Name(Ljava/lang/String;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v0, "Labour_Office"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyHandler;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyVo;->setLabour_Office(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_2
    const-string v0, "Category"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyHandler;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyVo;->setCategory(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getmCompanyVo()Lae/gov/mol/vo/CompanyVo;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyHandler;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    return-object v0
.end method

.method public setmCompanyVo(Lae/gov/mol/vo/CompanyVo;)V
    .locals 0
    .param p1, "mCompanyVo"    # Lae/gov/mol/vo/CompanyVo;

    .prologue
    .line 24
    iput-object p1, p0, Lae/gov/xmlhandler/CompanyHandler;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

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

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyHandler;->currentElement:Ljava/lang/Boolean;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyHandler;->currentValue:Ljava/lang/String;

    .line 34
    const-string v0, "COMPANY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lae/gov/mol/vo/CompanyVo;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyHandler;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    .line 37
    :cond_0
    return-void
.end method
