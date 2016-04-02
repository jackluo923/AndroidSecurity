.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentInspectionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;


# direct methods
.method private constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;)V
    .locals 1

    .prologue
    .line 100
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 111
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->strPersonCode:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lae/gov/mol/webservices/WebServiceResponse;->getInspectionRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 113
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 117
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 118
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 119
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    new-instance v6, Lae/gov/xmlhandler/InspectionRequestHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/InspectionRequestHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestHandler:Lae/gov/xmlhandler/InspectionRequestHandler;

    .line 120
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestHandler:Lae/gov/xmlhandler/InspectionRequestHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 121
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 122
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 123
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 124
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 125
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestHandler:Lae/gov/xmlhandler/InspectionRequestHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/InspectionRequestHandler;->getmInspectionRequestVo()Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    .line 126
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->isDataRecieved:Z

    .line 129
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    if-nez v5, :cond_0

    .line 130
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const v6, 0x7f090239

    const v2, 0x7f090137

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 140
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 143
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 145
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 190
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 148
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 150
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 152
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 156
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-boolean v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->isDataRecieved:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    if-eqz v0, :cond_5

    .line 158
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getCom_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getNationality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewPassportNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getPassportNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewPersonCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 166
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getPerNameE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getComNameE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 171
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getPerNameA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->getComNameA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 180
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    if-eqz v0, :cond_6

    .line 181
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_2

    .line 183
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    const v2, 0x7f0901a2

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_2

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 106
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 107
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 108
    return-void
.end method
