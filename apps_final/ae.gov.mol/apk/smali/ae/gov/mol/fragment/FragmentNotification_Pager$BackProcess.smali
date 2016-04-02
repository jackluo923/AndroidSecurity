.class public Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentNotification_Pager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/FragmentNotification_Pager;
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
.field final synthetic this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/FragmentNotification_Pager;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 332
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v6, v6, Lae/gov/mol/fragment/FragmentNotification_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v6}, Lae/gov/mol/webservices/WebServiceResponse;->getPublicNotification()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/FragmentNotification_Pager;->access$0(Lae/gov/mol/fragment/FragmentNotification_Pager;Ljava/lang/String;)V

    .line 333
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    # getter for: Lae/gov/mol/fragment/FragmentNotification_Pager;->mResultResponse:Ljava/lang/String;
    invoke-static {v5}, Lae/gov/mol/fragment/FragmentNotification_Pager;->access$1(Lae/gov/mol/fragment/FragmentNotification_Pager;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 339
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 340
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 341
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    new-instance v6, Lae/gov/xmlhandler/PublicNotificationHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/PublicNotificationHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/FragmentNotification_Pager;->mPublicNotificationHandler:Lae/gov/xmlhandler/PublicNotificationHandler;

    .line 342
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v5, v5, Lae/gov/mol/fragment/FragmentNotification_Pager;->mPublicNotificationHandler:Lae/gov/xmlhandler/PublicNotificationHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 343
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 344
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 345
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    # getter for: Lae/gov/mol/fragment/FragmentNotification_Pager;->mResultResponse:Ljava/lang/String;
    invoke-static {v6}, Lae/gov/mol/fragment/FragmentNotification_Pager;->access$1(Lae/gov/mol/fragment/FragmentNotification_Pager;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 346
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 347
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v6, v6, Lae/gov/mol/fragment/FragmentNotification_Pager;->mPublicNotificationHandler:Lae/gov/xmlhandler/PublicNotificationHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/PublicNotificationHandler;->getmArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/FragmentNotification_Pager;->mArrayListPublicNotificationVos:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v6, v6, Lae/gov/mol/fragment/FragmentNotification_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v7, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    invoke-virtual {v7}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lae/gov/mol/webservices/WebServiceResponse;->getPrivateNotification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/FragmentNotification_Pager;->access$0(Lae/gov/mol/fragment/FragmentNotification_Pager;Ljava/lang/String;)V

    .line 356
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    # getter for: Lae/gov/mol/fragment/FragmentNotification_Pager;->mResultResponse:Ljava/lang/String;
    invoke-static {v5}, Lae/gov/mol/fragment/FragmentNotification_Pager;->access$1(Lae/gov/mol/fragment/FragmentNotification_Pager;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 361
    :try_start_1
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 362
    .restart local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 363
    .restart local v4    # "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    new-instance v6, Lae/gov/xmlhandler/PrivateNotificationHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/PrivateNotificationHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/FragmentNotification_Pager;->mPrivateNotificationHandler:Lae/gov/xmlhandler/PrivateNotificationHandler;

    .line 364
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v5, v5, Lae/gov/mol/fragment/FragmentNotification_Pager;->mPrivateNotificationHandler:Lae/gov/xmlhandler/PrivateNotificationHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 365
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 366
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 367
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    # getter for: Lae/gov/mol/fragment/FragmentNotification_Pager;->mResultResponse:Ljava/lang/String;
    invoke-static {v6}, Lae/gov/mol/fragment/FragmentNotification_Pager;->access$1(Lae/gov/mol/fragment/FragmentNotification_Pager;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 368
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 369
    iget-object v5, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v6, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v6, v6, Lae/gov/mol/fragment/FragmentNotification_Pager;->mPrivateNotificationHandler:Lae/gov/xmlhandler/PrivateNotificationHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/PrivateNotificationHandler;->getmArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/FragmentNotification_Pager;->mArrayListPrivateNotificationVos:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :goto_1
    const/4 v5, 0x0

    return-object v5

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 373
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    .line 383
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 385
    const-string v0, "dismiss in About us Pager"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 390
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->finish()V

    .line 400
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 401
    return-void

    .line 391
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 393
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 394
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 396
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mArrayListPublicNotificationVos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mArrayListPublicNotificationVos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 397
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mFragmentPublicNotification:Lae/gov/mol/fragment/FragmentPublicNotification;

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v1, v1, Lae/gov/mol/fragment/FragmentNotification_Pager;->mArrayListPublicNotificationVos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/FragmentPublicNotification;->updateList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 325
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 326
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 327
    return-void
.end method
