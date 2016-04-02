.class public Lcom/alipay/mobile/base/rpc/impl/CtuInterceptor;
.super Ljava/lang/Object;
.source "CtuInterceptor.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/RpcInterceptor;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/base/rpc/impl/CtuInterceptor;->a:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public exceptionHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/alipay/mobile/common/rpc/RpcException;",
            "Ljava/lang/annotation/Annotation;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public postHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/annotation/Annotation;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public preHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;Ljava/lang/ThreadLocal;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p8, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 32
    :cond_0
    new-instance v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;-><init>()V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getCellInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->g:Ljava/lang/String;

    .line 36
    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->f:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->d:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->c:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "android"

    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->b:Ljava/lang/String;

    .line 40
    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->e:Ljava/lang/String;

    .line 42
    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->ismRooted()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->j:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/base/rpc/impl/CtuInterceptor;->a:Landroid/content/Context;

    check-cast v0, Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 47
    const-class v3, Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/helper/PayHelperServcie;

    .line 46
    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelperServcie;->getPaySysInfo()Ljava/lang/String;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->k:Ljava/lang/String;

    .line 54
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->h:Ljava/lang/String;

    .line 55
    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->i:Ljava/lang/String;

    .line 56
    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getLatitude()Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->l:Ljava/lang/String;

    .line 60
    :cond_2
    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getLongitude()Ljava/lang/String;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    iput-object v0, v1, Lcom/alipay/mobile/base/rpc/impl/RpcDeviceInfo;->m:Ljava/lang/String;

    .line 65
    :cond_3
    invoke-virtual {p8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v2, "updateDeviceInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    return v0
.end method
