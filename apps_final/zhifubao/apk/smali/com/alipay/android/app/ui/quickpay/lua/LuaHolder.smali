.class public Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# instance fields
.field private a:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

.field private b:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

.field private c:Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;

.field private d:Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;

.field private e:Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;

.field private f:Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib;

.field private g:Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;

.field protected globals:Lorg/luaj/vm2/Globals;

.field protected luaScript:Lorg/luaj/vm2/LuaValue;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/luaj/vm2/Globals;

    invoke-direct {v0}, Lorg/luaj/vm2/Globals;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Lorg/luaj/vm2/lib/jse/JseBaseLib;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/jse/JseBaseLib;-><init>()V

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Lorg/luaj/vm2/lib/PackageLib;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/PackageLib;-><init>()V

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Lorg/luaj/vm2/lib/Bit32Lib;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/Bit32Lib;-><init>()V

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Lorg/luaj/vm2/lib/TableLib;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/TableLib;-><init>()V

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Lorg/luaj/vm2/lib/StringLib;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/StringLib;-><init>()V

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Lorg/luaj/vm2/lib/CoroutineLib;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/CoroutineLib;-><init>()V

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Lorg/luaj/vm2/lib/jse/JseMathLib;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/jse/JseMathLib;-><init>()V

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Lorg/luaj/vm2/lib/jse/JseIoLib;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/jse/JseIoLib;-><init>()V

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Lorg/luaj/vm2/lib/jse/JseOsLib;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/jse/JseOsLib;-><init>()V

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Lorg/luaj/vm2/lib/jse/LuajavaLib;

    invoke-direct {v1}, Lorg/luaj/vm2/lib/jse/LuajavaLib;-><init>()V

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    invoke-direct {v0, p2}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->b:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/DataScriptable;

    invoke-direct {v1}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/DataScriptable;-><init>()V

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->c:Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/PhoneScriptable;

    invoke-direct {v1}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/PhoneScriptable;-><init>()V

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->e:Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/NetScriptable;

    invoke-direct {v1}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/NetScriptable;-><init>()V

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INetScriptable;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->d:Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/TidScriptable;

    invoke-direct {v1}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/TidScriptable;-><init>()V

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/ITidScriptable;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->f:Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/UpdateScriptable;

    invoke-direct {v1}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/UpdateScriptable;-><init>()V

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IUpdateScriptable;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->g:Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->b:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->c:Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->e:Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->d:Lcom/alipay/android/app/ui/quickpay/lua/extension/NetLib;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->f:Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->g:Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib;

    invoke-direct {v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/AlipayLib;-><init>()V

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/Globals;->load(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    invoke-static {v0}, Lorg/luaj/vm2/LoadState;->install(Lorg/luaj/vm2/Globals;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    invoke-static {v0}, Lorg/luaj/vm2/compiler/LuaC;->install(Lorg/luaj/vm2/Globals;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->dispose()V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->a:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->b:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->b:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->dispose()V

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->b:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    :cond_1
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->luaScript:Lorg/luaj/vm2/LuaValue;

    return-void
.end method

.method public get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/Globals;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public getGlobals()Lorg/luaj/vm2/Globals;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->globals:Lorg/luaj/vm2/Globals;

    return-object v0
.end method

.method public getLuaScript()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->luaScript:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method
