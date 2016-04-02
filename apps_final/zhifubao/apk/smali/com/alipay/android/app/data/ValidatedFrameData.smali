.class public Lcom/alipay/android/app/data/ValidatedFrameData;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/android/app/net/Response;

.field private b:Lcom/alipay/android/app/json/JSONObject;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/data/BizData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/alipay/android/app/net/Request;

.field private f:Lcom/alipay/android/app/json/JSONObject;

.field private g:J

.field private h:Lcom/alipay/android/lib/plusin/protocol/FrameData;


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/data/BizData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->e:Lcom/alipay/android/app/net/Request;

    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->h:Lcom/alipay/android/lib/plusin/protocol/FrameData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->d:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->f:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/alipay/android/app/net/Request;
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->e:Lcom/alipay/android/app/net/Request;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Response;->f()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->b:Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->d:Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->b:Lcom/alipay/android/app/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->k()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v4

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v1, "tid"

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    new-instance v0, Lcom/alipay/android/app/net/Request;

    iget-object v1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Response;->a()Lcom/alipay/android/app/net/Envelope;

    move-result-object v1

    iget-object v5, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    invoke-virtual {v5}, Lcom/alipay/android/app/net/Response;->m()Lcom/alipay/android/app/helper/ProtocolType;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/Envelope;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/helper/ProtocolType;)V

    iget-object v1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Response;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Request;->b(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Response;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Request;->a(Z)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->e:Lcom/alipay/android/app/net/Request;

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->f:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method

.method protected final a(Lcom/alipay/android/app/net/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->e:Lcom/alipay/android/app/net/Request;

    return-void
.end method

.method protected final a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V
    .locals 1

    instance-of v0, p1, Lcom/alipay/android/lib/plusin/ui/WindowData;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/alipay/android/lib/plusin/ui/WindowData;

    invoke-virtual {v0}, Lcom/alipay/android/lib/plusin/ui/WindowData;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/data/ValidatedFrameData;->b()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/data/ValidatedFrameData;->b(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Lcom/alipay/android/lib/plusin/script/IScriptEventable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->f()Lcom/alipay/android/lib/plusin/script/IScriptExcutor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/android/lib/plusin/script/IScriptExcutor;->dispose()V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/data/ValidatedFrameData;->c()V

    return-void
.end method

.method public final b(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->b:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method

.method protected final b(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->h:Lcom/alipay/android/lib/plusin/protocol/FrameData;

    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    instance-of v0, p1, Lcom/alipay/android/lib/plusin/ui/WindowData;

    iput-boolean v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->d:Z

    iput-object v1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->e:Lcom/alipay/android/app/net/Request;

    iput-object v1, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->b:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method

.method protected final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->b:Lcom/alipay/android/app/json/JSONObject;

    iput-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->e:Lcom/alipay/android/app/net/Request;

    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/BizData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->k()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/InteractionData;->d()V

    return-void
.end method

.method public final d()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->f:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method public final e()Lcom/alipay/android/app/net/Response;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->a:Lcom/alipay/android/app/net/Response;

    return-object v0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->g:J

    return-void
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/data/ValidatedFrameData;->g:J

    return-wide v0
.end method
