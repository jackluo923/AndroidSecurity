.class public Lae/gov/xmlhandler/PendingTransactionHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PendingTransactionHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

.field private mPendingTransactionsdatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PendingTransactionsdata;",
            ">;"
        }
    .end annotation
.end field


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

    iput-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentElement:Ljava/lang/Boolean;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentValue:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->mPendingTransactionsdatas:Ljava/util/ArrayList;

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
    .line 95
    iget-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentValue:Ljava/lang/String;

    .line 98
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
    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentElement:Ljava/lang/Boolean;

    .line 59
    const-string v0, "ServiceGroup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 61
    const-string v0, "tranid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    iget-object v1, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PendingTransactionsdata;->setTranid(Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v0, "service_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    iget-object v1, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PendingTransactionsdata;->setService_code(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    const-string v0, "company_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    iget-object v1, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PendingTransactionsdata;->setCompany_code(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_3
    const-string v0, "add_date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    iget-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    iget-object v1, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PendingTransactionsdata;->setAdd_date(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_4
    const-string v0, "service_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    iget-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    iget-object v1, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PendingTransactionsdata;->setService_name(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_5
    const-string v0, "com_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 78
    iget-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    iget-object v1, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PendingTransactionsdata;->setCom_name(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_6
    const-string v0, "PaymentPage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    iget-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    iget-object v1, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PendingTransactionsdata;->setPaymentPage(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_7
    const-string v0, "PendingPayment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->mPendingTransactionsdatas:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getmPendingTransactionsdatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PendingTransactionsdata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->mPendingTransactionsdatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmPendingTransactionsdatas(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PendingTransactionsdata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "mPendingTransactionsdatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/PendingTransactionsdata;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->mPendingTransactionsdatas:Ljava/util/ArrayList;

    .line 36
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
    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentElement:Ljava/lang/Boolean;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->currentValue:Ljava/lang/String;

    .line 46
    const-string v0, "PendingPayment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lae/gov/mol/vo/PendingTransactionsdata;

    invoke-direct {v0}, Lae/gov/mol/vo/PendingTransactionsdata;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/PendingTransactionHandler;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    .line 50
    :cond_0
    return-void
.end method
