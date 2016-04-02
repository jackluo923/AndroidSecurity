.class public Lae/gov/xmlhandler/BankGuaranteeInfoHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BankGuaranteeInfoHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/BankGuaranteeInfoVo;",
            ">;"
        }
    .end annotation
.end field

.field mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->mArrayList:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->currentElement:Ljava/lang/Boolean;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->currentValue:Ljava/lang/String;

    .line 15
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
    .line 76
    iget-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->currentValue:Ljava/lang/String;

    .line 79
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

    iput-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->currentElement:Ljava/lang/Boolean;

    .line 51
    const-string v0, "COMPANY_CODE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/BankGuaranteeInfoVo;->setCOMPANY_CODE(Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v0, "BANK_GRNT_NO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/BankGuaranteeInfoVo;->setBANK_GRNT_NO(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    const-string v0, "BANK_GRNT_DATE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/BankGuaranteeInfoVo;->setBANK_GRNT_DATE(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_3
    const-string v0, "REFUNDAMOUNT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/BankGuaranteeInfoVo;->setREFUNDAMOUNT(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_4
    const-string v0, "BANKNAME"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

    iget-object v1, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/BankGuaranteeInfoVo;->setBANKNAME(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_5
    const-string v0, "BankGuaranteeInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

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
            "Lae/gov/mol/vo/BankGuaranteeInfoVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/BankGuaranteeInfoVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/BankGuaranteeInfoVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->mArrayList:Ljava/util/ArrayList;

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
    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->currentElement:Ljava/lang/Boolean;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->currentValue:Ljava/lang/String;

    .line 39
    const-string v0, "BankGuaranteeInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lae/gov/mol/vo/BankGuaranteeInfoVo;

    invoke-direct {v0}, Lae/gov/mol/vo/BankGuaranteeInfoVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/BankGuaranteeInfoHandler;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

    .line 42
    :cond_0
    return-void
.end method
