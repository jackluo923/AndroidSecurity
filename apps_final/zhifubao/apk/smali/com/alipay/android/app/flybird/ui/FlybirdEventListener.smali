.class public Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private a:Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uri"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "uri"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uri"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->remove(Ljava/lang/String;)V

    const-string/jumbo v4, "name"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "token"

    invoke-virtual {v1, v3, p2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "params"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "action"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v3, "loadtxt"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "loadtxt"

    const-string/jumbo v4, "loadtxt"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "*****::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":::params:::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":::isClicktrue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    sget-object v0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/a;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/app/flybird/ui/a;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method
