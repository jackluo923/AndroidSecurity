.class public Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;
.super Landroid/os/AsyncTask;
.source "FragmentMyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/LabourServices/FragmentMyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NationalityProcess"
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

.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V
    .locals 1

    .prologue
    .line 332
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 334
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 346
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v5, v5, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lae/gov/mol/webservices/WebServiceResponse;->getGetNationalities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->mResultResponse:Ljava/lang/String;

    .line 348
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 353
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 354
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 355
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    new-instance v6, Lae/gov/xmlhandler/GetNationalitiesHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/GetNationalitiesHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mGetNationalitiesHandler:Lae/gov/xmlhandler/GetNationalitiesHandler;

    .line 356
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v5, v5, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mGetNationalitiesHandler:Lae/gov/xmlhandler/GetNationalitiesHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 357
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 358
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 359
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 360
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 361
    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v6, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v6, v6, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mGetNationalitiesHandler:Lae/gov/xmlhandler/GetNationalitiesHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/GetNationalitiesHandler;->getmArrayListGetnationalitiesVos()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 370
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 338
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$NationalityProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 339
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 340
    return-void
.end method
