.class Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_Pending_Transactions_Details.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackProcess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field private mPendingPaymentResponseVo:Lae/gov/mol/vo/RemovePendingPaymentResponseVo;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRemovePendingPaymentResponseHandler:Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;

.field private mWebserviceReponse:Lae/gov/mol/webservices/WebServiceResponse;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 217
    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mWebserviceReponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v7}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$0(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v7

    invoke-static {v7}, Lae/gov/mol/MolApplication;->getTasheelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 218
    iget-object v8, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;
    invoke-static {v8}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$1(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/vo/PendingTransactionsdata;

    move-result-object v8

    invoke-virtual {v8}, Lae/gov/mol/vo/PendingTransactionsdata;->getTranid()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;
    invoke-static {v9}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$1(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/vo/PendingTransactionsdata;

    move-result-object v9

    invoke-virtual {v9}, Lae/gov/mol/vo/PendingTransactionsdata;->getService_code()Ljava/lang/String;

    move-result-object v9

    .line 219
    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_ENG_ARB()Ljava/lang/String;

    move-result-object v10

    .line 217
    invoke-virtual {v6, v7, v8, v9, v10}, Lae/gov/mol/webservices/WebServiceResponse;->removePendingPaymentTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "mResultResponse":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 224
    .local v4, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 225
    .local v3, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 227
    .local v5, "xr":Lorg/xml/sax/XMLReader;
    new-instance v6, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;-><init>()V

    iput-object v6, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mRemovePendingPaymentResponseHandler:Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;

    .line 228
    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mRemovePendingPaymentResponseHandler:Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 229
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 230
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 231
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 232
    invoke-interface {v5, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 233
    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mRemovePendingPaymentResponseHandler:Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/RemovePendingPaymentResponseHandler;->getmRemovePendingPaymentResponseVo()Lae/gov/mol/vo/RemovePendingPaymentResponseVo;

    move-result-object v6

    iput-object v6, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mPendingPaymentResponseVo:Lae/gov/mol/vo/RemovePendingPaymentResponseVo;

    .line 234
    const/4 v6, 0x1

    iput-boolean v6, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->isDataRecieved:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v3    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v6, 0x0

    return-object v6

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f090239

    const v2, 0x7f090137

    const/4 v5, 0x0

    const v4, 0x7f0901b3

    const/4 v3, 0x0

    .line 248
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 251
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mWebserviceReponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$2(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/helper/CommonMethods;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    invoke-virtual {v2, v4}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 253
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$0(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 268
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 269
    return-void

    .line 254
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mWebserviceReponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$2(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/helper/CommonMethods;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    invoke-virtual {v2, v4}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 256
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$0(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 257
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mWebserviceReponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$2(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/helper/CommonMethods;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    invoke-virtual {v2, v4}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$0(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 262
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$2(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/helper/CommonMethods;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mPendingPaymentResponseVo:Lae/gov/mol/vo/RemovePendingPaymentResponseVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    invoke-virtual {v2, v4}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 263
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mPendingPaymentResponseVo:Lae/gov/mol/vo/RemovePendingPaymentResponseVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/RemovePendingPaymentResponseVo;->isSucess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$0(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionPosition:I
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$3(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)I

    move-result v1

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->removePendingTranscation(I)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$0(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 211
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;

    # getter for: Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->access$0(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->mWebserviceReponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 212
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 213
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 245
    return-void
.end method
