.class public Lcom/taobao/mteam/ibeacon/service/RangeState;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/taobao/mteam/ibeacon/service/Callback;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/taobao/mteam/ibeacon/IBeacon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/mteam/ibeacon/service/Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangeState;->b:Ljava/util/Set;

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/service/RangeState;->a:Lcom/taobao/mteam/ibeacon/service/Callback;

    return-void
.end method


# virtual methods
.method public final a()Lcom/taobao/mteam/ibeacon/service/Callback;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangeState;->a:Lcom/taobao/mteam/ibeacon/service/Callback;

    return-object v0
.end method

.method public final a(Lcom/taobao/mteam/ibeacon/IBeacon;)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangeState;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangeState;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangeState;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/taobao/mteam/ibeacon/IBeacon;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/RangeState;->b:Ljava/util/Set;

    return-object v0
.end method
