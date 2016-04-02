.class public Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
.super Ljava/lang/Object;
.source "ActivityCollections.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public static declared-synchronized createInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 56
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized destroy()V
    .locals 4

    .prologue
    .line 63
    const-class v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    if-eqz v0, :cond_2

    .line 64
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    iget-object v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;

    .line 68
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 69
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 73
    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    iget-object v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :cond_2
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 44
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->a:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized recordActivity(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 84
    monitor-enter p0

    if-eqz p1, :cond_4

    .line 85
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string/jumbo v1, "ActivityCollections"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recordActivity(key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    new-instance v2, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityCollections;Landroid/app/Activity;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 96
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 103
    :cond_3
    const-string/jumbo v0, "ActivityCollections"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->b:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_4
    monitor-exit p0

    return-void
.end method
