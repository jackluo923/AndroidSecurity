.class public Lcom/ali/user/mobile/h5/AUH5Listener;
.super Ljava/lang/Object;
.source "AUH5Listener.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Listener;


# instance fields
.field private a:Lcom/ali/user/mobile/h5/AUH5Plugin;


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/h5/AUH5Plugin;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ali/user/mobile/h5/AUH5Listener;->a:Lcom/ali/user/mobile/h5/AUH5Plugin;

    .line 13
    return-void
.end method


# virtual methods
.method public onPageCreated(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ali/user/mobile/h5/AUH5Listener;->a:Lcom/ali/user/mobile/h5/AUH5Plugin;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/h5/AUH5Plugin;->setPage(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 18
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/h5/AUH5Listener;->a:Lcom/ali/user/mobile/h5/AUH5Plugin;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 19
    return-void
.end method

.method public onPageDestroyed(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onSessionCreated(Lcom/alipay/mobile/h5container/api/H5Session;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onSessionDestroyed(Lcom/alipay/mobile/h5container/api/H5Session;)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
