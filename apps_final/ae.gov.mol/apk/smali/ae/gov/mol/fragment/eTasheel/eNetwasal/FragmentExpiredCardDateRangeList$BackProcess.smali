.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentExpiredCardDateRangeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;)V
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 207
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->strInputValue:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->strFormDate:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->strToDate:Ljava/lang/String;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v4}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lae/gov/mol/webservices/WebServiceResponse;->getGetExpiredCards_DateRange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v9

    .line 215
    .local v9, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v8

    .line 216
    .local v8, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v10

    .line 218
    .local v10, "xr":Lorg/xml/sax/XMLReader;
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    new-instance v1, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;

    invoke-direct {v1}, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;-><init>()V

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCardDetailsHandler:Lae/gov/xmlhandler/ExpiredCardDetailsHandler;

    .line 219
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCardDetailsHandler:Lae/gov/xmlhandler/ExpiredCardDetailsHandler;

    invoke-interface {v10, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 220
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7}, Lorg/xml/sax/InputSource;-><init>()V

    .line 221
    .local v7, "inputSource":Lorg/xml/sax/InputSource;
    const-string v0, "UTF-8"

    invoke-virtual {v7, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 223
    invoke-interface {v10, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 224
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCardDetailsHandler:Lae/gov/xmlhandler/ExpiredCardDetailsHandler;

    invoke-virtual {v1}, Lae/gov/xmlhandler/ExpiredCardDetailsHandler;->getmArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    .line 225
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->isDataRecieved:Z

    .line 227
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 229
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-static {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V

    .line 238
    .end local v7    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v8    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v10    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 232
    .restart local v7    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v8    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v10    # "xr":Lorg/xml/sax/XMLReader;
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-static {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v7    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v8    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v10    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v6

    .line 235
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    .line 242
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 245
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 247
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 252
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 254
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 257
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 258
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 259
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    .line 260
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    invoke-direct {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;)V

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;

    .line 261
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 263
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 264
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 266
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 269
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 270
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 272
    :cond_8
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 201
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 202
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 203
    return-void
.end method
