.class public Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_ContactUs_Pager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;
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

.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;)V
    .locals 1

    .prologue
    .line 246
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 248
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 257
    iget-object v5, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v4, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v4, v4, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    const-string v6, "ALL"

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v8, v8, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v4, v6, v7, v8}, Lae/gov/mol/webservices/WebServiceResponse;->getContactUsArrayList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/gov/mol/vo/ContactUsVo;

    iput-object v4, v5, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    .line 258
    iget-object v4, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v4, v4, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v4}, Lae/gov/mol/webservices/WebServiceResponse;->getMOLOfficesArrayList()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response..."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 260
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 264
    .local v2, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 265
    .local v1, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 266
    .local v3, "xr":Lorg/xml/sax/XMLReader;
    iget-object v4, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    new-instance v5, Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-direct {v5}, Lae/gov/xmlhandler/ServiceCenterListHandler;-><init>()V

    iput-object v5, v4, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    .line 267
    iget-object v4, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v4, v4, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 268
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 269
    .local v0, "inputSource":Lorg/xml/sax/InputSource;
    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 270
    new-instance v4, Ljava/io/StringReader;

    iget-object v5, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 271
    invoke-interface {v3, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 272
    iget-object v4, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v5, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v5, v5, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

    invoke-virtual {v5}, Lae/gov/xmlhandler/ServiceCenterListHandler;->getmServiceCenterDatas()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->access$0(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v0    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v1    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 275
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 285
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 287
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 289
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->finish()V

    .line 313
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 314
    return-void

    .line 290
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 294
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 298
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    # getter for: Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mServiceCenterDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->access$1(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    # getter for: Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mServiceCenterDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->access$1(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 299
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentContactUsNearBy:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    # getter for: Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mServiceCenterDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->access$1(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->UpdateListFromLocationService(Ljava/util/ArrayList;)V

    .line 300
    sget-object v0, Lae/gov/mol/MolApplication;->mServiceCenterList:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 301
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    # getter for: Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mServiceCenterDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->access$1(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lae/gov/mol/MolApplication;->mServiceCenterList:Ljava/util/ArrayList;

    .line 304
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    if-eqz v0, :cond_1

    .line 306
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentOffice:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v1, v1, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->updateView(Lae/gov/mol/vo/ContactUsVo;)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 251
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 252
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 253
    return-void
.end method
