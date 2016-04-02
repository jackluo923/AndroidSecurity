.class public Lcom/ali/user/mobile/h5/H5Wrapper;
.super Ljava/lang/Object;
.source "H5Wrapper.java"


# static fields
.field public static final CALLBACK:Ljava/lang/String; = "https://www.alipay.com/webviewbridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPage(Landroid/app/Activity;Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 50
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 52
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 53
    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    .line 54
    return-object v0
.end method

.method public static getH5Plugin(Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/ali/user/mobile/h5/AUH5Plugin;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    return-object v0
.end method

.method public static getLoginApp()Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000008"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    return-object v0
.end method

.method public static startPage(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Landroid/os/Bundle;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 32
    return-void
.end method

.method public static startPage(Landroid/os/Bundle;Lcom/ali/user/mobile/h5/AUH5Plugin;)V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 36
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    new-instance v1, Lcom/ali/user/mobile/h5/AUH5Listener;

    invoke-direct {v1, p1}, Lcom/ali/user/mobile/h5/AUH5Listener;-><init>(Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Bundle;->addListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V

    .line 42
    :cond_0
    invoke-static {v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 43
    return-void
.end method

.method public static startPage(Lcom/alipay/mobile/h5container/api/H5Bundle;)V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 59
    invoke-static {}, Lcom/ali/user/mobile/h5/H5Wrapper;->getLoginApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 60
    return-void
.end method

.method public static startPage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 20
    return-void
.end method

.method public static startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V
    .locals 2

    .prologue
    .line 23
    const-string/jumbo v0, "https://www.alipay.com/webviewbridge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const-string/jumbo v0, "&callback="

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "https://www.alipay.com/webviewbridge"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 25
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {v0, p1}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Landroid/os/Bundle;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 28
    return-void

    .line 23
    :cond_1
    const-string/jumbo v0, "?callback="

    goto :goto_0
.end method
