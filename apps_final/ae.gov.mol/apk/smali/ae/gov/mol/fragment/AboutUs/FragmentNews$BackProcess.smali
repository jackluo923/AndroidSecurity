.class public Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentNews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/AboutUs/FragmentNews;
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
.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;)Lae/gov/mol/fragment/AboutUs/FragmentNews;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 247
    invoke-static {}, Lae/gov/mol/MolApplication;->getmNewsVo()Lae/gov/mol/vo/NewsVo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 248
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-static {}, Lae/gov/mol/MolApplication;->getLANG_EN_AR()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v4}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lae/gov/mol/webservices/WebServiceResponse;->getNewsArrayList(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/NewsVo;

    invoke-static {v2, v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$1(Lae/gov/mol/fragment/AboutUs/FragmentNews;Lae/gov/mol/vo/NewsVo;)V

    .line 250
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "News"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 255
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVoData:Lae/gov/mol/vo/NewsVo;

    invoke-static {v1}, Lae/gov/mol/MolApplication;->setmNewsVo(Lae/gov/mol/vo/NewsVo;)V

    .line 257
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 252
    .restart local v0    # "i":I
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "umar"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/NewsVo$newsData;->getNewsphoto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->onPostExecute(Ljava/lang/Void;)V

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

    .line 261
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-virtual {v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v1}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v1

    if-nez v1, :cond_2

    .line 263
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    const v3, 0x7f090099

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 308
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 264
    :cond_2
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v1, v1, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v1, :cond_3

    .line 265
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    const v3, 0x7f090239

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 267
    :cond_3
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v1, v1, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v1, :cond_4

    .line 268
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1}, Lae/gov/mol/helper/CustomFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    const v3, 0x7f09009a

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 271
    :cond_4
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 275
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVoData:Lae/gov/mol/vo/NewsVo;

    if-nez v1, :cond_5

    .line 276
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    new-instance v2, Lae/gov/mol/vo/NewsVo;

    invoke-direct {v2}, Lae/gov/mol/vo/NewsVo;-><init>()V

    iput-object v2, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVoData:Lae/gov/mol/vo/NewsVo;

    .line 278
    :cond_5
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVoData:Lae/gov/mol/vo/NewsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_7

    .line 279
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVoData:Lae/gov/mol/vo/NewsVo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lae/gov/mol/vo/NewsVo;->resources:Ljava/util/List;

    .line 287
    :cond_6
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    if-nez v1, :cond_8

    .line 288
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    new-instance v2, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v4, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v4, v4, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v2, v3, v4}, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;-><init>(Lae/gov/mol/fragment/AboutUs/FragmentNews;Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v2, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    .line 290
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    new-instance v2, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess$1;-><init>(Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;)V

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CustomFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 297
    sget v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->PageNumber:I

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mRecordIncrement:I
    invoke-static {v2}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$2(Lae/gov/mol/fragment/AboutUs/FragmentNews;)I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->PageNumber:I

    goto/16 :goto_1

    .line 282
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 283
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVoData:Lae/gov/mol/vo/NewsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsVo:Lae/gov/mol/vo/NewsVo;
    invoke-static {v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$0(Lae/gov/mol/fragment/AboutUs/FragmentNews;)Lae/gov/mol/vo/NewsVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/NewsVo;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/NewsVo$newsData;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 300
    .end local v0    # "i":I
    :cond_8
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->mNewsDataAdapter:Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;

    invoke-virtual {v1}, Lae/gov/mol/fragment/AboutUs/FragmentNews$NewsDataAdapter;->notifyDataSetChanged()V

    .line 301
    sget v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->PageNumber:I

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    # getter for: Lae/gov/mol/fragment/AboutUs/FragmentNews;->mRecordIncrement:I
    invoke-static {v2}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->access$2(Lae/gov/mol/fragment/AboutUs/FragmentNews;)I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->PageNumber:I

    goto/16 :goto_1

    .line 304
    :cond_9
    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/FragmentNews$BackProcess;->this$0:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/FragmentNews;->footerView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 242
    return-void
.end method
