.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackProcess"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;
    }
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 150
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->strNumber:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lae/gov/mol/webservices/WebServiceResponse;->getEnq_GetEnq_GetImmigrationEstablishmentLinkStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 152
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 156
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 157
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 158
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    new-instance v6, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;

    invoke-direct {v6, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;)V

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->access$0(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;)V

    .line 159
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->myXMLHandler:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->access$1(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 160
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 161
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 162
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 163
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 164
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-boolean v5, v5, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->isDataRecieved:Z

    if-nez v5, :cond_0

    .line 165
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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
    const v7, 0x7f090239

    const v6, 0x7f09019f

    const v2, 0x7f090137

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 177
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 180
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->access$3(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 182
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->access$3(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 185
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    invoke-virtual {v1, v7}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->access$3(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 188
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    invoke-virtual {v1, v7}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 191
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-boolean v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->isDataRecieved:Z

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyCodeMol:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOLCOMCODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyCodeMoi:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOICOMCODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrSTATUS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyInStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrINTSTATUS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyRemark:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrREMARK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Form;->setBooleanData(Z)V

    .line 200
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 202
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyNameMol:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOLCOMNAMEENG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyNameMoi:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOICOMNAMEENG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 206
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyNameMol:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOLCOMNAMEARB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyNameMoi:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOICOMNAMEARB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 212
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    # getter for: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->access$4(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 213
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->strNumber:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->access$3(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 215
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->strNumber:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->access$3(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 144
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 145
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 146
    return-void
.end method
