.class public Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ErrorHandlerandForgotPassWordHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;


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

    iput-object v0, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->currentElement:Ljava/lang/Boolean;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->currentValue:Ljava/lang/String;

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
    .line 66
    iget-object v0, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->currentValue:Ljava/lang/String;

    .line 69
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

    iput-object v0, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->currentElement:Ljava/lang/Boolean;

    .line 48
    const-string v0, "Result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->setResult(Ljava/lang/String;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->setStatus(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getmErrorHandlerVo()Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method

.method public setmErrorHandlerVo(Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0
    .param p1, "mErrorHandlerVo"    # Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    .prologue
    .line 25
    iput-object p1, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

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

    iput-object v0, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->currentElement:Ljava/lang/Boolean;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->currentValue:Ljava/lang/String;

    .line 35
    const-string v0, "errResult"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SalaryInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BankGuaranteeInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    new-instance v0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    .line 38
    :cond_1
    return-void
.end method
