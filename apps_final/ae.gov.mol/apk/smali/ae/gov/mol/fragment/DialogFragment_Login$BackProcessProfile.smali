.class public Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;
.super Landroid/os/AsyncTask;
.source "DialogFragment_Login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/DialogFragment_Login;
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
.field private mPersonPhoto:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/DialogFragment_Login;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/DialogFragment_Login;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 299
    iget-object v9, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v8, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v8, v8, Lae/gov/mol/fragment/DialogFragment_Login;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v10, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v10, v10, Lae/gov/mol/fragment/DialogFragment_Login;->mStringUserId:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v12, v12, Lae/gov/mol/fragment/DialogFragment_Login;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v8, v10, v11, v12}, Lae/gov/mol/webservices/WebServiceResponse;->getValidateUserProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lae/gov/mol/vo/ProfileVo;

    iput-object v8, v9, Lae/gov/mol/fragment/DialogFragment_Login;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    .line 301
    iget-object v8, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v8, v8, Lae/gov/mol/fragment/DialogFragment_Login;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v9, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v9}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lae/gov/mol/webservices/WebServiceResponse;->getPersonPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "mResultResponse":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 305
    .local v6, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 306
    .local v5, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 307
    .local v7, "xr":Lorg/xml/sax/XMLReader;
    new-instance v2, Lae/gov/xmlhandler/GetPersonPhotoResponseHandler;

    invoke-direct {v2}, Lae/gov/xmlhandler/GetPersonPhotoResponseHandler;-><init>()V

    .line 308
    .local v2, "mGetPersonPhotoResponseHandler":Lae/gov/xmlhandler/GetPersonPhotoResponseHandler;
    invoke-interface {v7, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 309
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 310
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v8, "UTF-8"

    invoke-virtual {v1, v8}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 311
    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 312
    invoke-interface {v7, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 314
    invoke-virtual {v2}, Lae/gov/xmlhandler/GetPersonPhotoResponseHandler;->getGetPersonPhotoResponseVo()Lae/gov/mol/vo/GetPersonPhotoResponseVo;

    move-result-object v3

    .line 315
    .local v3, "mGetPersonPhotoResponseVo":Lae/gov/mol/vo/GetPersonPhotoResponseVo;
    if-eqz v3, :cond_0

    .line 316
    invoke-virtual {v3}, Lae/gov/mol/vo/GetPersonPhotoResponseVo;->getGetPersonPhotoResult()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->mPersonPhoto:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "mGetPersonPhotoResponseHandler":Lae/gov/xmlhandler/GetPersonPhotoResponseHandler;
    .end local v3    # "mGetPersonPhotoResponseVo":Lae/gov/mol/vo/GetPersonPhotoResponseVo;
    .end local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v7    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v8, 0x0

    return-object v8

    .line 319
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    invoke-virtual {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_Login;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_Login;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 330
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_Login;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_4

    .line 331
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/DialogFragment_Login;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    :cond_2
    :goto_1
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_Login;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 336
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_Login;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getUserName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 337
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v1, v1, Lae/gov/mol/fragment/DialogFragment_Login;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v2, v2, Lae/gov/mol/fragment/DialogFragment_Login;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getUser_full_name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v3, v3, Lae/gov/mol/fragment/DialogFragment_Login;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v3

    invoke-virtual {v3}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getEmail()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v4, v4, Lae/gov/mol/fragment/DialogFragment_Login;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v4

    invoke-virtual {v4}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v5, v5, Lae/gov/mol/fragment/DialogFragment_Login;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v5

    invoke-virtual {v5}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->mPersonPhoto:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v7, v7, Lae/gov/mol/fragment/DialogFragment_Login;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v7}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v7

    invoke-virtual {v7}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getTotalCompany()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v8, v8, Lae/gov/mol/fragment/DialogFragment_Login;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v8}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v8

    invoke-virtual {v8}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getGoodCompany()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v9, v9, Lae/gov/mol/fragment/DialogFragment_Login;->mProfileVo:Lae/gov/mol/vo/ProfileVo;

    invoke-virtual {v9}, Lae/gov/mol/vo/ProfileVo;->getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;

    move-result-object v9

    invoke-virtual {v9}, Lae/gov/mol/vo/ProfileVo$UserVoData;->getBlockedCompany()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lae/gov/mol/MolApplication;->LoginProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 332
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_Login;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/DialogFragment_Login;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 291
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v1}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/DialogFragment_Login;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/DialogFragment_Login;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 292
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    new-instance v1, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_Login$BackProcessProfile;->this$0:Lae/gov/mol/fragment/DialogFragment_Login;

    # getter for: Lae/gov/mol/fragment/DialogFragment_Login;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v2}, Lae/gov/mol/fragment/DialogFragment_Login;->access$0(Lae/gov/mol/fragment/DialogFragment_Login;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lae/gov/mol/fragment/DialogFragment_Login;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 293
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 294
    return-void
.end method
