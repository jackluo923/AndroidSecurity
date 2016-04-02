.class public Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Fragment_SpecificLabour_CardInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;)V
    .locals 1

    .prologue
    .line 317
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 319
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 320
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 321
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

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
    .line 346
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 349
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "LaborCard_Info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->isDataRecieved:Z

    .line 351
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "emp_card_no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_no:Ljava/lang/String;

    .line 401
    :cond_2
    :goto_0
    return-void

    .line 353
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "emp_card_issue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 354
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_issue:Ljava/lang/String;

    goto :goto_0

    .line 355
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "emp_card_expiry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 356
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_expiry:Ljava/lang/String;

    goto :goto_0

    .line 357
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "desc_arabic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 358
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrdesc_arabic:Ljava/lang/String;

    goto :goto_0

    .line 359
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "per_name_eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 360
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_name_eng:Ljava/lang/String;

    goto :goto_0

    .line 361
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "per_name_arb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 362
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_name_arb:Ljava/lang/String;

    goto :goto_0

    .line 363
    :cond_8
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "per_passport_no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 364
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_passport_no:Ljava/lang/String;

    goto :goto_0

    .line 365
    :cond_9
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "per_passport_exp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 366
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_passport_exp:Ljava/lang/String;

    goto :goto_0

    .line 367
    :cond_a
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "nationality_eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 368
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrnationality_eng:Ljava/lang/String;

    goto/16 :goto_0

    .line 369
    :cond_b
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "nationality_arb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 370
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrnationality_arb:Ljava/lang/String;

    goto/16 :goto_0

    .line 371
    :cond_c
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "emp_com_company_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 372
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_com_company_code:Ljava/lang/String;

    goto/16 :goto_0

    .line 373
    :cond_d
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "com_name_eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 374
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrcom_name_eng:Ljava/lang/String;

    goto/16 :goto_0

    .line 375
    :cond_e
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "com_name_arb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 376
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrcom_name_arb:Ljava/lang/String;

    goto/16 :goto_0

    .line 377
    :cond_f
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "COM_LICENSE_NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 378
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrCOM_LICENSE_NO:Ljava/lang/String;

    goto/16 :goto_0

    .line 379
    :cond_10
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "COM_LICENSE_END"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 380
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrCOM_LICENSE_END:Ljava/lang/String;

    goto/16 :goto_0

    .line 381
    :cond_11
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "Card_x0020_Status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 382
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrCard_x0020_Status:Ljava/lang/String;

    goto/16 :goto_0

    .line 383
    :cond_12
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "office_name_arb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 384
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstroffice_name_arb:Ljava/lang/String;

    goto/16 :goto_0

    .line 385
    :cond_13
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "office_name_eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 386
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstroffice_name_eng:Ljava/lang/String;

    goto/16 :goto_0

    .line 387
    :cond_14
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "job_name_a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 388
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrjob_name_a:Ljava/lang/String;

    goto/16 :goto_0

    .line 389
    :cond_15
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "job_name_e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 390
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrjob_name_e:Ljava/lang/String;

    goto/16 :goto_0

    .line 391
    :cond_16
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "trans_no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 392
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrtrans_no:Ljava/lang/String;

    goto/16 :goto_0

    .line 393
    :cond_17
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "Balagh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 394
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrBalagh:Ljava/lang/String;

    goto/16 :goto_0

    .line 395
    :cond_18
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "percode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 396
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrpercode:Ljava/lang/String;

    goto/16 :goto_0

    .line 397
    :cond_19
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "card_type_arb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 398
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrcard_type_arb:Ljava/lang/String;

    goto/16 :goto_0

    .line 399
    :cond_1a
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    const-string v1, "card_type_eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrcard_type_eng:Ljava/lang/String;

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
    .line 338
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 339
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
    .line 328
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 329
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 330
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;->currentTag:Ljava/lang/String;

    .line 331
    return-void
.end method
