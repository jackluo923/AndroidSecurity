.class public Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_SpecificLabour_CardInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;)V
    .locals 1

    .prologue
    .line 171
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "jd"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->strNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 184
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->strNumber:Ljava/lang/String;

    .line 185
    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v7, v7, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v7}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 186
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v8, v8, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v8}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 187
    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v9

    .line 184
    invoke-virtual {v5, v6, v7, v8, v9}, Lae/gov/mol/webservices/WebServiceResponse;->getLaborCard_Info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 189
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 195
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 196
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 197
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    new-instance v6, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    invoke-direct {v6, v7}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;)V

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;)V

    .line 198
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->myXMLHandler:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;)Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 199
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 200
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 202
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 203
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 204
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-boolean v5, v5, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->isDataRecieved:Z

    if-nez v5, :cond_0

    .line 205
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 206
    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    .line 205
    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->access$2(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v2, 0x7f090239

    const v3, 0x7f090137

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 218
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 223
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 310
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 230
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 232
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 236
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-boolean v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->isDataRecieved:Z

    if-eqz v0, :cond_5

    .line 237
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 238
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    .line 239
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Card Expiry Date"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_expiry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "passport Expiry Date"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_passport_exp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "card Issue Date"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_issue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 270
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewLabourcardNo:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCardExpireDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_expiry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCardStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrCard_x0020_Status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrdesc_arabic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCompanyLicanseNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrCOM_LICENSE_NO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCompanyLicanseExpireDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 276
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrCOM_LICENSE_END:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewBalagh:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrBalagh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewPersonCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrpercode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_name_arb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewJob:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrjob_name_a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrnationality_arb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewPassportNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_passport_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewExpireDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 284
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_passport_exp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCardType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrcard_type_arb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewIssueDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_issue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewTransactionNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrtrans_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_com_company_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrcom_name_arb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstroffice_name_arb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 246
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewLabourcardNo:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCardExpireDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_expiry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCardStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrCard_x0020_Status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrdesc_arabic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCompanyLicanseNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrCOM_LICENSE_NO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCompanyLicanseExpireDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 252
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrCOM_LICENSE_END:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewBalagh:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrBalagh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewPersonCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrpercode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_name_eng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewJob:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrjob_name_e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrnationality_eng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewPassportNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_passport_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewExpireDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 261
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_passport_exp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCardType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrcard_type_eng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewIssueDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_issue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewTransactionNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrtrans_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_com_company_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrcom_name_eng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstroffice_name_eng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 299
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->access$4(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 300
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 301
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->access$4(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    .line 300
    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 304
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 305
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    const v2, 0x7f0901a0

    new-array v3, v5, [Ljava/lang/Object;

    .line 306
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->strNumber:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 305
    invoke-virtual {v1, v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 306
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    .line 307
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    .line 304
    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 177
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 178
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 179
    return-void
.end method
