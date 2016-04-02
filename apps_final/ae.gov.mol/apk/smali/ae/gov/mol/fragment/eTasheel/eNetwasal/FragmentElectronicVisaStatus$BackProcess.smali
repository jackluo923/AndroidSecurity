.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentElectronicVisaStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;


# direct methods
.method private constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)V
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 114
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->strTransactionNumber:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v7, v7, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v7}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lae/gov/mol/webservices/WebServiceResponse;->getElectronicVisaStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 115
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 120
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 121
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 122
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    new-instance v6, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;-><init>()V

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Lae/gov/xmlhandler/ElectronicVisaStatusHandler;)V

    .line 123
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mHandler:Lae/gov/xmlhandler/ElectronicVisaStatusHandler;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/xmlhandler/ElectronicVisaStatusHandler;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 124
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 125
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 126
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 127
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 128
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mHandler:Lae/gov/xmlhandler/ElectronicVisaStatusHandler;
    invoke-static {v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/xmlhandler/ElectronicVisaStatusHandler;

    move-result-object v6

    invoke-virtual {v6}, Lae/gov/xmlhandler/ElectronicVisaStatusHandler;->getmElectronicVisaStatusVo()Lae/gov/mol/vo/ElectronicVisaStatusVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Lae/gov/mol/vo/ElectronicVisaStatusVo;)V

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Elecrtonic Visa Status"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;
    invoke-static {v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ElectronicVisaStatusVo;

    move-result-object v6

    invoke-virtual {v6}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->getTransaction_x0020_Number()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 130
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->isDataRecieved:Z

    .line 133
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-boolean v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->isDataRecieved:Z

    if-nez v5, :cond_0

    .line 134
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    .line 145
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 148
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$5(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 150
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$5(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 154
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 156
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$5(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 158
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 162
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-boolean v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->isDataRecieved:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ElectronicVisaStatusVo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 164
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewTransactionNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ElectronicVisaStatusVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->getTransaction_x0020_Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewEmirate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ElectronicVisaStatusVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->getEmirate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewTransactionType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ElectronicVisaStatusVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->getTransaction_x0020_Type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ElectronicVisaStatusVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 172
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewDateOfSubmit:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ElectronicVisaStatusVo;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->getDate_x0020_of_x0020_Submit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ElectronicVisaStatusVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->getCompany_x0020_Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewLocation:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ElectronicVisaStatusVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 177
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewDateOfSubmit:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ElectronicVisaStatusVo;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->getDate_x0020_of_x0020_Submit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ElectronicVisaStatusVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->getCompany_x0020_Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewLocation:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ElectronicVisaStatusVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ElectronicVisaStatusVo;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 187
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$6(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 188
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$6(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$5(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_2

    .line 190
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    const v2, 0x7f0901a1

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->access$5(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_2

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 110
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 111
    return-void
.end method
