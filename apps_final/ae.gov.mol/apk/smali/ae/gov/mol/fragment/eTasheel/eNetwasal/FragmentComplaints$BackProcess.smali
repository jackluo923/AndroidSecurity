.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentComplaints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;)V
    .locals 1

    .prologue
    .line 191
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 203
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->strNumber:Ljava/lang/String;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v5}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-virtual/range {v0 .. v6}, Lae/gov/mol/webservices/WebServiceResponse;->getComplaints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v10

    .line 211
    .local v10, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v10}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v9

    .line 212
    .local v9, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v11

    .line 214
    .local v11, "xr":Lorg/xml/sax/XMLReader;
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    new-instance v1, Lae/gov/xmlhandler/ComplaintHandler;

    invoke-direct {v1}, Lae/gov/xmlhandler/ComplaintHandler;-><init>()V

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mComplaintHandler:Lae/gov/xmlhandler/ComplaintHandler;

    .line 215
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mComplaintHandler:Lae/gov/xmlhandler/ComplaintHandler;

    invoke-interface {v11, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 216
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8}, Lorg/xml/sax/InputSource;-><init>()V

    .line 217
    .local v8, "inputSource":Lorg/xml/sax/InputSource;
    const-string v0, "UTF-8"

    invoke-virtual {v8, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 219
    invoke-interface {v11, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 220
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mComplaintHandler:Lae/gov/xmlhandler/ComplaintHandler;

    invoke-virtual {v1}, Lae/gov/xmlhandler/ComplaintHandler;->getmArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mArrayList:Ljava/util/ArrayList;

    .line 222
    invoke-virtual {v10}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v9

    .line 223
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v11

    .line 224
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    new-instance v1, Lae/gov/xmlhandler/Company_information_Handler;

    invoke-direct {v1}, Lae/gov/xmlhandler/Company_information_Handler;-><init>()V

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    .line 225
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    invoke-interface {v11, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 226
    new-instance v8, Lorg/xml/sax/InputSource;

    .end local v8    # "inputSource":Lorg/xml/sax/InputSource;
    invoke-direct {v8}, Lorg/xml/sax/InputSource;-><init>()V

    .line 227
    .restart local v8    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v0, "UTF-8"

    invoke-virtual {v8, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 229
    invoke-interface {v11, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 230
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    invoke-virtual {v1}, Lae/gov/xmlhandler/Company_information_Handler;->getmCompany_Information()Lae/gov/mol/vo/Company_InformationVo;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    .line 231
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->isDataRecieved:Z

    .line 233
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 235
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-static {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V

    .line 243
    .end local v8    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v9    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v11    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 237
    .restart local v8    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v9    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v11    # "xr":Lorg/xml/sax/XMLReader;
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-static {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v8    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v9    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v11    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v7

    .line 240
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    .line 249
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 254
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 256
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    .line 260
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mView:Landroid/view/View;

    .line 259
    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 261
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 262
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 263
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 265
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 266
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 267
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    .line 268
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$ListBaseAdapter;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    invoke-direct {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;)V

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$ListBaseAdapter;

    .line 269
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 271
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 272
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 274
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->strNumber:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mView:Landroid/view/View;

    .line 274
    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 278
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 279
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 281
    :cond_8
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->strNumber:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    .line 282
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mView:Landroid/view/View;

    .line 281
    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 197
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 198
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 199
    return-void
.end method
