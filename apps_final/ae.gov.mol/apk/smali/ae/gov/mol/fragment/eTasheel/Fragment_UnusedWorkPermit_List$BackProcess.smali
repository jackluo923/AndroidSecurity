.class public Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_UnusedWorkPermit_List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;)V
    .locals 1

    .prologue
    .line 192
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 204
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mStrCompanyNo:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v7, v7, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mUserId:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lae/gov/mol/webservices/WebServiceResponse;->getgetUnusedWP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 206
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 212
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 213
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 214
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    new-instance v6, Lae/gov/xmlhandler/GetUnusedWPListHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/GetUnusedWPListHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mGetUnusedWPListHandler:Lae/gov/xmlhandler/GetUnusedWPListHandler;

    .line 215
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mGetUnusedWPListHandler:Lae/gov/xmlhandler/GetUnusedWPListHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 216
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 217
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 218
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 219
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 220
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mGetUnusedWPListHandler:Lae/gov/xmlhandler/GetUnusedWPListHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/GetUnusedWPListHandler;->getmGetUnusedWPListVos()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mArrayList:Ljava/util/ArrayList;

    .line 223
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 225
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    new-instance v6, Lae/gov/xmlhandler/Company_information_Handler;

    invoke-direct {v6}, Lae/gov/xmlhandler/Company_information_Handler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    .line 226
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 227
    new-instance v1, Lorg/xml/sax/InputSource;

    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 228
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 229
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 230
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 231
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/Company_information_Handler;->getmCompany_Information()Lae/gov/mol/vo/Company_InformationVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    .line 232
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->isDataRecieved:Z

    .line 235
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mArrayList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 236
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 237
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V

    .line 246
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 240
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_1
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v4, 0x7f090239

    const v3, 0x7f090137

    const v7, 0x7f09019f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 250
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 253
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v1}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v1

    if-nez v1, :cond_2

    .line 254
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 255
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    const v3, 0x7f090099

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 295
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v1, v1, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v1, :cond_3

    .line 257
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    invoke-virtual {v2, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 258
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    invoke-virtual {v2, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 260
    :cond_3
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v1, v1, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v1, :cond_4

    .line 261
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 262
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    const v3, 0x7f09009a

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 265
    :cond_4
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 266
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 267
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/GetUnusedWP;

    invoke-virtual {v1}, Lae/gov/mol/vo/GetUnusedWP;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "mCardNumber":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 269
    const-string v0, ""

    .line 272
    :cond_5
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 273
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mStrCompanyNo:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 275
    :cond_6
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    .line 276
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->sort(Ljava/util/ArrayList;)V

    .line 277
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    new-instance v2, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$ListBaseAdapter;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;)V

    iput-object v2, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$ListBaseAdapter;

    .line 278
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$ListBaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 282
    .end local v0    # "mCardNumber":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$2(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 283
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$2(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 285
    :cond_8
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mStrCompanyNo:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 288
    :cond_9
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$2(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 289
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$2(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v2

    invoke-virtual {v2}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 291
    :cond_a
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mStrCompanyNo:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v5, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 198
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 199
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 200
    return-void
.end method
