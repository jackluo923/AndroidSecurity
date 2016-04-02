.class public Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Enq_GetBankGuaranteeDetailHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field mGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->currentElement:Ljava/lang/Boolean;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->currentValue:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->mArrayList:Ljava/util/ArrayList;

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
    .line 73
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->currentValue:Ljava/lang/String;

    .line 76
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

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->currentElement:Ljava/lang/Boolean;

    .line 51
    const-string v0, "COMPANY_CODE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->mGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;->setCOMPANY_CODE(Ljava/lang/String;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v0, "BANK_GRNT_NO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->mGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;->setBANK_GRNT_NO(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "BANK_GRNT_DATE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->mGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;->setBANK_GRNT_DATE(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    const-string v0, "REFUNDAMOUNT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->mGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;->setREFUNDAMOUNT(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_4
    const-string v0, "BANKNAME"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->mGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    iget-object v1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;->setBANKNAME(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_5
    const-string v0, "Table"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->mGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getmArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->mArrayList:Ljava/util/ArrayList;

    .line 30
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
    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->currentElement:Ljava/lang/Boolean;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->currentValue:Ljava/lang/String;

    .line 39
    const-string v0, "Table"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;->mGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    .line 42
    :cond_0
    return-void
.end method
