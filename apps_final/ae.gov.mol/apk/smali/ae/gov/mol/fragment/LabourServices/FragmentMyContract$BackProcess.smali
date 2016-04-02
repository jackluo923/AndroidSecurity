.class public Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentMyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/LabourServices/FragmentMyContract;
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

.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V
    .locals 1

    .prologue
    .line 229
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 241
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v5, v5, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v6, v6, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mStringPassportNumber:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v7, v7, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mStringNationality:Ljava/lang/String;

    iget-object v8, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v8, v8, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mStringYearOfBirth:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lae/gov/mol/webservices/WebServiceResponse;->getMyContractDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 243
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->mResultResponse:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 244
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 249
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 250
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 251
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    new-instance v6, Lae/gov/xmlhandler/MyContractDetailsHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/MyContractDetailsHandler;-><init>()V

    invoke-static {v5, v6}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->access$0(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;Lae/gov/xmlhandler/MyContractDetailsHandler;)V

    .line 252
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    # getter for: Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->myContractDetailsHandler:Lae/gov/xmlhandler/MyContractDetailsHandler;
    invoke-static {v5}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->access$1(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)Lae/gov/xmlhandler/MyContractDetailsHandler;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 253
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 254
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 255
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 256
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 257
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v6, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    # getter for: Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->myContractDetailsHandler:Lae/gov/xmlhandler/MyContractDetailsHandler;
    invoke-static {v6}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->access$1(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)Lae/gov/xmlhandler/MyContractDetailsHandler;

    move-result-object v6

    invoke-virtual {v6}, Lae/gov/xmlhandler/MyContractDetailsHandler;->getmMyContactVo()Lae/gov/mol/vo/MyContactVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    .line 258
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v5, v5, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    if-nez v5, :cond_0

    .line 259
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v6, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v6, v6, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 262
    .restart local v3    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    .line 271
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 275
    const-string v0, "dismiss in About us Pager"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 278
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 293
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 282
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 283
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 285
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    if-eqz v0, :cond_5

    .line 286
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/CommonMethods;->ShowAlertOk(Ljava/lang/String;)V

    goto :goto_1

    .line 288
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-class v3, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mIntent:Landroid/content/Intent;

    .line 289
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->mMyContactVo:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 234
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 235
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 236
    return-void
.end method
