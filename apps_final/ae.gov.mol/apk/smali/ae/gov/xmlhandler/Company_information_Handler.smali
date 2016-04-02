.class public Lae/gov/xmlhandler/Company_information_Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Company_information_Handler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentElement:Ljava/lang/Boolean;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

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
    .line 130
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    .line 133
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

    iput-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentElement:Ljava/lang/Boolean;

    .line 50
    const-string v0, "COM_COMPANY_CODE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setCompamy_code(Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v0, "COM_LO_CODE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setCompany_lo_code(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    const-string v0, "COM_COMPANY_CATEGORY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setComapany_category(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    const-string v0, "COM_COMPANY_CODE_OLD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setCompany_lo_code(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_4
    const-string v0, "COM_NAME_ARB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setCompany_name_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_5
    const-string v0, "COM_NAME_ENG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setCompany_name_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_6
    const-string v0, "COM_STATUS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 82
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setCompany_status(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_7
    const-string v0, "COM_LICENSE_END"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 86
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setCom_license_end(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_8
    const-string v0, "COM_LICENSE_NO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 89
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setCom_license_no(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_9
    const-string v0, "COMLICTYPE_DESC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 92
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setComlictype_desc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_a
    const-string v0, "COMLICPLACE_DESC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 95
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setComlicplace_desc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_b
    const-string v0, "COM_PHONE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 98
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setCom_phone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_c
    const-string v0, "COM_FAX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 101
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setCom_fax(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_d
    const-string v0, "COM_PO_BOX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 104
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setCom_po_box(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_e
    const-string v0, "EMIRATE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 107
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setEmirate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_f
    const-string v0, "LabourOffice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 110
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setLabourOffice(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :cond_10
    const-string v0, "TotalEmployees"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 113
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setTotalEmployees(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_11
    const-string v0, "Abscond"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Company_InformationVo;->setAbscond(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getmCompany_Information()Lae/gov/mol/vo/Company_InformationVo;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    return-object v0
.end method

.method public setmCompany_Information(Lae/gov/mol/vo/Company_InformationVo;)V
    .locals 0
    .param p1, "mCompany_Information"    # Lae/gov/mol/vo/Company_InformationVo;

    .prologue
    .line 27
    iput-object p1, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

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

    iput-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentElement:Ljava/lang/Boolean;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->currentValue:Ljava/lang/String;

    .line 37
    const-string v0, "CompanyInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lae/gov/mol/vo/Company_InformationVo;

    invoke-direct {v0}, Lae/gov/mol/vo/Company_InformationVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/Company_information_Handler;->mCompany_Information:Lae/gov/mol/vo/Company_InformationVo;

    .line 40
    :cond_0
    return-void
.end method
