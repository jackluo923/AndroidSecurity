.class public Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentLabourServicesMySalaryDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;
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
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/SaveSalaryComplainVo;",
            ">;"
        }
    .end annotation
.end field

.field mResultResponse:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;)V
    .locals 1

    .prologue
    .line 254
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 255
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 266
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringCompanyNumber:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringCardNumber:Ljava/lang/String;

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringMobileNumber:Ljava/lang/String;

    iget-object v4, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v4, v4, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringRadioButtonComplaint:Ljava/lang/String;

    iget-object v5, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v5, v5, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringCheckBoxComplaint:Ljava/lang/String;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lae/gov/mol/webservices/WebServiceResponse;->getSaveSalaryDetailsStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 268
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v11

    .line 273
    .local v11, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v11}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v10

    .line 274
    .local v10, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v10}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v12

    .line 275
    .local v12, "xr":Lorg/xml/sax/XMLReader;
    new-instance v9, Lae/gov/xmlhandler/SaveSalaryComplainHandler;

    invoke-direct {v9}, Lae/gov/xmlhandler/SaveSalaryComplainHandler;-><init>()V

    .line 276
    .local v9, "mSalaryComplainHandler":Lae/gov/xmlhandler/SaveSalaryComplainHandler;
    invoke-interface {v12, v9}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 277
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8}, Lorg/xml/sax/InputSource;-><init>()V

    .line 278
    .local v8, "inputSource":Lorg/xml/sax/InputSource;
    const-string v0, "UTF-8"

    invoke-virtual {v8, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 280
    invoke-interface {v12, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 282
    invoke-virtual {v9}, Lae/gov/xmlhandler/SaveSalaryComplainHandler;->getmMySaveSalaryComplaiList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->mList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v8    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v9    # "mSalaryComplainHandler":Lae/gov/xmlhandler/SaveSalaryComplainHandler;
    .end local v10    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v12    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 284
    :catch_0
    move-exception v7

    .line 285
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    const/4 v3, 0x0

    .line 293
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 297
    const-string v0, "dismiss in About us Pager"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 299
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 322
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 301
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    if-eqz v0, :cond_4

    .line 302
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 303
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    iget-boolean v0, v0, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    if-eqz v0, :cond_5

    .line 304
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 306
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 307
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/SaveSalaryComplainVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/SaveSalaryComplainVo;->getSalaryComplainStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->strSaveSalaryDetailsStatus:Ljava/lang/String;

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSalaryComplainVo :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->strSaveSalaryDetailsStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->strSaveSalaryDetailsStatus:Ljava/lang/String;

    const-string v1, "reference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->strSaveSalaryDetailsStatus:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->strTitleTag:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 316
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->strSaveSalaryDetailsStatus:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v2, v2, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->strTitleTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 260
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 261
    return-void
.end method
