.class public Lcom/taobao/mteam/ibeacon/Region;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/Integer;

.field protected b:Ljava/lang/Integer;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/Region;->e:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Lcom/taobao/mteam/ibeacon/Region;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/Region;->e:Ljava/util/Set;

    iget-object v0, p1, Lcom/taobao/mteam/ibeacon/Region;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/Region;->a:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/taobao/mteam/ibeacon/Region;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/Region;->b:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/taobao/mteam/ibeacon/Region;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/Region;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/taobao/mteam/ibeacon/Region;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/Region;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/Region;->e:Ljava/util/Set;

    iput-object v1, p0, Lcom/taobao/mteam/ibeacon/Region;->a:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/taobao/mteam/ibeacon/Region;->b:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/taobao/mteam/ibeacon/Region;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/Region;->d:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uniqueId may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/Region;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/taobao/mteam/ibeacon/IBeacon;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/Region;->e:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/IBeacon;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b(Lcom/taobao/mteam/ibeacon/IBeacon;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/Region;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/IBeacon;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/Region;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Region"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unmatching proxmityUuids: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/IBeacon;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/mteam/ibeacon/Region;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/Region;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/IBeacon;->d()I

    move-result v1

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/Region;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    sget-boolean v1, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Region"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unmatching major: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/IBeacon;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/mteam/ibeacon/Region;->a:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/Region;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/IBeacon;->e()I

    move-result v1

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/Region;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_3

    sget-boolean v1, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Region"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unmatching minor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/IBeacon;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/mteam/ibeacon/Region;->b:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/taobao/mteam/ibeacon/Region;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/Region;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/taobao/mteam/ibeacon/Region;

    iget-object v0, v0, Lcom/taobao/mteam/ibeacon/Region;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/taobao/mteam/ibeacon/Region;

    iget-object v0, p1, Lcom/taobao/mteam/ibeacon/Region;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/Region;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/Region;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "proximityUuid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/Region;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " major: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/Region;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " minor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/Region;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
