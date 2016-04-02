.class public Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;
.super Landroid/os/AsyncTask;
.source "Fragment_eServiceDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FetchAjaxData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lae/gov/mol/vo/MasterDataListVo;",
        ">;>;"
    }
.end annotation


# instance fields
.field mResultResponse:Ljava/lang/String;

.field private mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V
    .locals 1

    .prologue
    .line 1111
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1114
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;->doInBackground([Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "params"    # [Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MasterDataListVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1126
    const-string v1, "en"

    .line 1127
    .local v1, "lang":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v4, p1, v5

    .line 1128
    .local v4, "masterDataList":Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_ENG_ARB()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ar"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1130
    const-string v1, "ar"

    .line 1133
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "<NewDataSet><SearchData>"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1135
    const-string v7, "<SearchType>"

    invoke-virtual {v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->getSearchType()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, ""

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "</SearchType>"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1136
    const-string v7, "<SearchText>"

    invoke-virtual {v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->getSearchText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, ""

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "</SearchText>"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1137
    const-string v7, "<OtherValue>"

    invoke-virtual {v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->getOtherValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v5, ""

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "</OtherValue>"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1138
    const-string v6, "<Lang>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</Lang>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1139
    const-string v6, "</SearchData>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1140
    const-string v6, "</NewDataSet>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1133
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1143
    .local v3, "mXmlInput":Ljava/lang/String;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$3(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/helper/PostParseGet;

    move-result-object v5

    sget-object v6, Lae/gov/mol/webservices/WebServiceResponse;->URL_wsTasheel_temp:Ljava/lang/String;

    .line 1145
    const-string v7, "http://tempuri.org/"

    const-string v8, "GetMasterDataList"

    .line 1143
    invoke-virtual {v5, v6, v3, v7, v8}, Lae/gov/mol/helper/PostParseGet;->getMasterDataList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1147
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    if-eqz v2, :cond_1

    .line 1153
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Response agaya"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :cond_1
    :goto_3
    return-object v2

    .line 1135
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    .end local v3    # "mXmlInput":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->getSearchType()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1136
    :cond_3
    invoke-virtual {v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->getSearchText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1137
    :cond_4
    invoke-virtual {v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$MasterDataList;->getOtherValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1155
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    .restart local v3    # "mXmlInput":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MasterDataListVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1171
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MasterDataListVo;>;"
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    invoke-virtual {v0, p1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->showDataListPicker(Ljava/util/ArrayList;)V

    .line 1172
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->dismissDialog()V
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    .line 1174
    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 1118
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$FetchAjaxData;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$6(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Landroid/app/ProgressDialog;)V

    .line 1119
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1120
    return-void
.end method
