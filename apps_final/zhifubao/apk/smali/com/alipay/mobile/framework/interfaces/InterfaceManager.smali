.class public Lcom/alipay/mobile/framework/interfaces/InterfaceManager;
.super Ljava/lang/Object;
.source "InterfaceManager.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/interfaces/RouterInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public findInterfaceByName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 20
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    return-object v0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/interfaces/RouterInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 24
    goto :goto_0
.end method

.method public registerInterface(Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;Lcom/alipay/mobile/framework/interfaces/RouterInterface;)Z
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const/4 v0, 0x1

    goto :goto_0
.end method
