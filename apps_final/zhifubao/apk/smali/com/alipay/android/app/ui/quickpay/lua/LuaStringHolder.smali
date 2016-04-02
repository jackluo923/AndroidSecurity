.class public Lcom/alipay/android/app/ui/quickpay/lua/LuaStringHolder;
.super Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public load(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaStringHolder;->globals:Lorg/luaj/vm2/Globals;

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/Globals;->load(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaStringHolder;->luaScript:Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaStringHolder;->luaScript:Lorg/luaj/vm2/LuaValue;

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaStringHolder;->luaScript:Lorg/luaj/vm2/LuaValue;

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
