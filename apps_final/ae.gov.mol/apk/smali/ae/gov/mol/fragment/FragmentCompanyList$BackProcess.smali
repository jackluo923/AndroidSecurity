.class public Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentCompanyList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/FragmentCompanyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackProcess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mProgressDialog:Landroid/app/ProgressDialog;

.field mResultResponse:Ljava/lang/String;

.field mUserVo:Lae/gov/mol/vo/UserVo;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field final synthetic this$0:Lae/gov/mol/fragment/FragmentCompanyList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/FragmentCompanyList;)V
    .locals 1

    .prologue
    .line 547
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 550
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 565
    if-eqz p1, :cond_0

    .line 566
    const/4 v9, 0x0

    aget-object v4, p1, v9

    .line 567
    .local v4, "mStrCompanyNumber":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v5, p1, v9

    .line 568
    .local v5, "mStrListType":Ljava/lang/String;
    iget-object v9, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v10, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v10, v10, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v10}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v4, v5, v10, v11}, Lae/gov/mol/webservices/WebServiceResponse;->getEmployeeList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 573
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 576
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 577
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 578
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    new-instance v2, Lae/gov/xmlhandler/GetCompanyListHandler;

    invoke-direct {v2}, Lae/gov/xmlhandler/GetCompanyListHandler;-><init>()V

    .line 579
    .local v2, "mGetCompanyListHandler":Lae/gov/xmlhandler/GetCompanyListHandler;
    invoke-interface {v8, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 580
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 581
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v9, "UTF-8"

    invoke-virtual {v1, v9}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 582
    new-instance v9, Ljava/io/StringReader;

    iget-object v10, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 583
    invoke-interface {v8, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 584
    iget-object v9, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    invoke-virtual {v2}, Lae/gov/xmlhandler/GetCompanyListHandler;->getmGetCompanyVo()Lae/gov/mol/vo/GetEmployeeCompanyVo;

    move-result-object v10

    iput-object v10, v9, Lae/gov/mol/fragment/FragmentCompanyList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "mGetCompanyListHandler":Lae/gov/xmlhandler/GetCompanyListHandler;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 592
    :try_start_1
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 593
    .restart local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 594
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    new-instance v3, Lae/gov/xmlhandler/GetEmployeeHandler;

    invoke-direct {v3}, Lae/gov/xmlhandler/GetEmployeeHandler;-><init>()V

    .line 595
    .local v3, "mGetEmployeeHandler":Lae/gov/xmlhandler/GetEmployeeHandler;
    invoke-interface {v8, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 596
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 597
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v9, "UTF-8"

    invoke-virtual {v1, v9}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 598
    new-instance v9, Ljava/io/StringReader;

    iget-object v10, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 599
    invoke-interface {v8, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 600
    iget-object v9, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    invoke-virtual {v3}, Lae/gov/xmlhandler/GetEmployeeHandler;->getmArrayList()Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v9, Lae/gov/mol/fragment/FragmentCompanyList;->mGetEmployeeVo:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 606
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v3    # "mGetEmployeeHandler":Lae/gov/xmlhandler/GetEmployeeHandler;
    .end local v4    # "mStrCompanyNumber":Ljava/lang/String;
    .end local v5    # "mStrListType":Ljava/lang/String;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v7    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_1
    const/4 v9, 0x0

    return-object v9

    .line 585
    .restart local v4    # "mStrCompanyNumber":Ljava/lang/String;
    .restart local v5    # "mStrListType":Ljava/lang/String;
    .restart local v7    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 601
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 602
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 610
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    invoke-virtual {v2}, Lae/gov/mol/fragment/FragmentCompanyList;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 631
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    .line 612
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 613
    :cond_1
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v2}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v2

    if-nez v2, :cond_2

    .line 614
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v2, v2, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v2}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    const v4, 0x7f090099

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/FragmentCompanyList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 615
    :cond_2
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v2, v2, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v2, :cond_3

    .line 616
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v2, v2, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v2}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    const v4, 0x7f09009a

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/FragmentCompanyList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 619
    :cond_3
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    invoke-virtual {v2}, Lae/gov/mol/fragment/FragmentCompanyList;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 620
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v2, v2, Lae/gov/mol/fragment/FragmentCompanyList;->mGetEmployeeVo:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v2, v2, Lae/gov/mol/fragment/FragmentCompanyList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    if-eqz v2, :cond_4

    .line 621
    new-instance v1, Lae/gov/mol/fragment/FragmentEmployeeList;

    invoke-direct {v1}, Lae/gov/mol/fragment/FragmentEmployeeList;-><init>()V

    .line 622
    .local v1, "mFragmentEmployeeList":Lae/gov/mol/fragment/FragmentEmployeeList;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 623
    .local v0, "mBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v2, v2, Lae/gov/mol/fragment/FragmentCompanyList;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v2, v2, Lae/gov/mol/helper/Tags;->mCompanyList:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v3, v3, Lae/gov/mol/fragment/FragmentCompanyList;->mGetCompanyVo:Lae/gov/mol/vo/GetEmployeeCompanyVo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 624
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v2, v2, Lae/gov/mol/fragment/FragmentCompanyList;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v2, v2, Lae/gov/mol/helper/Tags;->mEmployeeList:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v3, v3, Lae/gov/mol/fragment/FragmentCompanyList;->mGetEmployeeVo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 625
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/FragmentEmployeeList;->setArguments(Landroid/os/Bundle;)V

    .line 626
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v2, v2, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-virtual {v2, v1, v3, v4}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 629
    .end local v0    # "mBundle":Landroid/os/Bundle;
    .end local v1    # "mFragmentEmployeeList":Lae/gov/mol/fragment/FragmentEmployeeList;
    :cond_4
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 556
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const-string v1, ""

    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/FragmentCompanyList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 557
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v1, v1, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 558
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 560
    return-void
.end method
