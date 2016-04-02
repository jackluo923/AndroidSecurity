.class public abstract Lcom/alipay/mobile/framework/BaseMetaInfo;
.super Ljava/lang/Object;
.source "BaseMetaInfo.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/pipeline/ValveDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addApplication(Lcom/alipay/mobile/framework/app/ApplicationDescription;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public addInterface(Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public addService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->f:Ljava/util/List;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public getApplications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    return-object v0
.end method

.method public getBroadcastReceivers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    return-object v0
.end method

.method public getValves()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/pipeline/ValveDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->f:Ljava/util/List;

    return-object v0
.end method

.method public setApplications(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/app/ApplicationDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setBroadcastReceivers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    .line 70
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/MicroDescription;

    .line 115
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/MicroDescription;

    .line 120
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;

    goto :goto_1

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/MicroDescription;

    .line 125
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;

    goto :goto_2

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/MicroDescription;

    .line 130
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/MicroDescription;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;

    goto :goto_3

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 135
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/alipay/mobile/framework/MicroDescription;

    goto :goto_4

    .line 138
    :cond_4
    return-void
.end method

.method public setEntry(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->d:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setInterfaces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->e:Ljava/util/List;

    .line 87
    return-void
.end method

.method public setServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->b:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setValves(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/pipeline/ValveDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/framework/BaseMetaInfo;->f:Ljava/util/List;

    .line 103
    return-void
.end method
