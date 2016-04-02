.class final Lcom/alipay/mobile/appstoreapp/ui/h;
.super Landroid/os/AsyncTask;
.source "AppDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/h;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;B)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/ui/h;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 5

    .prologue
    .line 111
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/h;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->syncOneAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    :try_end_0
    .catch Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncOneAppInfo error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/ui/h;->a([Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDetailActivity"

    const-string/jumbo v2, "app is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/h;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    const-string/jumbo v1, "\u8bf7\u7a0d\u5019\u518d\u8bd5"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/h;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/h;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0, p1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->a(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/h;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/h;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->b(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/h;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->b(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LAUNCH_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/h;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->c(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/h;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/h;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->d(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/h;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    const-string/jumbo v1, "\u6b63\u5728\u83b7\u53d6\u6570\u636e"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 106
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 107
    return-void
.end method
