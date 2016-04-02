.class final Lcom/alipay/mobile/appstoreapp/ui/o;
.super Landroid/os/AsyncTask;
.source "FastLoginAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/alipay/mobile/appstoreapp/common/QueryResult",
        "<",
        "Lcom/alipay/mobile/appstoreapp/common/Page",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Lcom/alipay/mobile/appstoreapp/common/QueryResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/appstoreapp/common/QueryResult",
            "<",
            "Lcom/alipay/mobile/appstoreapp/common/Page",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x270f

    const/4 v4, 0x0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    iget-boolean v0, v0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->a:Z

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->a(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;I)V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->a(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;)Lcom/alipay/mobile/appstoreapp/biz/AppsDataBiz;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->b(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;)I

    move-result v1

    .line 213
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->c(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;)I

    move-result v2

    .line 212
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/appstoreapp/biz/AppsDataBiz;->a(II)Lcom/alipay/mobile/appstoreapp/common/Page;

    move-result-object v1

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    iget-boolean v0, v0, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->a:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->c()V

    .line 217
    :cond_0
    new-instance v0, Lcom/alipay/mobile/appstoreapp/common/QueryResult;

    const/16 v2, 0x3e8

    const-string/jumbo v3, ""

    invoke-direct {v0, v2, v3, v1}, Lcom/alipay/mobile/appstoreapp/common/QueryResult;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 238
    :goto_1
    return-object v0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->a(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 219
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    new-instance v0, Lcom/alipay/mobile/appstoreapp/common/QueryResult;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;->getResultStatus()I

    move-result v2

    .line 221
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;->getMemo()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-direct {v0, v2, v1, v4}, Lcom/alipay/mobile/appstoreapp/common/QueryResult;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 222
    :catch_1
    move-exception v0

    .line 223
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->d()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u67e5\u8be2\u70ed\u95e8\u5e94\u7528\u5217\u8868\u53d1\u751fRPC\u5f02\u5e38"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    .line 225
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 226
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 227
    :cond_2
    new-instance v0, Lcom/alipay/mobile/appstoreapp/common/QueryResult;

    const-string/jumbo v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-direct {v0, v5, v1, v4}, Lcom/alipay/mobile/appstoreapp/common/QueryResult;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    new-instance v2, Lcom/alipay/mobile/appstoreapp/ui/p;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/appstoreapp/ui/p;-><init>(Lcom/alipay/mobile/appstoreapp/ui/o;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    throw v0

    .line 236
    :catch_2
    move-exception v0

    .line 237
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    new-instance v0, Lcom/alipay/mobile/appstoreapp/common/QueryResult;

    const-string/jumbo v1, "\u7cfb\u7edf\u53d1\u751f\u5f02\u5e38"

    invoke-direct {v0, v5, v1, v4}, Lcom/alipay/mobile/appstoreapp/common/QueryResult;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/ui/o;)Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/ui/o;->a()Lcom/alipay/mobile/appstoreapp/common/QueryResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1
    check-cast p1, Lcom/alipay/mobile/appstoreapp/common/QueryResult;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/appstoreapp/common/QueryResult;->a()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-static {v0, p1}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->a(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;Lcom/alipay/mobile/appstoreapp/common/QueryResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/appstoreapp/common/QueryResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/o;->a:Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;->d(Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;)Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->getMoreFinish(Z)V

    goto :goto_0
.end method
