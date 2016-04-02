.class public Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib$NetLibV;
    }
.end annotation


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "net"

.field private static final NET_GET:I = 0x0

.field public static final NET_NAMES:[Ljava/lang/String;

.field private static final NET_POST:I = 0x1


# instance fields
.field private netScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INetScriptable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "get"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "post"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;->NET_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INetScriptable;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;->netScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INetScriptable;

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 5

    new-instance v1, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v1}, Lorg/luaj/vm2/LuaTable;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;->NET_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;->NET_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib$NetLibV;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;->NET_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v0, v4, p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib$NetLibV;-><init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;)V

    invoke-virtual {v1, v2, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "net"

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object v1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getNetScriptable()Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INetScriptable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;->netScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INetScriptable;

    return-object v0
.end method

.method public net_get(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkfunction(I)Lorg/luaj/vm2/LuaFunction;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;->netScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INetScriptable;

    invoke-interface {v2, v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INetScriptable;->get(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public net_post(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v1, 0x3

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkfunction(I)Lorg/luaj/vm2/LuaFunction;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;->netScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INetScriptable;

    invoke-interface {v3, v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INetScriptable;->post(Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public setNetScriptable(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INetScriptable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;->netScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INetScriptable;

    return-void
.end method
