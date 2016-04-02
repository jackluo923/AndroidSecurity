.class final Lcom/alipay/android/app/data/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/script/INetworkScriptable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/data/DataProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/data/ValidatedFrameData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/data/InteractionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/data/DataProcessor;Lcom/alipay/android/app/data/InteractionData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/d;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/d;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/data/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alipay/android/app/net/Request;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/alipay/android/app/data/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alipay/android/app/net/Request;

    move-result-object v0

    return-object v0
.end method

.method private varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alipay/android/app/net/Request;
    .locals 5

    new-instance v2, Lcom/alipay/android/app/net/Envelope;

    invoke-direct {v2}, Lcom/alipay/android/app/net/Envelope;-><init>()V

    invoke-virtual {v2, p2}, Lcom/alipay/android/app/net/Envelope;->c(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/alipay/android/app/net/Envelope;->d(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/alipay/android/app/net/Envelope;->b(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Lcom/alipay/android/app/net/Envelope;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_0

    :try_start_0
    aget-object v1, p5, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p5, v4

    invoke-virtual {v3, v1, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/alipay/android/app/net/Request;

    iget-object v0, p0, Lcom/alipay/android/app/data/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/InteractionData;

    sget-object v4, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/Envelope;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/helper/ProtocolType;)V

    return-object v1
.end method

.method static synthetic a(Lcom/alipay/android/app/data/d;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/d;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/data/d;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/d;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/data/ValidatedFrameData;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/d;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final varargs request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    if-eqz p5, :cond_1

    array-length v0, p5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    invoke-direct/range {p0 .. p5}, Lcom/alipay/android/app/data/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alipay/android/app/net/Request;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/data/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/ValidatedFrameData;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/ValidatedFrameData;->e()Lcom/alipay/android/app/net/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Response;->f()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Response;->f()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/net/Request;->a(Lcom/alipay/android/app/json/JSONObject;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/data/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/InteractionData;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/net/Request;->a(Lcom/alipay/android/app/data/InteractionData;)V

    iget-object v0, p0, Lcom/alipay/android/app/data/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/DataProcessor;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/DataProcessor;->a(Lcom/alipay/android/app/net/Request;)Z

    :cond_1
    return-void
.end method

.method public final varargs send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/app/data/e;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/data/e;-><init>(Lcom/alipay/android/app/data/d;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
