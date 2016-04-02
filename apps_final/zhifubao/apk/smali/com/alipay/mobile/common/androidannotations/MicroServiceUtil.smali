.class public final Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;
.super Ljava/lang/Object;
.source "MicroServiceUtil.java"


# static fields
.field private static a:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private static b:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    if-nez v0, :cond_1

    .line 21
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 22
    sput-object v0, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    sput-object v0, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 24
    :cond_1
    return-void
.end method

.method public static final getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->a()V

    .line 43
    sget-object v0, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->a()V

    .line 79
    sget-object v0, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public static final getMicroService(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/MicroService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/MicroService;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->a()V

    .line 49
    const-class v0, Lcom/alipay/mobile/framework/service/CommonService;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/MicroService;

    .line 56
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/ExternalService;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->a()V

    .line 33
    sget-object v0, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final getServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/CommonService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/CommonService;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->a()V

    .line 67
    sget-object v0, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/CommonService;

    return-object v0
.end method
