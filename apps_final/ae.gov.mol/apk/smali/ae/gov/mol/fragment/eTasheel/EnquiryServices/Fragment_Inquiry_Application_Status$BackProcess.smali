.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_Inquiry_Application_Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;)V
    .locals 1

    .prologue
    .line 156
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 169
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->strNumber:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lae/gov/mol/webservices/WebServiceResponse;->getEnq_GetApplicationStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 171
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 175
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 176
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 177
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    new-instance v6, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$ItemXMLHandler;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    invoke-direct {v6, v7}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$ItemXMLHandler;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;)V

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->access$0(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$ItemXMLHandler;)V

    .line 178
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->myXMLHandler:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$ItemXMLHandler;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->access$1(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$ItemXMLHandler;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 179
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 180
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 181
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 182
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 184
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-boolean v5, v5, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->isDataRecieved:Z

    if-nez v5, :cond_0

    .line 185
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    .line 187
    :cond_0
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mRelativeLayoutcontent:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    const v2, 0x7f090137

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 197
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 200
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 202
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 205
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 206
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    invoke-virtual {v1, v4}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 208
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    invoke-virtual {v1, v4}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 212
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-boolean v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->isDataRecieved:Z

    if-eqz v0, :cond_5

    .line 214
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewmstrTransaction_Number:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrTransaction_Number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewmstrDate_of_Submit:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrDate_of_Submit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "datteee"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrDate_of_Submit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewmstrCompany_Code:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrCompany_Code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewmstrCompany_Name:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrCompany_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewmstrEmirate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrEmirate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewmstrTransaction_Type:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrTransaction_Type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewmstrLocation:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewmstrBatch_x0020_ID:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrBatch_x0020_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewmstrSend_Date:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrSend_Date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewmstrState:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewmstrStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewmstrReject:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrreject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewmstrcurloc:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mstrcurloc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->setBooleanData(Z)V

    goto/16 :goto_1

    .line 232
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 235
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mRelativeLayoutcontent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 239
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    const v2, 0x7f09019d

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->strNumber:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 240
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mRelativeLayoutcontent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 161
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Application_Status;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 163
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 164
    return-void
.end method
