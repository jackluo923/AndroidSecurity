.class public final Lcom/alipay/mobile/rome/syncservice/c/a;
.super Ljava/lang/Object;
.source "SyncStateManager.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;",
            "Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/c/a;->a:Ljava/util/Map;

    .line 22
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECTING:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/c/a;->b:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    .line 16
    return-void
.end method

.method public static a()Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/c/a;->b:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    return-object v0
.end method

.method public static a(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;)V
    .locals 3

    .prologue
    .line 62
    const-string/jumbo v0, "sync_service_SyncStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSyncState: [ syncState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sput-object p0, Lcom/alipay/mobile/rome/syncservice/c/a;->b:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    .line 66
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/c/a;->b()V

    .line 67
    return-void
.end method

.method public static a(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;)V
    .locals 3

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const-string/jumbo v0, "sync_service_SyncStateManager"

    const-string/jumbo v1, "registerSyncStateCallback: [ callback null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/c/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v0, "sync_service_SyncStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerSyncStateCallback: [ size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/rome/syncservice/c/a;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b()V
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/c/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    return-void

    .line 80
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;

    .line 81
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/c/a;->b:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;->onSyncState(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;)V

    goto :goto_0
.end method

.method public static b(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;)V
    .locals 3

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const-string/jumbo v0, "sync_service_SyncStateManager"

    const-string/jumbo v1, "unregisterSyncStateCallback: [ callback null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/c/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v0, "sync_service_SyncStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregisterSyncStateCallback: [ size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/rome/syncservice/c/a;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
