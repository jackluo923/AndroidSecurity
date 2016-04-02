.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentEmpBanExpiryDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;


# direct methods
.method private constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 106
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->strNumber:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v7, v7, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v7}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lae/gov/mol/webservices/WebServiceResponse;->getEmpBanExpiryDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 108
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 112
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 113
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 114
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    new-instance v6, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mEmpBanExpiryDateHandler:Lae/gov/xmlhandler/EmpBanExpiryDateHandler;

    .line 115
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mEmpBanExpiryDateHandler:Lae/gov/xmlhandler/EmpBanExpiryDateHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 116
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 117
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 118
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 119
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 120
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mEmpBanExpiryDateHandler:Lae/gov/xmlhandler/EmpBanExpiryDateHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/EmpBanExpiryDateHandler;->getmEmpBanExpiryDateVo()Lae/gov/mol/vo/EmpBanExpiryDateVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mBanExpiryDateVo:Lae/gov/mol/vo/EmpBanExpiryDateVo;

    .line 121
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->isDataRecieved:Z

    .line 124
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-boolean v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->isDataRecieved:Z

    if-nez v5, :cond_0

    .line 125
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    .line 136
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 139
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 141
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 145
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 150
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 153
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-boolean v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->isDataRecieved:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mBanExpiryDateVo:Lae/gov/mol/vo/EmpBanExpiryDateVo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mBanExpiryDateVo:Lae/gov/mol/vo/EmpBanExpiryDateVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/EmpBanExpiryDateVo;->getBan_expiry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mBanExpiryDateVo:Lae/gov/mol/vo/EmpBanExpiryDateVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/EmpBanExpiryDateVo;->getBan_expiry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 155
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mTextViewBanExpiryDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mBanExpiryDateVo:Lae/gov/mol/vo/EmpBanExpiryDateVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/EmpBanExpiryDateVo;->getBan_expiry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 160
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 161
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 163
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    const v2, 0x7f0901a4

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 100
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 101
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 102
    return-void
.end method
