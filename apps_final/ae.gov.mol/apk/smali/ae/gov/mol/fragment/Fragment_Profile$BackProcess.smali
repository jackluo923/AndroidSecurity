.class public Lae/gov/mol/fragment/Fragment_Profile$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/Fragment_Profile;
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
.field mEmail:Ljava/lang/String;

.field mPhone:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_Profile;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/Fragment_Profile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "mEmailId"    # Ljava/lang/String;
    .param p3, "mPhoneNo"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 248
    iput-object p2, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->mEmail:Ljava/lang/String;

    .line 249
    iput-object p3, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->mPhone:Ljava/lang/String;

    .line 250
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 263
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v11

    .line 266
    .local v11, "spf":Ljavax/xml/parsers/SAXParserFactory;
    if-eqz p1, :cond_0

    .line 267
    iget-object v13, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v3, v3, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v3}, Lae/gov/mol/MolApplication;->getMobile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 269
    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->mEmail:Ljava/lang/String;

    iget-object v5, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->mPhone:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-virtual/range {v0 .. v6}, Lae/gov/mol/webservices/WebServiceResponse;->getUserProfileUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lae/gov/mol/fragment/Fragment_Profile;->mResultResponse:Ljava/lang/String;

    .line 271
    :try_start_0
    invoke-virtual {v11}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v10

    .line 272
    .local v10, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v10}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v12

    .line 273
    .local v12, "xr":Lorg/xml/sax/XMLReader;
    new-instance v9, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;

    invoke-direct {v9}, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;-><init>()V

    .line 274
    .local v9, "mErrorHandlerVo":Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;
    invoke-interface {v12, v9}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 275
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8}, Lorg/xml/sax/InputSource;-><init>()V

    .line 276
    .local v8, "inputSource":Lorg/xml/sax/InputSource;
    const-string v0, "UTF-8"

    invoke-virtual {v8, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Profile;->mResultResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 278
    invoke-interface {v12, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 279
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    invoke-virtual {v9}, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->getmErrorHandlerVo()Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/Fragment_Profile;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v8    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v9    # "mErrorHandlerVo":Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;
    .end local v10    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v12    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 280
    :catch_0
    move-exception v7

    .line 281
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    .line 290
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    invoke-virtual {v0}, Lae/gov/mol/fragment/Fragment_Profile;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 294
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_4

    .line 295
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 302
    :cond_2
    :goto_1
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    const v2, 0x7f090226

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 304
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Profile;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 305
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getUserNameProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/MolApplication;->getUserNameProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->mEmail:Ljava/lang/String;

    iget-object v4, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->mPhone:Ljava/lang/String;

    iget-object v5, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v5, v5, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v5}, Lae/gov/mol/MolApplication;->getMobileNUmberProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v6, v6, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v6}, Lae/gov/mol/MolApplication;->getUserImage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v7, v7, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v7}, Lae/gov/mol/MolApplication;->getTotalCompany(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v8, v8, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v8}, Lae/gov/mol/MolApplication;->getGoodCompany(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v9, v9, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v9}, Lae/gov/mol/MolApplication;->getBlockedCompany(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lae/gov/mol/MolApplication;->LoginProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 307
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mEditTextEmailId:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 308
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 296
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 298
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 310
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Profile;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 254
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/Fragment_Profile;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/Fragment_Profile;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 255
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    new-instance v1, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Profile$BackProcess;->this$0:Lae/gov/mol/fragment/Fragment_Profile;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Profile;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v1, v2}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lae/gov/mol/fragment/Fragment_Profile;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 256
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 257
    return-void
.end method
