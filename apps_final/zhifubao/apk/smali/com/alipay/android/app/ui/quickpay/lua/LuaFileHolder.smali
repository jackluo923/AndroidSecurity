.class public Lcom/alipay/android/app/ui/quickpay/lua/LuaFileHolder;
.super Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;

# interfaces
.implements Lorg/luaj/vm2/lib/ResourceFinder;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaFileHolder;->globals:Lorg/luaj/vm2/Globals;

    iput-object p0, v0, Lorg/luaj/vm2/Globals;->finder:Lorg/luaj/vm2/lib/ResourceFinder;

    return-void
.end method


# virtual methods
.method public findResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaFileHolder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/content/Context;Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaFileHolder;->a:Landroid/content/Context;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaFileHolder;->globals:Lorg/luaj/vm2/Globals;

    invoke-virtual {v0, p2}, Lorg/luaj/vm2/Globals;->loadfile(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaFileHolder;->luaScript:Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaFileHolder;->luaScript:Lorg/luaj/vm2/LuaValue;

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaFileHolder;->luaScript:Lorg/luaj/vm2/LuaValue;

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
