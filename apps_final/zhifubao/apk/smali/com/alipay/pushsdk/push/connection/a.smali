.class public abstract Lcom/alipay/pushsdk/push/connection/a;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field public static a:Z

.field private static final i:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected final b:Ljava/util/Collection;

.field protected final c:Ljava/util/Map;

.field protected final d:Ljava/util/Map;

.field protected e:Ljava/io/DataInputStream;

.field protected f:Ljava/io/DataOutputStream;

.field protected final g:I

.field protected final h:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alipay/pushsdk/push/connection/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    sput-boolean v1, Lcom/alipay/pushsdk/push/connection/a;->a:Z

    .line 30
    :try_start_0
    const-string/jumbo v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/pushsdk/push/connection/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->b:Ljava/util/Collection;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->c:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->d:Ljava/util/Map;

    .line 84
    sget-object v0, Lcom/alipay/pushsdk/push/connection/a;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/alipay/pushsdk/push/connection/a;->g:I

    .line 99
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/a;->h:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;

    .line 100
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->h:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/pushsdk/push/a/d;)V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    if-nez p1, :cond_2

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Lcom/alipay/pushsdk/push/d/d;)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 265
    if-nez p1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/connection/b;

    .line 269
    invoke-direct {v0, p1}, Lcom/alipay/pushsdk/push/connection/b;-><init>(Lcom/alipay/pushsdk/push/d/d;)V

    .line 270
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    const-string/jumbo v0, "Connection"

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "packageListener in the list is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/a;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->h:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->b()I

    move-result v0

    return v0
.end method

.method public final b(Lcom/alipay/pushsdk/push/d/d;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public abstract c()Z
.end method

.method protected final d()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/a;->b:Ljava/util/Collection;

    return-object v0
.end method
