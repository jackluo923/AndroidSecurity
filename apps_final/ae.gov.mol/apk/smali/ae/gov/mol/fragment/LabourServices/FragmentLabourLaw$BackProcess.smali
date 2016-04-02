.class public Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentLabourLaw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;
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
.field private mErrorHandler:Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;

.field mResultResponse:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;)V
    .locals 1

    .prologue
    .line 82
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 95
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v5, v5, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    const-string v6, "LL"

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lae/gov/mol/webservices/WebServiceResponse;->getPDFFileLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 97
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 101
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 102
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 103
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    new-instance v5, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;

    invoke-direct {v5}, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;-><init>()V

    iput-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->mErrorHandler:Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;

    .line 104
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->mErrorHandler:Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 105
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 106
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 107
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 108
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 110
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v6, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->mErrorHandler:Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/ErrorHandlerandForgotPassWordHandler;->getmErrorHandlerVo()Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->access$0(Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 121
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    invoke-virtual {v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 125
    const-string v1, "dismiss in About us Pager"

    invoke-static {v1}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 127
    :cond_1
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v1, v1, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-virtual {v1}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    const v3, 0x7f090099

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 143
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v1, v1, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    if-eqz v1, :cond_4

    .line 130
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-virtual {v1}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    const v3, 0x7f090239

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 131
    :cond_4
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v1, v1, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    if-eqz v1, :cond_5

    .line 132
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-virtual {v1}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    const v3, 0x7f09009a

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 135
    :cond_5
    const-string v0, ""

    .line 136
    .local v0, "mPDFLink":Ljava/lang/String;
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    # getter for: Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->access$1(Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 137
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    # getter for: Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mErrorHandlerandForgotPassWordVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->access$1(Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_6
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->showPDF(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 89
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 90
    return-void
.end method
