.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Fragment_Inquiry_Get_EQuotaStatusByTransNo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemXMLHandler"
.end annotation


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentTag:Ljava/lang/String;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;)V
    .locals 1

    .prologue
    .line 265
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 267
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 268
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentTag:Ljava/lang/String;

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
    .line 292
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 296
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "QUOTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;->isDataRecieved:Z

    .line 300
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "Transaction_Number"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;->strTransaction_x0020_Number:Ljava/lang/String;

    .line 320
    :cond_2
    :goto_0
    return-void

    .line 302
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "Company_Code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;->strCompany_x0020_Code:Ljava/lang/String;

    goto :goto_0

    .line 305
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "Job_Code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 306
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;->strJob_x0020_Code:Ljava/lang/String;

    goto :goto_0

    .line 307
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "job_desc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 308
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;->strDescription:Ljava/lang/String;

    goto :goto_0

    .line 309
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "GENDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 310
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;->strGENDER:Ljava/lang/String;

    goto :goto_0

    .line 311
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "Requested"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 312
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;->strRequested:Ljava/lang/String;

    goto :goto_0

    .line 313
    :cond_8
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "Approved"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 314
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;->strApproved:Ljava/lang/String;

    goto :goto_0

    .line 315
    :cond_9
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "Used"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 316
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;->strUsed:Ljava/lang/String;

    goto :goto_0

    .line 317
    :cond_a
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "Cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo;->strCancelled:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 285
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
    .line 276
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 277
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 278
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EQuotaStatusByTransNo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    .line 279
    return-void
.end method
