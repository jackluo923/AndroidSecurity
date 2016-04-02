.class final Lcom/alipay/mobile/command/engine/a;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/engine/ScripterExecutor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/engine/ScripterExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/engine/a;->a:Lcom/alipay/mobile/command/engine/ScripterExecutor;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "js-ext-command-error"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "script"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "\u6267\u884c\u4efb\u52a1\u5f02\u5e38,message:"

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v0, "js-ext-command-finish"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "\\|"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "script"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "\u811a\u672c\u6267\u884c\u5b8c\u6bd5\u3002message:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    aget-object v1, v0, v1

    sget-object v2, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->F:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/command/manager/TaskManager;->updataRuntimeTask(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    return v6

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "\u811a\u672c\u6267\u884c\u5b8c\u6bd5,\u89e3\u6790 message:"

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    const-string/jumbo v2, ",\u5f02\u5e38\u3002"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    return-void
.end method
