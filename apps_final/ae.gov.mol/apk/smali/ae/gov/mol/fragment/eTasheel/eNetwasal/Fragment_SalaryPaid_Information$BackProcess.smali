.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_SalaryPaid_Information.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 163
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->strNumber:Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mStringFromDate:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mStringToDate:Ljava/lang/String;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v4}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-virtual/range {v0 .. v5}, Lae/gov/mol/webservices/WebServiceResponse;->getEmployeeSalaryPaidInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v9

    .line 173
    .local v9, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v8

    .line 174
    .local v8, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v10

    .line 175
    .local v10, "xr":Lorg/xml/sax/XMLReader;
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7}, Lorg/xml/sax/InputSource;-><init>()V

    .line 176
    .local v7, "inputSource":Lorg/xml/sax/InputSource;
    const-string v0, "UTF-8"

    invoke-virtual {v7, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 178
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    new-instance v1, Lae/gov/xmlhandler/SalaryPaidInfoHandler;

    invoke-direct {v1}, Lae/gov/xmlhandler/SalaryPaidInfoHandler;-><init>()V

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoHandler:Lae/gov/xmlhandler/SalaryPaidInfoHandler;

    .line 179
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoHandler:Lae/gov/xmlhandler/SalaryPaidInfoHandler;

    invoke-interface {v10, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 180
    invoke-interface {v10, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 181
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoHandler:Lae/gov/xmlhandler/SalaryPaidInfoHandler;

    invoke-virtual {v1}, Lae/gov/xmlhandler/SalaryPaidInfoHandler;->getSalaryPaidInfoVo()Lae/gov/mol/vo/SalaryPaidInfoVo;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    .line 183
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v8

    .line 184
    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v10

    .line 185
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    new-instance v1, Lae/gov/xmlhandler/MySalaryDetailHandler;

    invoke-direct {v1}, Lae/gov/xmlhandler/MySalaryDetailHandler;-><init>()V

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryDetailHandler:Lae/gov/xmlhandler/MySalaryDetailHandler;

    .line 186
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryDetailHandler:Lae/gov/xmlhandler/MySalaryDetailHandler;

    invoke-interface {v10, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 187
    new-instance v7, Lorg/xml/sax/InputSource;

    .end local v7    # "inputSource":Lorg/xml/sax/InputSource;
    invoke-direct {v7}, Lorg/xml/sax/InputSource;-><init>()V

    .line 188
    .restart local v7    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v0, "UTF-8"

    invoke-virtual {v7, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 190
    invoke-interface {v10, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 191
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryDetailHandler:Lae/gov/xmlhandler/MySalaryDetailHandler;

    invoke-virtual {v1}, Lae/gov/xmlhandler/MySalaryDetailHandler;->getmSalaryDetailVos()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryDetailListVo:Ljava/util/ArrayList;

    .line 193
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->isDataRecieved:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v7    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v8    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v10    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 195
    :catch_0
    move-exception v6

    .line 196
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v5, 0x7f090239

    const v6, 0x7f090137

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 203
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    invoke-virtual {v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 279
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    .line 205
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 206
    :cond_1
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v3}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v3

    if-nez v3, :cond_2

    .line 207
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    const v5, 0x7f090099

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 208
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    invoke-virtual {v4, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    invoke-virtual {v3, v4, v5, v7, v6}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v3, v3, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v3, :cond_3

    .line 210
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 211
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    invoke-virtual {v3, v4, v5, v7, v6}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_0

    .line 213
    :cond_3
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v3, v3, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v3, :cond_4

    .line 214
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    invoke-virtual {v4, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    invoke-virtual {v3, v4, v5, v7, v6}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 215
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    const v5, 0x7f09009a

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 218
    :cond_4
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    if-eqz v3, :cond_b

    .line 220
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOM_COMPANY_CODE()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    .line 221
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getResult()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 222
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getResult()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    invoke-virtual {v3, v4, v5, v7, v6}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 257
    :cond_5
    :goto_1
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    const/4 v4, 0x0

    const v5, 0x7f02007a

    invoke-virtual {v3, v7, v4, v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->createRow(ZLae/gov/mol/vo/MySalaryDetailVo;I)V

    .line 258
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryDetailListVo:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 260
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryDetailListVo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 261
    .local v1, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v1, :cond_9

    .line 275
    .end local v0    # "i":I
    .end local v1    # "listSize":I
    :cond_6
    :goto_3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 224
    :cond_7
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOM_COMPANY_CODE()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOM_COMPANY_CODE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 225
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getResult()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 226
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getResult()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    invoke-virtual {v3, v4, v5, v7, v6}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 230
    :cond_8
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 231
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOM_COMPANY_CODE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewOfficeName:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getOFFICE_NAME()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewCardNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getEMP_CARD_NO()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewCardExpiryDate:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getEMP_CARD_EXPIRY()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewCardIssueDate:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getEMP_CARD_ISSUE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getDESC_ARABIC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewPersonNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getPER_CODE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewContractPrinting:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCONTRACT_TYPE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTExtTextSalary:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOMTRACT_SALARY()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTExtTextContractResidance:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOMTRACT_RESIDANCE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTExtTextContractTransportation:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOMTRACT_TRANSPORTATION()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 250
    :pswitch_0
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOM_NAME_ENG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getPER_NAME_ARB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 245
    :pswitch_1
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getCOM_NAME_ENG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/SalaryPaidInfoVo;->getPER_NAME_ENG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 262
    .restart local v0    # "i":I
    .restart local v1    # "listSize":I
    :cond_9
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mSalaryDetailListVo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/MySalaryDetailVo;

    .line 263
    .local v2, "mSalaryDetailVo":Lae/gov/mol/vo/MySalaryDetailVo;
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_a

    .line 264
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    const v4, 0x7f020078

    invoke-virtual {v3, v8, v2, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->createRow(ZLae/gov/mol/vo/MySalaryDetailVo;I)V

    .line 261
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 266
    :cond_a
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    const v4, 0x7f020079

    invoke-virtual {v3, v8, v2, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->createRow(ZLae/gov/mol/vo/MySalaryDetailVo;I)V

    goto :goto_4

    .line 273
    .end local v0    # "i":I
    .end local v1    # "listSize":I
    .end local v2    # "mSalaryDetailVo":Lae/gov/mol/vo/MySalaryDetailVo;
    :cond_b
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    const v5, 0x7f0901a4

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    invoke-virtual {v3, v4, v5, v7, v6}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_3

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
    .line 157
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 158
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 159
    return-void
.end method
