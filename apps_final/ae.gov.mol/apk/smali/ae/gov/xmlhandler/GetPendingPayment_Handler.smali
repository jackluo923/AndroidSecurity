.class public Lae/gov/xmlhandler/GetPendingPayment_Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GetPendingPayment_Handler.java"


# instance fields
.field private IsElementOpen:Ljava/lang/Boolean;

.field private mBankGuaranteeDetails:Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;

.field private mCurrentElementValue:Ljava/lang/String;

.field private mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

.field private mEnq_GetPendingPayments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/Enq_GetPendingPayment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->IsElementOpen:Ljava/lang/Boolean;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayments:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 33
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->IsElementOpen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    .line 36
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
    .line 41
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->IsElementOpen:Ljava/lang/Boolean;

    .line 44
    const-string v0, "EMP_COM_COMPANY_CODE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    iget-object v1, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->setEMP_COM_COMPANY_CODE(Ljava/lang/String;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v0, "COM_NAME_ENG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    iget-object v1, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->setCOM_NAME_ENG(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    const-string v0, "COM_NAME_ARB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    iget-object v1, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->setCOM_NAME_ARB(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_3
    const-string v0, "TRANS_NO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    iget-object v1, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->setTRANS_NO(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_4
    const-string v0, "PER_NAME_ENG"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    iget-object v1, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->setPER_NAME_ENG(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_5
    const-string v0, "PER_NAME_ARB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    iget-object v1, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->setPER_NAME_ARB(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_6
    const-string v0, "WPDESCE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    iget-object v1, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->setWPDESCE(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_7
    const-string v0, "WPDESCA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 59
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    iget-object v1, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->setWPDESCA(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_8
    const-string v0, "PAYCARD_NO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    iget-object v1, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->setPAYCARD_NO(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_9
    const-string v0, "EMP_CARD_NO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 63
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    iget-object v1, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->setEMP_CARD_NO(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    :cond_a
    const-string v0, "EMP_CARD_EXPIRY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    iget-object v1, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->setEMP_CARD_EXPIRY(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :cond_b
    const-string v0, "Table"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 67
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayments:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :cond_c
    const-string v0, "BankGuaranteeDetails"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mBankGuaranteeDetails:Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;

    iget-object v1, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;->setBankGuaranteeDetails(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getmBankGuaranteeDetails()Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mBankGuaranteeDetails:Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;

    return-object v0
.end method

.method public getmEnq_GetPendingPayments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/Enq_GetPendingPayment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayments:Ljava/util/ArrayList;

    return-object v0
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
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 77
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->IsElementOpen:Ljava/lang/Boolean;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mCurrentElementValue:Ljava/lang/String;

    .line 79
    const-string v0, "Table"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetPendingPayment;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v0, "BankGuaranteeDetails"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;->getInstance()Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetPendingPayment_Handler;->mBankGuaranteeDetails:Lae/gov/mol/vo/Enq_GetPendingPayment$BankGuaranteeDetails;

    goto :goto_0
.end method
