.class public Lcom/alipay/mobile/rome/syncservice/sync/e/b;
.super Ljava/lang/Object;
.source "SyncRegisterManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sync_service_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    const-class v2, Lcom/alipay/mobile/rome/syncservice/sync/e/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->a:Ljava/lang/String;

    .line 22
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->a()[Ljava/lang/String;

    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_2

    .line 41
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->b()[Ljava/lang/String;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    array-length v2, v1

    :goto_1
    if-lt v0, v2, :cond_3

    .line 17
    :cond_1
    return-void

    .line 36
    :cond_2
    aget-object v4, v2, v1

    .line 37
    sget-object v5, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_3
    aget-object v3, v1, v0

    .line 44
    sget-object v4, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V
    .locals 4

    .prologue
    .line 103
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v0, "SYNC_INFO"

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 109
    const-string/jumbo v3, " register Callback ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 107
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/c/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncservice/sync/c/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "register:[ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lcom/alipay/mobile/rome/syncservice/sync/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "userBased"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string/jumbo v1, "deviceBased"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "register: [ unknown biz ][ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unRegister:[ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;

    .line 96
    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 120
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v0, "SYNC_INFO"

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 126
    const-string/jumbo v3, " unregister Callback ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    .line 124
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {p0}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b(Ljava/lang/String;)V

    .line 129
    return-void
.end method
