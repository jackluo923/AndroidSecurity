.class public Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;
.super Lcom/taobao/mteam/abeacon/found/DeviceOperation;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/mteam/abeacon/found/DeviceOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;-><init>(IILjava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/abeacon/found/DeviceOperation;

    :goto_0
    invoke-virtual {v0}, Lcom/taobao/mteam/abeacon/found/DeviceOperation;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    throw v0
.end method

.method public final a(Lcom/taobao/mteam/abeacon/found/DeviceOperation;)Z
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/DeviceOperationGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
