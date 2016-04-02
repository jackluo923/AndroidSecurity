.class public Lae/gov/xmlhandler/ServiceAttachmentListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ServiceAttachmentListHandler.java"


# instance fields
.field private companyName:Ljava/lang/String;

.field private companyNumber:Ljava/lang/String;

.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

.field private mServiceAttachmentListVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceAttachmentListVo;",
            ">;"
        }
    .end annotation
.end field

.field private serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->companyNumber:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->serviceName:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->companyName:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentElement:Ljava/lang/Boolean;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVos:Ljava/util/ArrayList;

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
    .line 104
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

    .line 107
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentElement:Ljava/lang/Boolean;

    .line 55
    const-string v1, "ScanItemID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceAttachmentListVo;->setScanItemID(Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->companyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceAttachmentListVo;->setCompanyName(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->companyNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceAttachmentListVo;->setCompanyNumber(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceAttachmentListVo;->setServiceName(Ljava/lang/String;)V

    .line 97
    :cond_1
    return-void

    .line 58
    :cond_2
    const-string v1, "Doc_id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceAttachmentListVo;->setDocumentID(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_3
    const-string v1, "Max_Pages"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceAttachmentListVo;->setMaximumPages(I)V

    goto :goto_0

    .line 64
    :cond_4
    const-string v1, "Min_Pages"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceAttachmentListVo;->setMinimumPages(I)V

    goto :goto_0

    .line 67
    :cond_5
    const-string v1, "Scan_Type"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 68
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceAttachmentListVo;->setScanType(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_6
    const-string v1, "Scan_Desc"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 71
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceAttachmentListVo;->setScanDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_7
    const-string v1, "mandatory"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 74
    iget-object v1, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

    iget-object v2, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-virtual {v1, v0}, Lae/gov/mol/vo/ServiceAttachmentListVo;->setIsMandatory(Z)V

    goto/16 :goto_0

    .line 76
    :cond_9
    const-string v0, "companyNo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 77
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->companyNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 79
    :cond_a
    const-string v0, "serviceName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 80
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->serviceName:Ljava/lang/String;

    goto/16 :goto_0

    .line 82
    :cond_b
    const-string v0, "company_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 83
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->companyName:Ljava/lang/String;

    goto/16 :goto_0

    .line 86
    :cond_c
    const-string v0, "ScanItems"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVos:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getmServiceAttachmentListVos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceAttachmentListVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmServiceAttachmentListVos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceAttachmentListVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "mServiceAttachmentListVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServiceAttachmentListVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVos:Ljava/util/ArrayList;

    .line 35
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
    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentElement:Ljava/lang/Boolean;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->currentValue:Ljava/lang/String;

    .line 43
    const-string v0, "ScanItems"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lae/gov/mol/vo/ServiceAttachmentListVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ServiceAttachmentListVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->mServiceAttachmentListVo:Lae/gov/mol/vo/ServiceAttachmentListVo;

    .line 47
    :cond_0
    return-void
.end method
