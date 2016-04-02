.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_Ban_Expiry_Information.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;)V
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 138
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->strNumber:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lae/gov/mol/webservices/WebServiceResponse;->getEmpBanExpiryDate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response..."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 145
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 146
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 147
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 148
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 149
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 150
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 151
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    new-instance v6, Lae/gov/xmlhandler/SalaryPaidInfoHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/SalaryPaidInfoHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoHandler:Lae/gov/xmlhandler/SalaryPaidInfoHandler;

    .line 152
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoHandler:Lae/gov/xmlhandler/SalaryPaidInfoHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 153
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 154
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoHandler:Lae/gov/xmlhandler/SalaryPaidInfoHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->getSalaryPaidInfoVo()Lae/gov/mol/vo/SalaryPaidInfoVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    .line 155
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->isDataRecieved:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    .line 167
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 172
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    .line 178
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    .line 177
    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 180
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 181
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 183
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOM_COMPANY_CODE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewOfficeName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getOFFICE_NAME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewCardNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getEMP_CARD_NO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewCardExpiryDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getEMP_CARD_EXPIRY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewCardIssueDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getEMP_CARD_ISSUE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getDESC_ARABIC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewPersonNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getPER_CODE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewContractPrinting:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCONTRACT_TYPE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTExtTextSalary:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOMTRACT_SALARY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTExtTextContractResidance:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOMTRACT_RESIDANCE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTExtTextContractTransportation:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOMTRACT_TRANSPORTATION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 211
    :goto_1
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    .line 219
    :goto_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 200
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOM_NAME_ENG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getPER_NAME_ENG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 205
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOM_NAME_ENG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getPER_NAME_ARB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 216
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    const v2, 0x7f09019f

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->strNumber:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    .line 217
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    .line 216
    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_2

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 133
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 134
    return-void
.end method
