.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentCompanyCategoryInfoDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;)V
    .locals 1

    .prologue
    .line 132
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 144
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->strNumber:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v7, v7, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v7}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lae/gov/mol/webservices/WebServiceResponse;->getCompany_Information(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 145
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 150
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 151
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 152
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    new-instance v6, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompanyQuotaDetailsHandler:Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;

    .line 153
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompanyQuotaDetailsHandler:Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 154
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 155
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 156
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 157
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 158
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompanyQuotaDetailsHandler:Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;->getmComQuotadetailsList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mList:Ljava/util/ArrayList;

    .line 159
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->isDataRecieved:Z

    .line 161
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 163
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    new-instance v6, Lae/gov/xmlhandler/Company_information_Handler;

    invoke-direct {v6}, Lae/gov/xmlhandler/Company_information_Handler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    .line 164
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 165
    new-instance v1, Lorg/xml/sax/InputSource;

    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 166
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 167
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 168
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 169
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/Company_information_Handler;->getmCompany_Information()Lae/gov/mol/vo/Company_InformationVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    .line 170
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->isDataRecieved:Z

    .line 172
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 173
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 174
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V

    .line 184
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 177
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_1
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    .line 188
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 191
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 248
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 195
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 200
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 203
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 204
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 205
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompamy_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewOldCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompany_code_old()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompany_status()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewLicenseNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCom_license_no()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewLicenseExpiryDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/Company_InformationVo;->getCom_license_end()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewLicenseType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getComlictype_desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewLicenseissuedPlace:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getComlicplace_desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCom_phone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewFax:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCom_fax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTExtTextViewpoBoxNo:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCom_po_box()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTExtTextViewEmirate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getEmirate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTExtTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getLabourOffice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewApproved:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getApproved()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewUsed:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getUsed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewtotalEmployee:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getTotalEmployees()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewAbscond:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getAbscond()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewCategory:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    :goto_2
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    goto/16 :goto_1

    .line 226
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCompanyNameEnglish()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewQuotaType:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getQuotaTypeEnglish()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 231
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCompanyNameArabic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewQuotaType:Landroid/widget/TextView;

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getQuotaTypeArabic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 239
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->strNumber:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 242
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 243
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 245
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->strNumber:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 224
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
    .line 138
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfoDetail;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 139
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 140
    return-void
.end method
