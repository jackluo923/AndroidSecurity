.class public Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;
.super Landroid/os/AsyncTask;
.source "DialogFragment_ForgotPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/DialogFragment_ForgotPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackProcess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mResultResponse:Ljava/lang/String;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field final synthetic this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;)V
    .locals 1

    .prologue
    .line 219
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->isDataRecieved:Z

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 238
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 241
    .local v6, "spf":Ljavax/xml/parsers/SAXParserFactory;
    if-eqz p1, :cond_0

    .line 242
    const/4 v8, 0x0

    aget-object v4, p1, v8

    .line 243
    .local v4, "mStrPersonNumber":Ljava/lang/String;
    aget-object v3, p1, v9

    .line 244
    .local v3, "mStrEmailAddress":Ljava/lang/String;
    iget-object v8, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v3, v9}, Lae/gov/mol/webservices/WebServiceResponse;->getForgetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 247
    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 248
    .local v5, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 249
    .local v7, "xr":Lorg/xml/sax/XMLReader;
    new-instance v2, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;

    invoke-direct {v2}, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;-><init>()V

    .line 250
    .local v2, "mErrorHandlerVo":Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;
    invoke-interface {v7, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 251
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 252
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v8, "UTF-8"

    invoke-virtual {v1, v8}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 253
    new-instance v8, Ljava/io/StringReader;

    iget-object v9, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 254
    invoke-interface {v7, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 255
    invoke-virtual {v2}, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->getmErrorHandlerVo()Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v8

    iput-object v8, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    .line 256
    const/4 v8, 0x1

    iput-boolean v8, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->isDataRecieved:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "mErrorHandlerVo":Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;
    .end local v3    # "mStrEmailAddress":Ljava/lang/String;
    .end local v4    # "mStrPersonNumber":Ljava/lang/String;
    .end local v5    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v7    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v8, 0x0

    return-object v8

    .line 257
    .restart local v3    # "mStrEmailAddress":Ljava/lang/String;
    .restart local v4    # "mStrPersonNumber":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 266
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    invoke-virtual {v0}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 269
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 270
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    # getter for: Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->access$0(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 286
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 272
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    # getter for: Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->access$0(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 275
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->isDataRecieved:Z

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    # getter for: Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v1}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->access$0(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v3, v2}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->newInstance(Lae/gov/mol/helper/CustomFragmentActivity;IZLjava/lang/String;)Lae/gov/mol/fragment/DialogFragment_Forgot_Password;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mFragment_Forgot_Password:Lae/gov/mol/fragment/DialogFragment_Forgot_Password;

    .line 277
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 278
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mFragment_Forgot_Password:Lae/gov/mol/fragment/DialogFragment_Forgot_Password;

    invoke-virtual {v0, v4, v3}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->showDialog(IZ)V

    goto :goto_1

    .line 280
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    iget-object v0, v0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mFragment_Forgot_Password:Lae/gov/mol/fragment/DialogFragment_Forgot_Password;

    invoke-virtual {v0, v4, v3}, Lae/gov/mol/fragment/DialogFragment_Forgot_Password;->showDialog(IZ)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    # getter for: Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v0}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->access$0(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 230
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->this$0:Lae/gov/mol/fragment/DialogFragment_ForgotPassword;

    # getter for: Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->mCustomFragment:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v1}, Lae/gov/mol/fragment/DialogFragment_ForgotPassword;->access$0(Lae/gov/mol/fragment/DialogFragment_ForgotPassword;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 231
    new-instance v0, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/DialogFragment_ForgotPassword$BackProcess;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    .line 232
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 233
    return-void
.end method
