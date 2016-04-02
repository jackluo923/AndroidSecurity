.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_NawakasList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)V
    .locals 1

    .prologue
    .line 164
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 176
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->strNumber:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v7, v7, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v7}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lae/gov/mol/webservices/WebServiceResponse;->getNawakasList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response..."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 182
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 183
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 184
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    new-instance v6, Lae/gov/xmlhandler/NawakasHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/NawakasHandler;-><init>()V

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;Lae/gov/xmlhandler/NawakasHandler;)V

    .line 185
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mNawakasHandler:Lae/gov/xmlhandler/NawakasHandler;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)Lae/gov/xmlhandler/NawakasHandler;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 186
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 187
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 188
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 189
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 190
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mNawakasHandler:Lae/gov/xmlhandler/NawakasHandler;
    invoke-static {v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)Lae/gov/xmlhandler/NawakasHandler;

    move-result-object v6

    invoke-virtual {v6}, Lae/gov/xmlhandler/NawakasHandler;->getmNawakasDataVos()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mList:Ljava/util/ArrayList;

    .line 191
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->isDataRecieved:Z

    .line 193
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 194
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 195
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V

    .line 207
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 198
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_1
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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
    const v3, 0x7f090239

    const v6, 0x7f09019f

    const v2, 0x7f090137

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 211
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 214
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 216
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 221
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 223
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 226
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 227
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 228
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    .line 229
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    invoke-direct {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)V

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;

    .line 230
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 233
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 236
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->strNumber:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 239
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 240
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 242
    :cond_8
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->strNumber:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 170
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 171
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 172
    return-void
.end method
