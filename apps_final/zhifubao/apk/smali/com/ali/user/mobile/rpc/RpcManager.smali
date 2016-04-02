.class public Lcom/ali/user/mobile/rpc/RpcManager;
.super Ljava/lang/Object;
.source "RpcManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRpcFactory2(Landroid/content/Context;)Lcom/ali/user/mobile/rpc/IRpcFactory;
    .locals 2

    .prologue
    .line 16
    const-string/jumbo v0, "com.ali.user.mobile.gw.GWUrlSetting"

    const-string/jumbo v1, "getMobileGW"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/util/ReflectUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    new-instance v1, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;

    invoke-direct {v1, p0, v0}, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getRpcFactory2(Landroid/content/Context;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/IRpcFactory;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRpcFactory2(Landroid/content/Context;Ljava/lang/String;Z)Lcom/ali/user/mobile/rpc/IRpcFactory;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRpcFactory2(Landroid/content/Context;Z)Lcom/ali/user/mobile/rpc/IRpcFactory;
    .locals 2

    .prologue
    .line 21
    const-string/jumbo v0, "com.ali.user.mobile.gw.GWUrlSetting"

    const-string/jumbo v1, "getMobileGW"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/util/ReflectUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    new-instance v1, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;

    invoke-direct {v1, p0, v0}, Lcom/ali/user/mobile/rpc/AlipayRpcFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1
.end method
