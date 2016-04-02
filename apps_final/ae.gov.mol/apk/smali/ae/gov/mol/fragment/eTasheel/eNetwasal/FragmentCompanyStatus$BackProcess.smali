.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentCompanyStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;


# direct methods
.method private constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;)V
    .locals 1

    .prologue
    .line 106
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 117
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->strNumber:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v7, v7, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v7}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lae/gov/mol/webservices/WebServiceResponse;->getCompanyStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 119
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 123
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 124
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 125
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    new-instance v6, Lae/gov/xmlhandler/CompanyBasicInfoHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/CompanyBasicInfoHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyBasicInfoHandler:Lae/gov/xmlhandler/CompanyBasicInfoHandler;

    .line 126
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyBasicInfoHandler:Lae/gov/xmlhandler/CompanyBasicInfoHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 127
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 128
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 129
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 130
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 131
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyBasicInfoHandler:Lae/gov/xmlhandler/CompanyBasicInfoHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/CompanyBasicInfoHandler;->getmBasicInfoVo()Lae/gov/mol/vo/CompanyBasicInfoVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyBasicInfoVo:Lae/gov/mol/vo/CompanyBasicInfoVo;

    .line 132
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->isDataRecieved:Z

    .line 134
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 136
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    new-instance v6, Lae/gov/xmlhandler/CompanyStatusHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/CompanyStatusHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyStatusHandler:Lae/gov/xmlhandler/CompanyStatusHandler;

    .line 137
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyStatusHandler:Lae/gov/xmlhandler/CompanyStatusHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 138
    new-instance v1, Lorg/xml/sax/InputSource;

    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 139
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 140
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 141
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 142
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyStatusHandler:Lae/gov/xmlhandler/CompanyStatusHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/CompanyStatusHandler;->getmCompanyStatusVo()Lae/gov/mol/vo/CompanyStatusVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyStatusVo:Lae/gov/mol/vo/CompanyStatusVo;

    .line 143
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->isDataRecieved:Z

    .line 145
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-boolean v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->isDataRecieved:Z

    if-nez v5, :cond_0

    .line 146
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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
    const v6, 0x7f090239

    const v2, 0x7f090137

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 157
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 160
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 162
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 166
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 170
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 173
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-boolean v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->isDataRecieved:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyBasicInfoVo:Lae/gov/mol/vo/CompanyBasicInfoVo;

    if-eqz v0, :cond_5

    .line 175
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->strNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 180
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyBasicInfoVo:Lae/gov/mol/vo/CompanyBasicInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyBasicInfoVo;->getComNameEng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewCompanyStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyStatusVo:Lae/gov/mol/vo/CompanyStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyStatusVo;->getDesc_English()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 186
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyBasicInfoVo:Lae/gov/mol/vo/CompanyBasicInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyBasicInfoVo;->getComNameArb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewCompanyStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyStatusVo:Lae/gov/mol/vo/CompanyStatusVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyStatusVo;->getDesc_Arabic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 196
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 197
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 199
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    const v2, 0x7f09019f

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 111
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 112
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 113
    return-void
.end method
