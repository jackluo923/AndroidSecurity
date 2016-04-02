.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentCompanyCategoryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;


# direct methods
.method private constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)V
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 116
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->strCompanyNumber:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v7, v7, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v7}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lae/gov/mol/webservices/WebServiceResponse;->getCompanyCategoryInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 118
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 122
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 123
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 124
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    new-instance v6, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;-><init>()V

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Lae/gov/xmlhandler/CompanyCategoryInfoHandler;)V

    .line 125
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyCategoryInfoHandler:Lae/gov/xmlhandler/CompanyCategoryInfoHandler;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/xmlhandler/CompanyCategoryInfoHandler;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 126
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 127
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 128
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 129
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 130
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyCategoryInfoHandler:Lae/gov/xmlhandler/CompanyCategoryInfoHandler;
    invoke-static {v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/xmlhandler/CompanyCategoryInfoHandler;

    move-result-object v6

    invoke-virtual {v6}, Lae/gov/xmlhandler/CompanyCategoryInfoHandler;->getmArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Ljava/util/ArrayList;)V

    .line 133
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 135
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    new-instance v6, Lae/gov/xmlhandler/CompanyStatusInfoHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/CompanyStatusInfoHandler;-><init>()V

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Lae/gov/xmlhandler/CompanyStatusInfoHandler;)V

    .line 136
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoHandler:Lae/gov/xmlhandler/CompanyStatusInfoHandler;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/xmlhandler/CompanyStatusInfoHandler;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 137
    new-instance v1, Lorg/xml/sax/InputSource;

    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 138
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 139
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 140
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 141
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoHandler:Lae/gov/xmlhandler/CompanyStatusInfoHandler;
    invoke-static {v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/xmlhandler/CompanyStatusInfoHandler;

    move-result-object v6

    invoke-virtual {v6}, Lae/gov/xmlhandler/CompanyStatusInfoHandler;->getmCompanyStatusInfoVo()Lae/gov/mol/vo/CompanyStatusInfoVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$5(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Lae/gov/mol/vo/CompanyStatusInfoVo;)V

    .line 144
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$6(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$7(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/mol/vo/CompanyStatusInfoVo;

    move-result-object v5

    if-nez v5, :cond_0

    .line 145
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$8(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V

    .line 148
    :cond_0
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 164
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 150
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v4    # "xr":Lorg/xml/sax/XMLReader;
    :pswitch_0
    const/4 v5, 0x1

    sput v5, Lae/gov/mol/vo/CompanyCategoryInfoVo;->STATUS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v4    # "xr":Lorg/xml/sax/XMLReader;
    :pswitch_1
    const/4 v5, 0x2

    :try_start_1
    sput v5, Lae/gov/mol/vo/CompanyCategoryInfoVo;->STATUS:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const v6, 0x7f090239

    const v2, 0x7f090137

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 167
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 170
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$9(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 172
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 214
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$9(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 176
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    invoke-virtual {v1, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 178
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$9(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 180
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 184
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$6(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$7(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/mol/vo/CompanyStatusInfoVo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewCompayCategory:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$7(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/mol/vo/CompanyStatusInfoVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyStatusInfoVo;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewCompayCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$7(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/mol/vo/CompanyStatusInfoVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyStatusInfoVo;->getCompanyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewTotalOfEmployee:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$7(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/mol/vo/CompanyStatusInfoVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyStatusInfoVo;->getEmployeeCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v1, v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$10(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;)V

    .line 200
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mExpandableListViewNationality:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->CompanyCategoryExpandableListAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$11(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$CompanyCategoryExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 211
    :goto_3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 191
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewCompayName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$7(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/mol/vo/CompanyStatusInfoVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyStatusInfoVo;->getCompanyName_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 194
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewCompayName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$7(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/mol/vo/CompanyStatusInfoVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyStatusInfoVo;->getCompanyName_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 204
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$12(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 205
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$12(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$9(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_3

    .line 207
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    const v2, 0x7f09019f

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->access$9(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_3

    .line 189
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
    .line 110
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 111
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 112
    return-void
.end method
