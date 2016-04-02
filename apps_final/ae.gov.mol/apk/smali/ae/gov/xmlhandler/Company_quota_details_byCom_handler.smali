.class public Lae/gov/xmlhandler/Company_quota_details_byCom_handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Company_quota_details_byCom_handler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;",
            ">;"
        }
    .end annotation
.end field

.field mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentElement:Ljava/lang/Boolean;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentValue:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mArrayList:Ljava/util/ArrayList;

    .line 16
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
    .line 107
    iget-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentValue:Ljava/lang/String;

    .line 110
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
    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentElement:Ljava/lang/Boolean;

    .line 55
    const-string v0, "Transaction_Number"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->setTransaction_x0020_Number(Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v0, "Company_Code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->setCompany_x0020_Code(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_2
    const-string v0, "Job_Code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->setJob_x0020_Code(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_3
    const-string v0, "Job_description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_4
    const-string v0, "GENDER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    iget-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->setGENDER(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_5
    const-string v0, "Requested"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    iget-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->setRequested(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_6
    const-string v0, "Approved"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    iget-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->setApproved(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_7
    const-string v0, "Used"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 91
    iget-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->setUsed(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_8
    const-string v0, "Cancelled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->setCancelled(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_9
    const-string v0, "QUOTA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getmArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mArrayList:Ljava/util/ArrayList;

    .line 33
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
    .line 40
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentElement:Ljava/lang/Boolean;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->currentValue:Ljava/lang/String;

    .line 42
    const-string v0, "QUOTA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/Company_quota_details_byCom_handler;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    .line 45
    :cond_0
    return-void
.end method
