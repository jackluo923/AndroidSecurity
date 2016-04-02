.class final Lcom/alipay/android/app/data/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/alipay/android/app/data/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/data/d;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/data/e;->g:Lcom/alipay/android/app/data/d;

    iput-object p2, p0, Lcom/alipay/android/app/data/e;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/data/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/data/e;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/app/data/e;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/android/app/data/e;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/android/app/data/e;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/data/e;->g:Lcom/alipay/android/app/data/d;

    invoke-static {v0}, Lcom/alipay/android/app/data/d;->a(Lcom/alipay/android/app/data/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/e;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/e;->a:[Ljava/lang/String;

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "false"

    move-object v1, v6

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/data/e;->g:Lcom/alipay/android/app/data/d;

    invoke-static {v0}, Lcom/alipay/android/app/data/d;->a(Lcom/alipay/android/app/data/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/data/e;->g:Lcom/alipay/android/app/data/d;

    invoke-static {v0}, Lcom/alipay/android/app/data/d;->a(Lcom/alipay/android/app/data/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/data/e;->g:Lcom/alipay/android/app/data/d;

    invoke-static {v0}, Lcom/alipay/android/app/data/d;->a(Lcom/alipay/android/app/data/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/ValidatedFrameData;

    iget-object v3, p0, Lcom/alipay/android/app/data/e;->f:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/data/e;->g:Lcom/alipay/android/app/data/d;

    iget-object v1, p0, Lcom/alipay/android/app/data/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/data/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/data/e;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/data/e;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/app/data/e;->a:[Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/data/d;->a(Lcom/alipay/android/app/data/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alipay/android/app/net/Request;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/data/e;->g:Lcom/alipay/android/app/data/d;

    invoke-static {v0}, Lcom/alipay/android/app/data/d;->a(Lcom/alipay/android/app/data/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->e()Lcom/alipay/android/app/net/Response;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Response;->f()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Response;->f()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/net/Request;->a(Lcom/alipay/android/app/json/JSONObject;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/data/e;->g:Lcom/alipay/android/app/data/d;

    invoke-static {v0}, Lcom/alipay/android/app/data/d;->b(Lcom/alipay/android/app/data/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/InteractionData;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/net/Request;->a(Lcom/alipay/android/app/data/InteractionData;)V

    new-instance v2, Lcom/alipay/android/app/net/Response;

    invoke-direct {v2}, Lcom/alipay/android/app/net/Response;-><init>()V

    new-instance v3, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;

    invoke-direct {v3}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/app/data/e;->g:Lcom/alipay/android/app/data/d;

    invoke-static {v0}, Lcom/alipay/android/app/data/d;->a(Lcom/alipay/android/app/data/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->f()V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resp:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/script/CallbackParams;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/script/CallbackParams;-><init>(Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v1, "true"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    :try_start_2
    const-string/jumbo v0, "false"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v6

    move-object v2, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    :goto_1
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v1, "false"

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
