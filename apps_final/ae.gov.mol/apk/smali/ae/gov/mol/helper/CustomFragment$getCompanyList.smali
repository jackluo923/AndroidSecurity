.class public Lae/gov/mol/helper/CustomFragment$getCompanyList;
.super Landroid/os/AsyncTask;
.source "CustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/helper/CustomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "getCompanyList"
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
.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCompanyWebserviceStatus:Lae/gov/mol/helper/CustomFragment$CompanyWebserviceStatus;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mPersonCode:Ljava/lang/String;

.field mResultResponse_ExpiredLabourList:Ljava/lang/String;

.field mResultResponse_OwnerCompanyStatistics:Ljava/lang/String;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field final synthetic this$0:Lae/gov/mol/helper/CustomFragment;

.field url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lae/gov/mol/helper/CustomFragment;Ljava/lang/String;Lae/gov/mol/helper/CustomFragmentActivity;Lae/gov/mol/helper/CustomFragment$CompanyWebserviceStatus;)V
    .locals 1
    .param p2, "mPersonCode"    # Ljava/lang/String;
    .param p3, "mCustomFragmentActivity"    # Lae/gov/mol/helper/CustomFragmentActivity;
    .param p4, "mCompanyWebserviceStatus"    # Lae/gov/mol/helper/CustomFragment$CompanyWebserviceStatus;

    .prologue
    .line 459
    iput-object p1, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mResultResponse_OwnerCompanyStatistics:Ljava/lang/String;

    .line 452
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mResultResponse_ExpiredLabourList:Ljava/lang/String;

    .line 453
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mPersonCode:Ljava/lang/String;

    .line 460
    iput-object p2, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mPersonCode:Ljava/lang/String;

    .line 461
    iput-object p3, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 462
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    invoke-direct {v0, p3}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 463
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    invoke-direct {v0, p3}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 464
    iput-object p4, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mCompanyWebserviceStatus:Lae/gov/mol/helper/CustomFragment$CompanyWebserviceStatus;

    .line 466
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/helper/CustomFragment$getCompanyList;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 476
    iget-object v6, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v7, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mPersonCode:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lae/gov/mol/webservices/WebServiceResponse;->getDashBoard(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mResultResponse_OwnerCompanyStatistics:Ljava/lang/String;

    .line 477
    iget-object v6, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mResultResponse_OwnerCompanyStatistics:Ljava/lang/String;

    invoke-static {v6}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 478
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 482
    .local v4, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 483
    .local v3, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 484
    .local v5, "xr":Lorg/xml/sax/XMLReader;
    new-instance v2, Lae/gov/xmlhandler/OwnerStatisticsHandler;

    invoke-direct {v2}, Lae/gov/xmlhandler/OwnerStatisticsHandler;-><init>()V

    .line 485
    .local v2, "mStatisticsHandler":Lae/gov/xmlhandler/OwnerStatisticsHandler;
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 486
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 487
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 488
    new-instance v6, Ljava/io/StringReader;

    iget-object v7, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mResultResponse_OwnerCompanyStatistics:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 489
    invoke-interface {v5, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 491
    invoke-virtual {v2}, Lae/gov/xmlhandler/OwnerStatisticsHandler;->getmArrayList()Ljava/util/ArrayList;

    move-result-object v6

    sput-object v6, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "mStatisticsHandler":Lae/gov/xmlhandler/OwnerStatisticsHandler;
    .end local v3    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v6, 0x0

    return-object v6

    .line 493
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/helper/CustomFragment$getCompanyList;->onPostExecute(Ljava/lang/Void;)V

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
    const v6, 0x7f090239

    const v5, 0x7f090137

    const v3, 0x7f090126

    const/4 v4, 0x0

    .line 503
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    iget-object v0, v0, Lae/gov/mol/helper/CustomFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 506
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    iget-object v0, v0, Lae/gov/mol/helper/CustomFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :cond_1
    :goto_1
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 511
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 512
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v1, v5}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 533
    :goto_2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 513
    :cond_2
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_3

    .line 514
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v1, v5}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 515
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 518
    :cond_3
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_4

    .line 519
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v1, v6}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 520
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v1, v6}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 523
    :cond_4
    sget-object v0, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 524
    sget-object v0, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 525
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v1, v5}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_2

    .line 527
    :cond_5
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mCompanyWebserviceStatus:Lae/gov/mol/helper/CustomFragment$CompanyWebserviceStatus;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lae/gov/mol/helper/CustomFragment$CompanyWebserviceStatus;->OnCompanyWebserviceStatus(Z)Z

    goto/16 :goto_2

    .line 530
    :cond_6
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v1, v5}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    invoke-virtual {v3}, Lae/gov/mol/helper/CustomFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_2

    .line 507
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 470
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/helper/CustomFragment$getCompanyList;->this$0:Lae/gov/mol/helper/CustomFragment;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/helper/CustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/helper/CustomFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 471
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 472
    return-void
.end method
