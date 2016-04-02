.class public Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RemovePendingPaymentResponseHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field mRemovePendingPaymentResponseVo:Lae/gov/mol/vo/RemovePendingPaymentResponseVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->currentElement:Ljava/lang/Boolean;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->currentValue:Ljava/lang/String;

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
    .line 63
    iget-object v0, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->currentValue:Ljava/lang/String;

    .line 66
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

    iput-object v0, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->currentElement:Ljava/lang/Boolean;

    .line 49
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->mRemovePendingPaymentResponseVo:Lae/gov/mol/vo/RemovePendingPaymentResponseVo;

    iget-object v1, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->setStatus(Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v0, "Result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->mRemovePendingPaymentResponseVo:Lae/gov/mol/vo/RemovePendingPaymentResponseVo;

    iget-object v1, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->setResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getmRemovePendingPaymentResponseVo()Lae/gov/mol/vo/RemovePendingPaymentResponseVo;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->mRemovePendingPaymentResponseVo:Lae/gov/mol/vo/RemovePendingPaymentResponseVo;

    return-object v0
.end method

.method public setmRemovePendingPaymentResponseVo(Lae/gov/mol/vo/RemovePendingPaymentResponseVo;)V
    .locals 0
    .param p1, "mRemovePendingPaymentResponseVo"    # Lae/gov/mol/vo/RemovePendingPaymentResponseVo;

    .prologue
    .line 22
    iput-object p1, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->mRemovePendingPaymentResponseVo:Lae/gov/mol/vo/RemovePendingPaymentResponseVo;

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
    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->currentElement:Ljava/lang/Boolean;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->currentValue:Ljava/lang/String;

    .line 37
    const-string v0, "NewDataSet"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;

    invoke-direct {v0}, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->mRemovePendingPaymentResponseVo:Lae/gov/mol/vo/RemovePendingPaymentResponseVo;

    .line 41
    :cond_0
    return-void
.end method
