.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Fragment_Inquiry_LaborCard_Information.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;)V
    .locals 1

    .prologue
    .line 330
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 331
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 332
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 333
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

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
    .line 356
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 359
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "CardInformation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->isDataRecieved:Z

    .line 362
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "CardNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strCardNumber:Ljava/lang/String;

    .line 426
    :cond_2
    :goto_0
    return-void

    .line 364
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "CardTypeE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 365
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strCardTypeE:Ljava/lang/String;

    goto :goto_0

    .line 366
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "CardType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 367
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strCardTypeA:Ljava/lang/String;

    goto :goto_0

    .line 368
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "CardExpiryDate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 369
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strCardExpiryDate:Ljava/lang/String;

    goto :goto_0

    .line 370
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "CardIssueDate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 371
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strCardIssueDate:Ljava/lang/String;

    goto :goto_0

    .line 372
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "PersonNameArabic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 373
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strPersonNameArabic:Ljava/lang/String;

    goto :goto_0

    .line 374
    :cond_8
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "PersonNameEnglish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 375
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strPersonNameEnglish:Ljava/lang/String;

    goto :goto_0

    .line 376
    :cond_9
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "SEX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 377
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strSEX:Ljava/lang/String;

    goto :goto_0

    .line 378
    :cond_a
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "nationality_arb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 379
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strnationality_arb:Ljava/lang/String;

    goto/16 :goto_0

    .line 380
    :cond_b
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "Nationality"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 381
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strNationality:Ljava/lang/String;

    goto/16 :goto_0

    .line 382
    :cond_c
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "NationalityCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 383
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strNationalityCode:Ljava/lang/String;

    goto/16 :goto_0

    .line 384
    :cond_d
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "NationalityCodeIm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 385
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strNationalityCodeIm:Ljava/lang/String;

    goto/16 :goto_0

    .line 386
    :cond_e
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "PassportNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 387
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strPassportNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 388
    :cond_f
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "PassportExpiryDate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 389
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strPassportExpiryDate:Ljava/lang/String;

    goto/16 :goto_0

    .line 390
    :cond_10
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "BirthCountry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 391
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strBirthCountry:Ljava/lang/String;

    goto/16 :goto_0

    .line 392
    :cond_11
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "BirthDate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 393
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strBirthDate:Ljava/lang/String;

    goto/16 :goto_0

    .line 394
    :cond_12
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "BirthPlaceEng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 395
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strBirthPlaceEng:Ljava/lang/String;

    goto/16 :goto_0

    .line 396
    :cond_13
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "BirthPlaceArb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 397
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strBirthPlaceArb:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :cond_14
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "PassportPlaceEng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 399
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strPassportPlaceEng:Ljava/lang/String;

    goto/16 :goto_0

    .line 400
    :cond_15
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "PassportPlaceArb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 401
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strPassportPlaceArb:Ljava/lang/String;

    goto/16 :goto_0

    .line 402
    :cond_16
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "CardTypeCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 403
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strCardTypeCode:Ljava/lang/String;

    goto/16 :goto_0

    .line 404
    :cond_17
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "companyCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 405
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strcompanyCode:Ljava/lang/String;

    goto/16 :goto_0

    .line 406
    :cond_18
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "cardStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 407
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strcardStatus:Ljava/lang/String;

    goto/16 :goto_0

    .line 408
    :cond_19
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "comNameArb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 409
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strcomNameArb:Ljava/lang/String;

    goto/16 :goto_0

    .line 410
    :cond_1a
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "comNameEng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 411
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strcomNameEng:Ljava/lang/String;

    goto/16 :goto_0

    .line 412
    :cond_1b
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "comCategory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 413
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strcomCategory:Ljava/lang/String;

    goto/16 :goto_0

    .line 414
    :cond_1c
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "job_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 415
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strjob_code:Ljava/lang/String;

    goto/16 :goto_0

    .line 416
    :cond_1d
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "license"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 417
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strlicense:Ljava/lang/String;

    goto/16 :goto_0

    .line 418
    :cond_1e
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "PersonClassificationEng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 419
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strClassificationEng:Ljava/lang/String;

    goto/16 :goto_0

    .line 420
    :cond_1f
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "PersonClassificationArb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 421
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strClassificationArb:Ljava/lang/String;

    goto/16 :goto_0

    .line 422
    :cond_20
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "Gender_Eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 423
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strGenEng:Ljava/lang/String;

    goto/16 :goto_0

    .line 424
    :cond_21
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "Gender_Arb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strGenArb:Ljava/lang/String;

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
    .line 348
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 349
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
    .line 338
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 339
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 340
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;->currentTag:Ljava/lang/String;

    .line 341
    return-void
.end method
