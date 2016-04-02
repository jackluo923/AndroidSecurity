.class public Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib$PhoneLibV;
    }
.end annotation


# static fields
.field public static final LIB_NAME:Ljava/lang/String; = "phone"

.field private static final PHONE_CALL:I = 0x1

.field private static final PHONE_MSG:I

.field public static final PHONE_NAMES:[Ljava/lang/String;


# instance fields
.field private phoneScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "msg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "call"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->PHONE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->phoneScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 5

    new-instance v1, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v1}, Lorg/luaj/vm2/LuaTable;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->PHONE_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->PHONE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib$PhoneLibV;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->PHONE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v0, v4, p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib$PhoneLibV;-><init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;)V

    invoke-virtual {v1, v2, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object v1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public phone_call(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->phoneScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;->call(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public phone_msg(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

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

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->phoneScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;

    invoke-interface {v2, v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;->msg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
