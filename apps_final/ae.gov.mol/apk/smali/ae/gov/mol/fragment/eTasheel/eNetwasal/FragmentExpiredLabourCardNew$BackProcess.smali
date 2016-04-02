.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentExpiredLabourCardNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackProcess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mResultResponse:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;)V
    .locals 1

    .prologue
    .line 286
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 289
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, "isBreak":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v8, 0x3

    if-lt v1, v8, :cond_1

    .line 368
    :cond_0
    :goto_1
    const/4 v8, 0x0

    return-object v8

    .line 301
    :cond_1
    if-nez v1, :cond_6

    .line 302
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    const/4 v9, 0x0

    iput v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiryStatus:I

    .line 308
    :cond_2
    :goto_2
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v9, v9, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v9}, Lae/gov/mol/MolApplication;->getTasheelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v10, v10, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mStrCompanyNo:Ljava/lang/String;

    iget-object v11, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget v11, v11, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiryStatus:I

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_ENG_ARB()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lae/gov/mol/webservices/WebServiceResponse;->getExpiryLabourCardList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 310
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-static {v8}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 316
    .local v6, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 317
    .local v5, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 318
    .local v7, "xr":Lorg/xml/sax/XMLReader;
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    new-instance v9, Lae/gov/xmlhandler/ExpiredLabourCardListHandler;

    invoke-direct {v9}, Lae/gov/xmlhandler/ExpiredLabourCardListHandler;-><init>()V

    iput-object v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiredLabourCardListHandler:Lae/gov/xmlhandler/ExpiredLabourCardListHandler;

    .line 319
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiredLabourCardListHandler:Lae/gov/xmlhandler/ExpiredLabourCardListHandler;

    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 320
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 321
    .local v2, "inputSource":Lorg/xml/sax/InputSource;
    const-string v8, "UTF-8"

    invoke-virtual {v2, v8}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 322
    new-instance v8, Ljava/io/StringReader;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 323
    invoke-interface {v7, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 324
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v9, v9, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiredLabourCardListHandler:Lae/gov/xmlhandler/ExpiredLabourCardListHandler;

    invoke-virtual {v9}, Lae/gov/xmlhandler/ExpiredLabourCardListHandler;->getmExpiredLabourCardListVos()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiredLabourCardListVos:Ljava/util/ArrayList;

    .line 327
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 328
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 329
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    new-instance v9, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;

    invoke-direct {v9}, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;-><init>()V

    iput-object v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpired_LabourCard_Info_Handler:Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;

    .line 330
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpired_LabourCard_Info_Handler:Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;

    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 331
    new-instance v2, Lorg/xml/sax/InputSource;

    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 332
    .restart local v2    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v8, "UTF-8"

    invoke-virtual {v2, v8}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 333
    new-instance v8, Ljava/io/StringReader;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 334
    invoke-interface {v7, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 335
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v9, v9, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpired_LabourCard_Info_Handler:Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;

    invoke-virtual {v9}, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->getmExpiredCard_infoVo()Lae/gov/mol/vo/ExpiredCard_infoVo;

    move-result-object v9

    iput-object v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    .line 336
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->isDataRecieved:Z

    .line 339
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiredLabourCardListVos:Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    .line 340
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiredLabourCardListVos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 341
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v9, v9, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v9

    invoke-static {v8, v9}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V

    .line 345
    :cond_3
    :goto_3
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiredLabourCardListVos:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    .line 346
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiredLabourCardListVos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 347
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiredLabourCardListVos:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v8}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getCardNumber()Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, "mCardNumber":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 349
    const-string v4, ""

    .line 351
    :cond_4
    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_9

    .line 352
    const/4 v3, 0x0

    .line 363
    .end local v4    # "mCardNumber":Ljava/lang/String;
    :cond_5
    :goto_4
    if-nez v3, :cond_0

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 303
    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v7    # "xr":Lorg/xml/sax/XMLReader;
    :cond_6
    const/4 v8, 0x1

    if-ne v1, v8, :cond_7

    .line 304
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    const/4 v9, 0x2

    iput v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiryStatus:I

    goto/16 :goto_2

    .line 305
    :cond_7
    const/4 v8, 0x2

    if-ne v1, v8, :cond_2

    .line 306
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    const/4 v9, 0x3

    iput v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiryStatus:I

    goto/16 :goto_2

    .line 344
    .restart local v2    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v6    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v7    # "xr":Lorg/xml/sax/XMLReader;
    :cond_8
    :try_start_1
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v9, v9, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v9

    invoke-static {v8, v9}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 359
    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v7    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v4    # "mCardNumber":Ljava/lang/String;
    .restart local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v7    # "xr":Lorg/xml/sax/XMLReader;
    :cond_9
    const/4 v3, 0x1

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v4, 0x7f090239

    const v3, 0x7f090137

    const v7, 0x7f09019f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 372
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 375
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v1}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v1

    if-nez v1, :cond_2

    .line 376
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 377
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    const v3, 0x7f090099

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 433
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v1, v1, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v1, :cond_3

    .line 379
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-virtual {v2, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 380
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-virtual {v2, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 382
    :cond_3
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v1, v1, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v1, :cond_4

    .line 383
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 384
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    const v3, 0x7f09009a

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 387
    :cond_4
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiredLabourCardListVos:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 388
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiredLabourCardListVos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 389
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiredLabourCardListVos:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "mCardNumber":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 391
    const-string v0, ""

    .line 394
    :cond_5
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 395
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mStrCompanyNo:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 397
    :cond_6
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    .line 398
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiredLabourCardListVos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->sort(Ljava/util/ArrayList;)V

    .line 399
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$ListBaseAdapter;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;)V

    iput-object v2, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$ListBaseAdapter;

    .line 400
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$ListBaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 401
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mExpiryStatus:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 403
    :pswitch_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->showExpireMoreThan60()V

    goto/16 :goto_1

    .line 407
    :pswitch_2
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->showExpireLessThan60()V

    goto/16 :goto_1

    .line 411
    :pswitch_3
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->showExpiringIn60()V

    goto/16 :goto_1

    .line 420
    .end local v0    # "mCardNumber":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 421
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 423
    :cond_8
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mStrCompanyNo:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 426
    :cond_9
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 427
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 429
    :cond_a
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mStrCompanyNo:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 292
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardNew;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 293
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 294
    return-void
.end method
