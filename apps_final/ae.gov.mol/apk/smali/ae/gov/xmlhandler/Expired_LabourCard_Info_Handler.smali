.class public Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Expired_LabourCard_Info_Handler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentElement:Ljava/lang/Boolean;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

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
    .line 91
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    .line 94
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

    iput-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentElement:Ljava/lang/Boolean;

    .line 47
    const-string v0, "CompanyCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->setCompanyCode(Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v0, "CompanyName_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->setCompanyName_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "CompanyName_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->setCompanyName_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_3
    const-string v0, "CompanyAddress"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->setCompanyAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    const-string v0, "LabourOffice_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->setLabourOffice_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_5
    const-string v0, "LabourOffice_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->setLabourOffice_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_6
    const-string v0, "EmployeeCount"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->setEmployeeCount(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_7
    const-string v0, "Category"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 67
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->setCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_8
    const-string v0, "com_license_no"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->setCom_license_no(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_9
    const-string v0, "com_status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 73
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->setCom_status(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :cond_a
    const-string v0, "ComStatus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 76
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->setComStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_b
    const-string v0, "COM_STATUS_ENG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 79
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->setCOM_STATUS_ENG(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_c
    const-string v0, "COM_STATUS_ARB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->setCOM_STATUS_ARB(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getmExpiredCard_infoVo()Lae/gov/mol/vo/ExpiredCard_infoVo;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    return-object v0
.end method

.method public setmExpiredCard_infoVo(Lae/gov/mol/vo/ExpiredCard_infoVo;)V
    .locals 0
    .param p1, "mExpiredCard_infoVo"    # Lae/gov/mol/vo/ExpiredCard_infoVo;

    .prologue
    .line 25
    iput-object p1, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

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
    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentElement:Ljava/lang/Boolean;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->currentValue:Ljava/lang/String;

    .line 35
    const-string v0, "companyInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ExpiredCard_infoVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    .line 38
    :cond_0
    return-void
.end method
