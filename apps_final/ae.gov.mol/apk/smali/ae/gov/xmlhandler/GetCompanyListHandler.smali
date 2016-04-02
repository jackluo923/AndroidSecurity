.class public Lae/gov/xmlhandler/GetCompanyListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GetCompanyListHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentElement:Ljava/lang/Boolean;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentValue:Ljava/lang/String;

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
    .line 78
    iget-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentValue:Ljava/lang/String;

    .line 81
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
    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentElement:Ljava/lang/Boolean;

    .line 51
    const-string v0, "com_company_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->setCom_company_code(Ljava/lang/String;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v0, "com_name_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->setCom_name_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    const-string v0, "com_name_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->setCom_name_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_3
    const-string v0, "totalemployees"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->setTotalemployees(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_4
    const-string v0, "GoodEmp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->setGoodEmp(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_5
    const-string v0, "BadEmp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetEmployeeCompanyVo;->setBadEmp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getmGetCompanyVo()Lae/gov/mol/vo/GetEmployeeCompanyVo;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    return-object v0
.end method

.method public setmGetCompanyVo(Lae/gov/mol/vo/GetEmployeeCompanyVo;)V
    .locals 0
    .param p1, "mGetCompanyVo"    # Lae/gov/mol/vo/GetEmployeeCompanyVo;

    .prologue
    .line 22
    iput-object p1, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    .line 23
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
    .line 34
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentElement:Ljava/lang/Boolean;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->currentValue:Ljava/lang/String;

    .line 37
    const-string v0, "CompanyInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-direct {v0}, Lae/gov/mol/vo/GetEmployeeCompanyVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/GetCompanyListHandler;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    .line 41
    :cond_0
    return-void
.end method
