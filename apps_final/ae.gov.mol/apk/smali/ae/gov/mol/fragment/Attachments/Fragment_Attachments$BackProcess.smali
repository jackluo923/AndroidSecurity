.class public Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;
.super Landroid/os/AsyncTask;
.source "Fragment_Attachments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/Attachments/Fragment_Attachments;
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

.field final synthetic this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V
    .locals 1

    .prologue
    .line 1170
    iput-object p1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1173
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1182
    const/4 v2, 0x0

    .line 1188
    .local v2, "isBreak":Z
    const-string v3, "en"

    .line 1189
    .local v3, "lang":Ljava/lang/String;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_ENG_ARB()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1191
    const-string v3, "ar"

    .line 1193
    :cond_0
    iget-object v7, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v7, v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v8, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # getter for: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->message:Ljava/lang/String;
    invoke-static {v8}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$9(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # getter for: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->userid:Ljava/lang/String;
    invoke-static {v9}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$10(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v3}, Lae/gov/mol/webservices/WebServiceResponse;->getServiceAttachmentList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 1195
    iget-object v7, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-static {v7}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 1197
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 1201
    .local v5, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 1202
    .local v4, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    .line 1204
    .local v6, "xr":Lorg/xml/sax/XMLReader;
    iget-object v7, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    new-instance v8, Lae/gov/xmlhandler/ServiceAttachmentListHandler;

    invoke-direct {v8}, Lae/gov/xmlhandler/ServiceAttachmentListHandler;-><init>()V

    iput-object v8, v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mServiceAttachmentListHandler:Lae/gov/xmlhandler/ServiceAttachmentListHandler;

    .line 1205
    iget-object v7, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v7, v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mServiceAttachmentListHandler:Lae/gov/xmlhandler/ServiceAttachmentListHandler;

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1206
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 1207
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v7, "UTF-8"

    invoke-virtual {v1, v7}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 1208
    new-instance v7, Ljava/io/StringReader;

    iget-object v8, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 1209
    invoke-interface {v6, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 1210
    iget-object v7, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v8, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v8, v8, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mServiceAttachmentListHandler:Lae/gov/xmlhandler/ServiceAttachmentListHandler;

    invoke-virtual {v8}, Lae/gov/xmlhandler/ServiceAttachmentListHandler;->getmServiceAttachmentListVos()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mServiceAttachmentListVos:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v4    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v7, 0x0

    return-object v7

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1227
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    invoke-virtual {v0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1233
    :goto_0
    return-void

    .line 1229
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    invoke-virtual {v0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->SetUpAttachmentButtons()V

    .line 1230
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # invokes: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->SetUpSubmitButton()V
    invoke-static {v0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$11(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V

    .line 1231
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # invokes: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->dismissDialog()V
    invoke-static {v0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$12(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V

    .line 1232
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 1176
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v1, v1, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$BackProcess;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1177
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1178
    return-void
.end method
