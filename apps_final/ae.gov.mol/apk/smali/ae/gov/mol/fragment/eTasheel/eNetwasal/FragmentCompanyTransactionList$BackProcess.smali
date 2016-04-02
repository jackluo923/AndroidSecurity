.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentCompanyTransactionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)V
    .locals 1

    .prologue
    .line 192
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 204
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->strInputValue:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->strFormDate:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->strToDate:Ljava/lang/String;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v4}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lae/gov/mol/webservices/WebServiceResponse;->getCompanyTransactionList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v9

    .line 210
    .local v9, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v8

    .line 211
    .local v8, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v10

    .line 213
    .local v10, "xr":Lorg/xml/sax/XMLReader;
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    new-instance v1, Lae/gov/xmlhandler/CompanyTransactionListHandler;

    invoke-direct {v1}, Lae/gov/xmlhandler/CompanyTransactionListHandler;-><init>()V

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mHandler:Lae/gov/xmlhandler/CompanyTransactionListHandler;

    .line 214
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mHandler:Lae/gov/xmlhandler/CompanyTransactionListHandler;

    invoke-interface {v10, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 215
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7}, Lorg/xml/sax/InputSource;-><init>()V

    .line 216
    .local v7, "inputSource":Lorg/xml/sax/InputSource;
    const-string v0, "UTF-8"

    invoke-virtual {v7, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 218
    invoke-interface {v10, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 219
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mHandler:Lae/gov/xmlhandler/CompanyTransactionListHandler;

    invoke-virtual {v1}, Lae/gov/xmlhandler/CompanyTransactionListHandler;->getmArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;Ljava/util/ArrayList;)V

    .line 220
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->isDataRecieved:Z

    .line 222
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 224
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-static {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V

    .line 233
    .end local v7    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v8    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v10    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 227
    .restart local v7    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v8    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v10    # "xr":Lorg/xml/sax/XMLReader;
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-static {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v7    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v8    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v10    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v6

    .line 230
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    const v3, 0x7f09019f

    const v2, 0x7f090137

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 237
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 240
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 242
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 247
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 249
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 252
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 253
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 254
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    .line 255
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    invoke-direct {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)V

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;

    .line 256
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 258
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 261
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 264
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 265
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 267
    :cond_8
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 198
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 199
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 200
    return-void
.end method
