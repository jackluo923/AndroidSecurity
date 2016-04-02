.class public Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;
.super Landroid/os/AsyncTask;
.source "Fragment_Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/Fragment_Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackProcessProfile"
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

.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_Home;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/Fragment_Home;)V
    .locals 1

    .prologue
    .line 1268
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1270
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->mResultResponse:Ljava/lang/String;

    .line 1271
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->mPersonPhoto:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1284
    iget-object v7, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    new-instance v8, Lae/gov/mol/vo/ProfileVo;

    invoke-direct {v8}, Lae/gov/mol/vo/ProfileVo;-><init>()V

    iput-object v8, v7, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    .line 1285
    iget-object v8, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v7, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v7, v7, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v9, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v9, v9, Lae/gov/mol/fragment/Fragment_Home;->mStringUserId:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v11, v11, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v7, v9, v10, v11}, Lae/gov/mol/webservices/WebServiceResponse;->getValidateUserProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lae/gov/mol/vo/ProfileVo;

    iput-object v7, v8, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    .line 1286
    iget-object v7, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v7, v7, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v8, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v8, v8, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v8}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lae/gov/mol/webservices/WebServiceResponse;->getPersonPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->mResultResponse:Ljava/lang/String;

    .line 1287
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 1290
    .local v5, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 1291
    .local v4, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    .line 1292
    .local v6, "xr":Lorg/xml/sax/XMLReader;
    new-instance v2, Lae/gov/xmlhandler/GetPersonPhotoResponseHandler;

    invoke-direct {v2}, Lae/gov/xmlhandler/GetPersonPhotoResponseHandler;-><init>()V

    .line 1293
    .local v2, "mGetPersonPhotoResponseHandler":Lae/gov/xmlhandler/GetPersonPhotoResponseHandler;
    invoke-interface {v6, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1294
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 1295
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v7, "UTF-8"

    invoke-virtual {v1, v7}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 1296
    new-instance v7, Ljava/io/StringReader;

    iget-object v8, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->mResultResponse:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 1297
    invoke-interface {v6, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 1299
    invoke-virtual {v2}, Lae/gov/xmlhandler/GetPersonPhotoResponseHandler;->getGetPersonPhotoResponseVo()Lae/gov/mol/vo/GetPersonPhotoResponseVo;

    move-result-object v3

    .line 1300
    .local v3, "mGetPersonPhotoResponseVo":Lae/gov/mol/vo/GetPersonPhotoResponseVo;
    if-eqz v3, :cond_0

    .line 1301
    invoke-virtual {v3}, Lae/gov/mol/vo/GetPersonPhotoResponseVo;->getGetPersonPhotoResult()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->mPersonPhoto:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "mGetPersonPhotoResponseHandler":Lae/gov/xmlhandler/GetPersonPhotoResponseHandler;
    .end local v3    # "mGetPersonPhotoResponseVo":Lae/gov/mol/vo/GetPersonPhotoResponseVo;
    .end local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    return-object v7

    .line 1304
    :catch_0
    move-exception v0

    .line 1306
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 1312
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    invoke-virtual {v0}, Lae/gov/mol/fragment/Fragment_Home;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1333
    :goto_0
    return-void

    .line 1313
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1314
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1315
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1316
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1324
    :cond_2
    :goto_1
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1325
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1326
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getUserName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1327
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getUser_full_name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getEmail()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v4, v4, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v4

    invoke-virtual {v4}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v5, v5, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v5

    invoke-virtual {v5}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->mPersonPhoto:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v7, v7, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v7}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v7

    invoke-virtual {v7}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getTotalCompany()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v8, v8, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v8}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v8

    invoke-virtual {v8}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getGoodCompany()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v9, v9, Lae/gov/mol/fragment/Fragment_Home;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v9}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v9

    invoke-virtual {v9}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getBlockedCompany()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lae/gov/mol/MolApplication;->LoginProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    :cond_3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1332
    :cond_4
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1318
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_6

    .line 1319
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1321
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_2

    .line 1322
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 1276
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/Fragment_Home;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1277
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    new-instance v1, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$BackProcessProfile;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v1, v2}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lae/gov/mol/fragment/Fragment_Home;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 1278
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1279
    return-void
.end method
