.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentExpiredLabourCardListPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;
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
.field mPersonPhoto:Ljava/lang/String;

.field mResultResponse:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)V
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->mPersonPhoto:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 208
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v8, 0x3

    if-lt v1, v8, :cond_0

    .line 281
    const/4 v8, 0x0

    return-object v8

    .line 209
    :cond_0
    if-nez v1, :cond_5

    .line 210
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    const/4 v9, 0x0

    iput v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiryStatus:I

    .line 216
    :cond_1
    :goto_1
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v9, v9, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v9}, Lae/gov/mol/MolApplication;->getTasheelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v10, v10, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mStrCompanyNo:Ljava/lang/String;

    iget-object v11, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget v11, v11, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiryStatus:I

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_ENG_ARB()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lae/gov/mol/webservices/WebServiceResponse;->getExpiryLabourCardList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 219
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 223
    .local v6, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 224
    .local v5, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 225
    .local v7, "xr":Lorg/xml/sax/XMLReader;
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    new-instance v9, Lae/gov/xmlhandler/ExpiredLabourCardListHandler;

    invoke-direct {v9}, Lae/gov/xmlhandler/ExpiredLabourCardListHandler;-><init>()V

    iput-object v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListHandler:Lae/gov/xmlhandler/ExpiredLabourCardListHandler;

    .line 226
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListHandler:Lae/gov/xmlhandler/ExpiredLabourCardListHandler;

    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 227
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 228
    .local v2, "inputSource":Lorg/xml/sax/InputSource;
    const-string v8, "UTF-8"

    invoke-virtual {v2, v8}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 229
    new-instance v8, Ljava/io/StringReader;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 230
    invoke-interface {v7, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 231
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListHandler:Lae/gov/xmlhandler/ExpiredLabourCardListHandler;

    invoke-virtual {v8}, Lae/gov/xmlhandler/ExpiredLabourCardListHandler;->getmExpiredLabourCardListVos()Ljava/util/ArrayList;

    move-result-object v4

    .line 234
    .local v4, "mExpiredLabourCardListVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ExpiredLabourCardListVo;>;"
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 235
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 236
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    new-instance v9, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;

    invoke-direct {v9}, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;-><init>()V

    iput-object v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpired_LabourCard_Info_Handler:Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;

    .line 237
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpired_LabourCard_Info_Handler:Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;

    invoke-interface {v7, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 238
    new-instance v2, Lorg/xml/sax/InputSource;

    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 239
    .restart local v2    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v8, "UTF-8"

    invoke-virtual {v2, v8}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 240
    new-instance v8, Ljava/io/StringReader;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 241
    invoke-interface {v7, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 242
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v9, v9, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpired_LabourCard_Info_Handler:Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;

    invoke-virtual {v9}, Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;->getmExpiredCard_infoVo()Lae/gov/mol/vo/ExpiredCard_infoVo;

    move-result-object v9

    iput-object v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    .line 243
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->isDataRecieved:Z

    .line 246
    if-eqz v4, :cond_7

    .line 247
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_2

    .line 248
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v9, v9, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v9

    invoke-static {v8, v9}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V

    .line 253
    :cond_2
    :goto_2
    if-eqz v4, :cond_4

    .line 254
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 255
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v8}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getCardNumber()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "mCardNumber":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 257
    const-string v3, ""

    .line 259
    :cond_3
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 260
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    invoke-virtual {v8, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->sort(Ljava/util/ArrayList;)V

    .line 261
    if-nez v1, :cond_8

    .line 262
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_0:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 263
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v9, v9, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iput-object v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo_0:Lae/gov/mol/vo/ExpiredCard_infoVo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v3    # "mCardNumber":Ljava/lang/String;
    .end local v4    # "mExpiredLabourCardListVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ExpiredLabourCardListVo;>;"
    .end local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v7    # "xr":Lorg/xml/sax/XMLReader;
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 211
    .end local v6    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :cond_5
    const/4 v8, 0x1

    if-ne v1, v8, :cond_6

    .line 212
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    const/4 v9, 0x2

    iput v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiryStatus:I

    goto/16 :goto_1

    .line 213
    :cond_6
    const/4 v8, 0x2

    if-ne v1, v8, :cond_1

    .line 214
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    const/4 v9, 0x3

    iput v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiryStatus:I

    goto/16 :goto_1

    .line 251
    .restart local v2    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v4    # "mExpiredLabourCardListVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ExpiredLabourCardListVo;>;"
    .restart local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v6    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v7    # "xr":Lorg/xml/sax/XMLReader;
    :cond_7
    :try_start_1
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v9, v9, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v10, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v9

    invoke-static {v8, v9}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 275
    .end local v2    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v4    # "mExpiredLabourCardListVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ExpiredLabourCardListVo;>;"
    .end local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v7    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v3    # "mCardNumber":Ljava/lang/String;
    .restart local v4    # "mExpiredLabourCardListVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ExpiredLabourCardListVo;>;"
    .restart local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v7    # "xr":Lorg/xml/sax/XMLReader;
    :cond_8
    const/4 v8, 0x1

    if-ne v1, v8, :cond_9

    .line 265
    :try_start_2
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_2:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 266
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v9, v9, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iput-object v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo_2:Lae/gov/mol/vo/ExpiredCard_infoVo;

    goto :goto_3

    .line 267
    :cond_9
    const/4 v8, 0x2

    if-ne v1, v8, :cond_4

    .line 268
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_3:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 269
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v9, v9, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    iput-object v9, v8, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo_3:Lae/gov/mol/vo/ExpiredCard_infoVo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 285
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 288
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v1}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v1

    if-nez v1, :cond_3

    .line 289
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v6, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 290
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    const v3, 0x7f090099

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 327
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    :cond_3
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v1, v1, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v1, :cond_4

    .line 292
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    invoke-virtual {v2, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 293
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    invoke-virtual {v2, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v6, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 295
    :cond_4
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v1, v1, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v1, :cond_5

    .line 296
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v6, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 297
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    const v3, 0x7f09009a

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 300
    :cond_5
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_0:Ljava/util/ArrayList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo_0:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v1, v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->updateView(Ljava/util/ArrayList;Lae/gov/mol/vo/ExpiredCard_infoVo;)V

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "mCount":I
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_0:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo_0:Lae/gov/mol/vo/ExpiredCard_infoVo;

    if-eqz v1, :cond_6

    .line 304
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 305
    add-int/lit8 v0, v0, 0x1

    .line 309
    :cond_6
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_2:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo_2:Lae/gov/mol/vo/ExpiredCard_infoVo;

    if-eqz v1, :cond_7

    .line 310
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_2:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 311
    add-int/lit8 v0, v0, 0x1

    .line 314
    :cond_7
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_3:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo_3:Lae/gov/mol/vo/ExpiredCard_infoVo;

    if-eqz v1, :cond_8

    .line 315
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 316
    add-int/lit8 v0, v0, 0x1

    .line 320
    :cond_8
    if-gtz v0, :cond_2

    .line 321
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 322
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v6, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 324
    :cond_9
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    const v3, 0x7f09019f

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mStrCompanyNo:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v6, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 202
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 203
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 204
    return-void
.end method
