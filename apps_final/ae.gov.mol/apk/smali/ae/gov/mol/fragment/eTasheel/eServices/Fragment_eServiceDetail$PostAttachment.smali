.class Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;
.super Landroid/os/AsyncTask;
.source "Fragment_eServiceDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostAttachment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private gsonXml:Lcom/stanfy/gsonxml/GsonXml;

.field private mContext:Landroid/content/Context;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResponse:Ljava/lang/String;

.field private mXmlInput:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Landroid/content/Context;)V
    .locals 2
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 976
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 973
    const-string v1, ""

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mResponse:Ljava/lang/String;

    .line 977
    iput-object p2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mContext:Landroid/content/Context;

    .line 978
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Ljava/util/ArrayList;)V

    .line 979
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment$1;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment$1;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;)V

    .line 989
    .local v0, "parserCreator":Lcom/stanfy/gsonxml/XmlParserCreator;
    new-instance v1, Lcom/stanfy/gsonxml/GsonXmlBuilder;

    invoke-direct {v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;-><init>()V

    .line 990
    invoke-virtual {v1, v0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setXmlParserCreator(Lcom/stanfy/gsonxml/XmlParserCreator;)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v1

    .line 991
    invoke-virtual {v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->create()Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v1

    .line 989
    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->gsonXml:Lcom/stanfy/gsonxml/GsonXml;

    .line 993
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1004
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mSelectedImage:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$1(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1005
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mSelectedImage:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$1(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1031
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mResponse:Ljava/lang/String;

    return-object v0

    .line 1005
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1006
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1007
    .local v8, "value":Ljava/lang/String;
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lae/gov/mol/helper/CommonMethods;->getImageFromUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1010
    .local v3, "mBase64Image":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<NewDataSet><FormName>RenewLC</FormName><UserID>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1012
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v1

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getTasheelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</UserID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1013
    const-string v1, "<attachType>Photo</attachType>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1014
    const-string v1, "<PageNo>1</PageNo>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1015
    const-string v1, "<imageLen>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</imageLen>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1016
    const-string v1, "</NewDataSet>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1010
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1009
    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mXmlInput:Ljava/lang/String;

    .line 1018
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$3(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v0

    sget-object v1, Lae/gov/mol/webservices/WebServiceResponse;->URL_wsTasheel:Ljava/lang/String;

    .line 1019
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mXmlInput:Ljava/lang/String;

    .line 1020
    const-string v4, "http://tempuri.org/"

    const-string v5, "SaveAttachments"

    .line 1018
    invoke-virtual/range {v0 .. v5}, Lae/gov/mol/helper/PostParseGet;->UploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mResponse:Ljava/lang/String;

    .line 1021
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mResponse:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1023
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mAttachmentData:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$4(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->gsonXml:Lcom/stanfy/gsonxml/GsonXml;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mResponse:Ljava/lang/String;

    const-class v4, Lae/gov/mol/vo/AttachmentVo;

    invoke-virtual {v0, v2, v4}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/AttachmentVo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1024
    :catch_0
    move-exception v6

    .line 1025
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1035
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    invoke-virtual {v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1036
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 1037
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1039
    :cond_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$3(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v2

    iget-boolean v2, v2, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    if-eqz v2, :cond_2

    .line 1040
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    const v4, 0x7f090099

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1056
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1057
    return-void

    .line 1041
    :cond_2
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$3(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v2

    iget-boolean v2, v2, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    if-eqz v2, :cond_3

    .line 1042
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    const v4, 0x7f090239

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1043
    :cond_3
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$3(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v2

    iget-boolean v2, v2, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    if-eqz v2, :cond_4

    .line 1044
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    const v4, 0x7f09009a

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1046
    :cond_4
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mAttachmentData:Ljava/util/ArrayList;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$4(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getAttachmentString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, "mJson":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1048
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    const-string v3, "Attachment"

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, "mStringTitle":Ljava/lang/String;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v2

    .line 1050
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    const v4, 0x7f090128

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1049
    invoke-static {v2, v1, v3, v5}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1052
    .end local v1    # "mStringTitle":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$5(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "javascript:alert(submitForm(\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 996
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$PostAttachment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 999
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1000
    return-void
.end method
