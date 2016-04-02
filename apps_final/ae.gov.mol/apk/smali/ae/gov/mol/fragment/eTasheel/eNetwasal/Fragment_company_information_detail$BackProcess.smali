.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_company_information_detail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;)V
    .locals 1

    .prologue
    .line 144
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 155
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->strNumber:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v7, v7, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v7}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v8

    .line 155
    invoke-virtual {v5, v6, v7, v8}, Lae/gov/mol/webservices/WebServiceResponse;->getCompany_Information(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response..."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 163
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 164
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 165
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    new-instance v6, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompanyQuotaDetailsHandler:Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;

    .line 166
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompanyQuotaDetailsHandler:Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 167
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 168
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 169
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 170
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 171
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompanyQuotaDetailsHandler:Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->getmComQuotadetailsList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mList:Ljava/util/ArrayList;

    .line 172
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->isDataRecieved:Z

    .line 174
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 176
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    new-instance v6, Lae/gov/xmlhandler/Company_information_Handler;

    invoke-direct {v6}, Lae/gov/xmlhandler/Company_information_Handler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    .line 177
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 178
    new-instance v1, Lorg/xml/sax/InputSource;

    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 179
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 180
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 181
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 182
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/Company_information_Handler;->getmCompany_Information()Lae/gov/mol/vo/Company_InformationVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    .line 183
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->isDataRecieved:Z

    .line 185
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 186
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 187
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V

    .line 189
    :cond_0
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    if-nez v5, :cond_1

    .line 190
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_1
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    const v6, 0x7f09019f

    const v3, 0x7f090137

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 209
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 274
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 214
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    .line 215
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    .line 214
    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 216
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 218
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 220
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 221
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 223
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mLinearLayoutfragment_company_info_detail_scrollview_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewUsed:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getUsed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewCategory:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewApproved:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getApproved()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 242
    :goto_2
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    .line 244
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    if-eqz v0, :cond_6

    .line 246
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mLinearLayoutfragment_company_info_detail_scrollview_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompamy_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompany_status()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewLicenseNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCom_license_no()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewLicenseExpiryDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/Company_InformationVo;->getCom_license_end()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewLicenseType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getComlictype_desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewLicenseissuedPlace:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getComlicplace_desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCom_phone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewFax:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCom_fax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTExtTextViewpoBoxNo:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCom_po_box()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTExtTextViewEmirate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getEmirate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTExtTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getLabourOffice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewtotalEmployee:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getTotalEmployees()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewAbscond:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getAbscond()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    goto/16 :goto_1

    .line 231
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCompanyNameEnglish()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewQuotaType:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getQuotaTypeEnglish()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 236
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCompanyNameArabic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewQuotaType:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getQuotaTypeArabic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 263
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->strNumber:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    .line 264
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    .line 263
    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 267
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 268
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 270
    :cond_8
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->strNumber:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    .line 271
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    .line 270
    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 149
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 150
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 151
    return-void
.end method
