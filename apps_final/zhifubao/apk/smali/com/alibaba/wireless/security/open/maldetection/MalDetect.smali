.class public Lcom/alibaba/wireless/security/open/maldetection/MalDetect;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/maldetection/IMalDetect;


# static fields
.field private static a:Ljava/util/ArrayList;

.field private static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OnDetectionJNI(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    monitor-exit v1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect$a;

    invoke-direct {v0}, Lcom/alibaba/wireless/security/open/maldetection/MalDetect$a;-><init>()V

    iput p0, v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect$a;->a:I

    iput-object p1, v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect$a;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect$a;->c:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/maldetection/IMalDetect$ICallBack;

    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/wireless/security/open/maldetection/IMalDetect$ICallBack;->onDetection(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a()Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method


# virtual methods
.method public registerCallBack(Lcom/alibaba/wireless/security/open/maldetection/IMalDetect$ICallBack;)V
    .locals 4

    sget-object v1, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->a:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect$a;

    iget v2, v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect$a;->a:I

    iget-object v3, v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect$a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect$a;->c:Ljava/lang/String;

    invoke-interface {p1, v2, v3, v0}, Lcom/alibaba/wireless/security/open/maldetection/IMalDetect$ICallBack;->onDetection(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    return-void
.end method

.method public unregisterCallBack(Lcom/alibaba/wireless/security/open/maldetection/IMalDetect$ICallBack;)V
    .locals 2

    sget-object v1, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->a:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/alibaba/wireless/security/open/maldetection/MalDetect;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
