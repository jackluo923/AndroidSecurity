.class Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;
.super Landroid/os/AsyncTask;
.source "Fragment_Attachments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/Attachments/Fragment_Attachments;
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

.field final synthetic this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;Landroid/content/Context;)V
    .locals 2
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 858
    iput-object p1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 855
    const-string v1, ""

    iput-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mResponse:Ljava/lang/String;

    .line 859
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$0(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;Z)V

    .line 860
    iput-object p2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mContext:Landroid/content/Context;

    .line 861
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$1(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;Ljava/util/ArrayList;)V

    .line 862
    new-instance v0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment$1;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment$1;-><init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;)V

    .line 872
    .local v0, "parserCreator":Lcom/stanfy/gsonxml/XmlParserCreator;
    new-instance v1, Lcom/stanfy/gsonxml/GsonXmlBuilder;

    invoke-direct {v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;-><init>()V

    .line 873
    invoke-virtual {v1, v0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setXmlParserCreator(Lcom/stanfy/gsonxml/XmlParserCreator;)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v1

    .line 874
    invoke-virtual {v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->create()Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v1

    .line 872
    iput-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->gsonXml:Lcom/stanfy/gsonxml/GsonXml;

    .line 876
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 888
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # getter for: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mSelectedImage:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$2(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 889
    const-string v9, ""

    .line 890
    .local v9, "tempTranId":Ljava/lang/String;
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # getter for: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->tranmbno:Ljava/lang/String;
    invoke-static {v0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$3(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Ljava/lang/String;

    move-result-object v9

    .line 892
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # getter for: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->attachments:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$4(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 952
    .end local v9    # "tempTranId":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mResponse:Ljava/lang/String;

    return-object v0

    .line 892
    .restart local v9    # "tempTranId":Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;

    .line 894
    .local v7, "attachment":Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;
    iget-boolean v0, v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->isSelected:Z

    if-eqz v0, :cond_0

    .line 899
    iget-object v10, v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->path:Ljava/lang/String;

    .line 901
    .local v10, "value":Ljava/lang/String;
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget v1, v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->addButtonID:I

    # invokes: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getBase64String(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$5(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;I)Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "mBase64Image":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<NewDataSet><FormName>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 906
    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # getter for: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->servicecode:Ljava/lang/String;
    invoke-static {v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$6(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</FormName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 907
    const-string v1, "<AttachmentID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</AttachmentID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 908
    const-string v1, "<UserID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v1, v1, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->getTasheelUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</UserID>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 909
    const-string v1, "<attachType>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</attachType>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 910
    const-string v1, "<PageNo>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$Attachment;->pageNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</PageNo>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 911
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

    .line 912
    const-string v1, "</NewDataSet>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mXmlInput:Ljava/lang/String;

    .line 914
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # getter for: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$7(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v0

    sget-object v1, Lae/gov/mol/webservices/WebServiceResponse;->URL_wsTasheel_temp:Ljava/lang/String;

    .line 915
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mXmlInput:Ljava/lang/String;

    .line 916
    const-string v4, "http://tempuri.org/"

    const-string v5, "SaveAttachments"

    .line 914
    invoke-virtual/range {v0 .. v5}, Lae/gov/mol/helper/PostParseGet;->UploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mResponse:Ljava/lang/String;

    .line 917
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mResponse:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 924
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mResponse:Ljava/lang/String;

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mResponse:Ljava/lang/String;

    const-string v2, "<status>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mResponse:Ljava/lang/String;

    const-string v4, "</status>"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 925
    .local v6, "SuccessFlag":Ljava/lang/String;
    const-string v0, "1"

    if-eq v6, v0, :cond_3

    .line 929
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mResponse:Ljava/lang/String;

    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mResponse:Ljava/lang/String;

    const-string v2, "<AttachmentID>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mResponse:Ljava/lang/String;

    const-string v4, "</AttachmentID>"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 931
    goto/16 :goto_0

    .line 934
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$0(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 939
    .end local v6    # "SuccessFlag":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 941
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 957
    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    invoke-virtual {v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 959
    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 961
    :cond_0
    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # getter for: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$7(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v1

    iget-boolean v1, v1, Lae/gov/mol/helper/PostParseGet;->isNetError:Z

    if-eqz v1, :cond_2

    .line 962
    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const v3, 0x7f090099

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1001
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1002
    return-void

    .line 963
    :cond_2
    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # getter for: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$7(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v1

    iget-boolean v1, v1, Lae/gov/mol/helper/PostParseGet;->isTimeOutError:Z

    if-eqz v1, :cond_3

    .line 964
    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const v3, 0x7f090239

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 965
    :cond_3
    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # getter for: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$7(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v1

    iget-boolean v1, v1, Lae/gov/mol/helper/PostParseGet;->isOtherError:Z

    if-eqz v1, :cond_4

    .line 966
    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const v3, 0x7f09009a

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 984
    :cond_4
    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    # getter for: Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->errorOccuredWhileSending:Z
    invoke-static {v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->access$8(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 987
    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const v3, 0x7f090251

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, "mStringTitle":Ljava/lang/String;
    iget-object v1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    iget-object v1, v1, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 989
    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const v3, 0x7f090256

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 988
    invoke-static {v1, v0, v2, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 993
    .end local v0    # "mStringTitle":Ljava/lang/String;
    :cond_5
    new-instance v1, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;

    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    invoke-direct {v1, v2}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;-><init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$CheckAttachmentStatus;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 879
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    invoke-virtual {v0}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    const v3, 0x7f09007d

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 882
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 883
    return-void
.end method
