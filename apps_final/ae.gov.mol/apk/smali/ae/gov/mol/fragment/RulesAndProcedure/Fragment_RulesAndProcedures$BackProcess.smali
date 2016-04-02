.class public Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_RulesAndProcedures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;
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

.field final synthetic this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;)V
    .locals 1

    .prologue
    .line 170
    iput-object p1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Get Service Group"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 184
    iget-object v5, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v5, v5, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lae/gov/mol/webservices/WebServiceResponse;->getGetServiceGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Rules and Procedure Response"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 191
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 192
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 193
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    new-instance v6, Lae/gov/xmlhandler/ItemXMLHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/ItemXMLHandler;-><init>()V

    invoke-static {v5, v6}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->access$0(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;Lae/gov/xmlhandler/ItemXMLHandler;)V

    .line 194
    iget-object v5, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    # getter for: Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->myXMLHandler:Lae/gov/xmlhandler/ItemXMLHandler;
    invoke-static {v5}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->access$1(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;)Lae/gov/xmlhandler/ItemXMLHandler;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 195
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 196
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 197
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 198
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 199
    iget-object v5, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v6, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    # getter for: Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->myXMLHandler:Lae/gov/xmlhandler/ItemXMLHandler;
    invoke-static {v6}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->access$1(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;)Lae/gov/xmlhandler/ItemXMLHandler;

    move-result-object v6

    invoke-virtual {v6}, Lae/gov/xmlhandler/ItemXMLHandler;->getItemsList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->ServiceGroupdata:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 201
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    .line 210
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    invoke-virtual {v0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 213
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    const v2, 0x7f090239

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 223
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->ServiceGroupdata:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->ServiceGroupdata:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 225
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    new-instance v1, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$ListBaseAdapter;

    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    invoke-direct {v1, v2}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;)V

    iput-object v1, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mListBaseAdapter:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$ListBaseAdapter;

    .line 226
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mListViewRulesAndProcidure:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v1, v1, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mListBaseAdapter:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    :cond_5
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 176
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    iget-object v1, v1, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures$BackProcess;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesAndProcedures;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 177
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 178
    return-void
.end method
