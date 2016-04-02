.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentCompanyCategoryInfolist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;)V
    .locals 1

    .prologue
    .line 176
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 188
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mStringCompanyNumber:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v7, v7, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v7}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lae/gov/mol/webservices/WebServiceResponse;->getCompanyCategoryInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "response..."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 195
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 196
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 197
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    new-instance v6, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCompanyCategoryInfoHandler:Lae/gov/xmlhandler/CompanyCategoryInfoHandler;

    .line 198
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCompanyCategoryInfoHandler:Lae/gov/xmlhandler/CompanyCategoryInfoHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 199
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 200
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 201
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 202
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 203
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCompanyCategoryInfoHandler:Lae/gov/xmlhandler/CompanyCategoryInfoHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->getmArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mList:Ljava/util/ArrayList;

    .line 204
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->isDataRecieved:Z

    .line 206
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 208
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    new-instance v6, Lae/gov/xmlhandler/CompanyStatusInfoHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/CompanyStatusInfoHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCompanyStatusInfoHandler:Lae/gov/xmlhandler/CompanyStatusInfoHandler;

    .line 209
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCompanyStatusInfoHandler:Lae/gov/xmlhandler/CompanyStatusInfoHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 210
    new-instance v1, Lorg/xml/sax/InputSource;

    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 211
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 212
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 213
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 214
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCompanyStatusInfoHandler:Lae/gov/xmlhandler/CompanyStatusInfoHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/CompanyStatusInfoHandler;->getmCompanyStatusInfoVo()Lae/gov/mol/vo/CompanyStatusInfoVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;

    .line 215
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->isDataRecieved:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 218
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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
    const v6, 0x7f09019f

    const v3, 0x7f090137

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 227
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 230
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 255
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 237
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 238
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 239
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 243
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 244
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 245
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    .line 246
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$ListBaseAdapter;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    invoke-direct {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;)V

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$ListBaseAdapter;

    .line 247
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 249
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->strInputName:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mStringCompanyNumber:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 252
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->strInputName:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mStringCompanyNumber:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 182
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfolist;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 183
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 184
    return-void
.end method
