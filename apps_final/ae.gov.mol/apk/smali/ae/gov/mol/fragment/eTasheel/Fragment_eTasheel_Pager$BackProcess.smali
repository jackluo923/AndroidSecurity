.class Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_eTasheel_Pager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackProcess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/content/Context;)V
    .locals 0
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 356
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 357
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->mContext:Landroid/content/Context;

    .line 358
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 368
    new-instance v6, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v11, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    .line 369
    .local v6, "mWebServiceResponse":Lae/gov/mol/webservices/WebServiceResponse;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v11, p1

    if-lt v1, v11, :cond_0

    .line 437
    const/4 v11, 0x0

    return-object v11

    .line 370
    :cond_0
    const-string v5, ""

    .line 371
    .local v5, "mResultResponse":Ljava/lang/String;
    aget-object v3, p1, v1

    .line 372
    .local v3, "integer":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 369
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    :pswitch_1
    iget-object v11, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iget-object v11, v11, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    if-eqz v11, :cond_1

    .line 377
    iget-object v11, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iget-object v11, v11, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v11}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYCODE()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lae/gov/mol/MolApplication;->getTasheelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v11, v12, v13}, Lae/gov/mol/webservices/WebServiceResponse;->getRecentTranscation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v9

    .line 380
    .local v9, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v8

    .line 381
    .local v8, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v10

    .line 382
    .local v10, "xr":Lorg/xml/sax/XMLReader;
    new-instance v7, Lae/gov/xmlhandler/ItemXMLHandler;

    invoke-direct {v7}, Lae/gov/xmlhandler/ItemXMLHandler;-><init>()V

    .line 383
    .local v7, "myXMLHandler":Lae/gov/xmlhandler/ItemXMLHandler;
    invoke-interface {v10, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 384
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 385
    .local v2, "inputSource":Lorg/xml/sax/InputSource;
    const-string v11, "UTF-8"

    invoke-virtual {v2, v11}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 386
    new-instance v11, Ljava/io/StringReader;

    invoke-direct {v11, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 387
    invoke-interface {v10, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 388
    iget-object v11, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-virtual {v7}, Lae/gov/xmlhandler/ItemXMLHandler;->getRecentTransactionlist()Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v11, v12}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$4(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Ljava/util/ArrayList;)V

    .line 389
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mRecentTransactionsdatas:Ljava/util/ArrayList;
    invoke-static {v13}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$5(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Ljava/util/ArrayList;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 391
    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v7    # "myXMLHandler":Lae/gov/xmlhandler/ItemXMLHandler;
    .end local v8    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v10    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :pswitch_2
    iget-object v11, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lae/gov/mol/MolApplication;->getTasheelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_ENG_ARB()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lae/gov/mol/webservices/WebServiceResponse;->getPendingTranscation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 402
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v9

    .line 405
    .restart local v9    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_1
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v8

    .line 406
    .restart local v8    # "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v10

    .line 407
    .restart local v10    # "xr":Lorg/xml/sax/XMLReader;
    new-instance v4, Lae/gov/xmlhandler/PendingTransactionHandler;

    invoke-direct {v4}, Lae/gov/xmlhandler/PendingTransactionHandler;-><init>()V

    .line 408
    .local v4, "mPendingTransactionHandler":Lae/gov/xmlhandler/PendingTransactionHandler;
    invoke-interface {v10, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 409
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 410
    .restart local v2    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v11, "UTF-8"

    invoke-virtual {v2, v11}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 411
    new-instance v11, Ljava/io/StringReader;

    invoke-direct {v11, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 412
    invoke-interface {v10, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 413
    iget-object v11, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-virtual {v4}, Lae/gov/xmlhandler/PendingTransactionHandler;->getmPendingTransactionsdatas()Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v11, v12}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$6(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Ljava/util/ArrayList;)V

    .line 414
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPendingTransactionsdatas:Ljava/util/ArrayList;
    invoke-static {v13}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$7(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Ljava/util/ArrayList;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 416
    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v4    # "mPendingTransactionHandler":Lae/gov/xmlhandler/PendingTransactionHandler;
    .end local v8    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v10    # "xr":Lorg/xml/sax/XMLReader;
    :catch_1
    move-exception v0

    .line 418
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 424
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :pswitch_3
    iget-object v12, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iget-object v11, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$8(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v11

    iget-object v13, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;
    invoke-static {v13}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$9(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/vo/AlleServicesData;

    move-result-object v13

    invoke-virtual {v11, v13}, Lae/gov/mol/helper/PostParseGet;->getAllService(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lae/gov/mol/vo/AlleServicesData;

    invoke-static {v12, v11}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$10(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Lae/gov/mol/vo/AlleServicesData;)V

    .line 425
    iget-object v11, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$9(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/vo/AlleServicesData;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 426
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;
    invoke-static {v13}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$9(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/vo/AlleServicesData;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 460
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 462
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$8(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v0

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 469
    :cond_1
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Recent_Transactions:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mRecentTransactionsdatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$5(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->updateView(Ljava/util/ArrayList;)V

    .line 470
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Pending_Transaction:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPendingTransactionsdatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$7(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->updateView(Ljava/util/ArrayList;)V

    .line 471
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 472
    return-void

    .line 464
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$8(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v0

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 466
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$8(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v0

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 363
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 364
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 443
    aget-object v1, p1, v2

    instance-of v1, v1, Lae/gov/mol/vo/AlleServicesData;

    if-eqz v1, :cond_1

    .line 444
    aget-object v0, p1, v2

    check-cast v0, Lae/gov/mol/vo/AlleServicesData;

    .line 445
    .local v0, "mAlleServicesData":Lae/gov/mol/vo/AlleServicesData;
    if-eqz v0, :cond_0

    .line 446
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eServices:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    move-result-object v1

    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->updateView(Lae/gov/mol/vo/AlleServicesData;)V

    .line 454
    .end local v0    # "mAlleServicesData":Lae/gov/mol/vo/AlleServicesData;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 455
    return-void

    .line 448
    :cond_1
    aget-object v1, p1, v2

    instance-of v1, v1, Lae/gov/mol/vo/RecentTransactionsdata;

    if-eqz v1, :cond_2

    .line 449
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Recent_Transactions:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mRecentTransactionsdatas:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$5(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->updateView(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 450
    :cond_2
    aget-object v1, p1, v2

    instance-of v1, v1, Lae/gov/mol/vo/PendingTransactionsdata;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Pending_Transaction:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPendingTransactionsdatas:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$7(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->updateView(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
