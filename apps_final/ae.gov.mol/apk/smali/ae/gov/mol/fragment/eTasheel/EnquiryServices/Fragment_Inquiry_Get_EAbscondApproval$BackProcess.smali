.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_Inquiry_Get_EAbscondApproval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;)V
    .locals 1

    .prologue
    .line 202
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 214
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strNumber:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lae/gov/mol/webservices/WebServiceResponse;->getEnq_GetEAbscondApproval(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 216
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-static {v3}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 221
    .local v2, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 222
    .local v1, "sp":Ljavax/xml/parsers/SAXParser;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    iput-object v4, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->xr:Lorg/xml/sax/XMLReader;

    .line 223
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    new-instance v4, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$ItemXMLHandler;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    invoke-direct {v4, v5}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$ItemXMLHandler;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;)V

    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->access$0(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$ItemXMLHandler;)V

    .line 224
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->xr:Lorg/xml/sax/XMLReader;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->myXMLHandler:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$ItemXMLHandler;
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->access$1(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$ItemXMLHandler;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 225
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v4, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->inputSource:Lorg/xml/sax/InputSource;

    .line 226
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->inputSource:Lorg/xml/sax/InputSource;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->inputSource:Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 228
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->xr:Lorg/xml/sax/XMLReader;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->inputSource:Lorg/xml/sax/InputSource;

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 230
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 231
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    iput-object v4, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->xr:Lorg/xml/sax/XMLReader;

    .line 232
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    new-instance v4, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$ItemXMLHandlerAbscond;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    invoke-direct {v4, v5}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$ItemXMLHandlerAbscond;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;)V

    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$ItemXMLHandlerAbscond;)V

    .line 233
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->xr:Lorg/xml/sax/XMLReader;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mXmlHandlerAbscond:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$ItemXMLHandlerAbscond;
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->access$3(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$ItemXMLHandlerAbscond;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 234
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v4, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->inputSource:Lorg/xml/sax/InputSource;

    .line 235
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->inputSource:Lorg/xml/sax/InputSource;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->inputSource:Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 237
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->xr:Lorg/xml/sax/XMLReader;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->inputSource:Lorg/xml/sax/InputSource;

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 239
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-boolean v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->isDataRecieved:Z

    if-nez v3, :cond_0

    .line 240
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v4

    invoke-static {v3, v4}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->access$4(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1    # "sp":Ljavax/xml/parsers/SAXParser;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 243
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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
    const v4, 0x7f090239

    const v2, 0x7f090137

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 252
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 255
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->access$5(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 257
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 325
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->access$5(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 260
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 261
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_4

    .line 262
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    invoke-virtual {v1, v4}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->access$5(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 263
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    invoke-virtual {v1, v4}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 267
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-boolean v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->isDataRecieved:Z

    if-eqz v0, :cond_5

    .line 269
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewCompanyNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strCompanyNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewCategory:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewLicenseNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strLicenseNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewExpiryDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strExpiryDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewPOBOX:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strPOBOX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewCompanyImmigrationCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strCompanyImmigrationCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewCardNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strCardNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewCardTypeCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strCardTypeCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewCardExpiryDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strCardExpiryDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewCardIssueDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strCardIssueDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewPassportNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strPassportNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewPassportExpiryDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strPassportExpiryDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewVisaNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strVisaNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewemp_per_code:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->stremp_per_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewper_code:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strper_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewNatCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strNatCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Jd :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strAbscondStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 312
    :goto_2
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->setBooleanData(Z)V

    goto/16 :goto_1

    .line 290
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strCompanyNameEnglish:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewEmirate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strEmirate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strLabourOffice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strNationality:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strPersonNameEnglish:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewCardType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strCardType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewJob:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strJob:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 299
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strCompanyNameArabic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewEmirate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strEmirateArb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strLabourOfficeArb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strNationalityArb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strPersonNameArabic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewCardType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strCardTypeArb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewJob:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strJobArb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 318
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->access$6(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 319
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->access$6(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->access$5(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 321
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    const v2, 0x7f0901a1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->strNumber:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->access$5(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v5, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 288
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
    .line 208
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_EAbscondApproval;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 209
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 210
    return-void
.end method
