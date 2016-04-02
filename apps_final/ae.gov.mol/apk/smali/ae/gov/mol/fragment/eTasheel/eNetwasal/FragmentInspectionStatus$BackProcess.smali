.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentInspectionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;)V
    .locals 1

    .prologue
    .line 189
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 201
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->strNumber:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lae/gov/mol/webservices/WebServiceResponse;->getInspectionStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 202
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 208
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 209
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 210
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    new-instance v6, Lae/gov/xmlhandler/InspectionStatusHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/InspectionStatusHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mDetailsHandler:Lae/gov/xmlhandler/InspectionStatusHandler;

    .line 211
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mDetailsHandler:Lae/gov/xmlhandler/InspectionStatusHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 212
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 213
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 214
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 215
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 216
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mDetailsHandler:Lae/gov/xmlhandler/InspectionStatusHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/InspectionStatusHandler;->getmArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mArrayList:Ljava/util/ArrayList;

    .line 217
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->isDataRecieved:Z

    .line 219
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mArrayList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 220
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 221
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V

    .line 230
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 224
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_1
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    const v3, 0x7f0901a2

    const v2, 0x7f090137

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 234
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 237
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 239
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 242
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 244
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 246
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 249
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 250
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 251
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    .line 252
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    invoke-direct {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;)V

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;

    .line 253
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 255
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 256
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 258
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 261
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 262
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 264
    :cond_8
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 195
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionStatus;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 196
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 197
    return-void
.end method
