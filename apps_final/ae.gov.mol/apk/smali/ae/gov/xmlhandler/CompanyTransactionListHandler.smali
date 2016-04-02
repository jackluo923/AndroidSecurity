.class public Lae/gov/xmlhandler/CompanyTransactionListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "CompanyTransactionListHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyTransactionList;",
            ">;"
        }
    .end annotation
.end field

.field mCompanyTransactionList:Lae/gov/mol/vo/CompanyTransactionList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentElement:Ljava/lang/Boolean;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mArrayList:Ljava/util/ArrayList;

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
    .line 89
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

    .line 92
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

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentElement:Ljava/lang/Boolean;

    .line 49
    const-string v0, "TransactionNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mCompanyTransactionList:Lae/gov/mol/vo/CompanyTransactionList;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyTransactionList;->setTransactionNumber(Ljava/lang/String;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v0, "SubmitDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mCompanyTransactionList:Lae/gov/mol/vo/CompanyTransactionList;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyTransactionList;->setSubmitDate(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v0, "TransactionType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mCompanyTransactionList:Lae/gov/mol/vo/CompanyTransactionList;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyTransactionList;->setTransactionType(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_3
    const-string v0, "TransactionTypeEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mCompanyTransactionList:Lae/gov/mol/vo/CompanyTransactionList;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyTransactionList;->setTransactionTypeEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_4
    const-string v0, "TransactionTypeArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mCompanyTransactionList:Lae/gov/mol/vo/CompanyTransactionList;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyTransactionList;->setTransactionTypeArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_5
    const-string v0, "LabourOfficeCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mCompanyTransactionList:Lae/gov/mol/vo/CompanyTransactionList;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyTransactionList;->setLabourOfficeCode(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_6
    const-string v0, "LabourOfficeArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 68
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mCompanyTransactionList:Lae/gov/mol/vo/CompanyTransactionList;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyTransactionList;->setLabourOfficeArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_7
    const-string v0, "LabourOfficeEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mCompanyTransactionList:Lae/gov/mol/vo/CompanyTransactionList;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyTransactionList;->setLabourOfficeEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_8
    const-string v0, "StatusEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 74
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mCompanyTransactionList:Lae/gov/mol/vo/CompanyTransactionList;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyTransactionList;->setStatusEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_9
    const-string v0, "StatusArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 77
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mCompanyTransactionList:Lae/gov/mol/vo/CompanyTransactionList;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/CompanyTransactionList;->setStatusArabic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_a
    const-string v0, "CompanyTransactionList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mCompanyTransactionList:Lae/gov/mol/vo/CompanyTransactionList;

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
            "Lae/gov/mol/vo/CompanyTransactionList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyTransactionList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/CompanyTransactionList;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mArrayList:Ljava/util/ArrayList;

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

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentElement:Ljava/lang/Boolean;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->currentValue:Ljava/lang/String;

    .line 37
    const-string v0, "CompanyTransactionList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lae/gov/mol/vo/CompanyTransactionList;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyTransactionList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/CompanyTransactionListHandler;->mCompanyTransactionList:Lae/gov/mol/vo/CompanyTransactionList;

    .line 40
    :cond_0
    return-void
.end method
