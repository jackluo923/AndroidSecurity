.class public Lae/gov/xmlhandler/MySalaryDetailHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MySalaryDetailHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mSalaryDetailVo:Lae/gov/mol/vo/MySalaryDetailVo;

.field private mSalaryDetailVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MySalaryDetailVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->currentElement:Ljava/lang/Boolean;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->currentValue:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->mSalaryDetailVos:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Lae/gov/mol/vo/MySalaryDetailVo;

    invoke-direct {v0}, Lae/gov/mol/vo/MySalaryDetailVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->mSalaryDetailVo:Lae/gov/mol/vo/MySalaryDetailVo;

    .line 34
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
    .line 81
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->currentValue:Ljava/lang/String;

    .line 84
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
    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->currentElement:Ljava/lang/Boolean;

    .line 55
    const-string v0, "PERIOD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->mSalaryDetailVo:Lae/gov/mol/vo/MySalaryDetailVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryDetailVo;->setPERIOD(Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v0, "FIXEDINCOME"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->mSalaryDetailVo:Lae/gov/mol/vo/MySalaryDetailVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryDetailVo;->setFIXEDINCOME(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    const-string v0, "ALLOWANCES"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->mSalaryDetailVo:Lae/gov/mol/vo/MySalaryDetailVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryDetailVo;->setALLOWANCES(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_3
    const-string v0, "REFUNDAMOUNT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->mSalaryDetailVo:Lae/gov/mol/vo/MySalaryDetailVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryDetailVo;->setREFUNDAMOUNT(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_4
    const-string v0, "AMOUNT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->mSalaryDetailVo:Lae/gov/mol/vo/MySalaryDetailVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryDetailVo;->setAMOUNT(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_5
    const-string v0, "SalaryDetails"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->mSalaryDetailVos:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->mSalaryDetailVo:Lae/gov/mol/vo/MySalaryDetailVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getmSalaryDetailVos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MySalaryDetailVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->mSalaryDetailVos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmSalaryDetailVos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MySalaryDetailVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "mSalaryDetailVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MySalaryDetailVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->mSalaryDetailVos:Ljava/util/ArrayList;

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
    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->currentElement:Ljava/lang/Boolean;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->currentValue:Ljava/lang/String;

    .line 43
    const-string v0, "SalaryDetails"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lae/gov/mol/vo/MySalaryDetailVo;

    invoke-direct {v0}, Lae/gov/mol/vo/MySalaryDetailVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryDetailHandler;->mSalaryDetailVo:Lae/gov/mol/vo/MySalaryDetailVo;

    .line 46
    :cond_0
    return-void
.end method
