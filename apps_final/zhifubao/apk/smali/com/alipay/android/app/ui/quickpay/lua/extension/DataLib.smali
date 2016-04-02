.class public Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib$DataLibV;
    }
.end annotation


# static fields
.field private static final DATA_CLEAR:I = 0x3

.field public static final DATA_NAMES:[Ljava/lang/String;

.field private static final DATA_READ:I = 0x0

.field private static final DATA_REMOVE:I = 0x2

.field private static final DATA_WRITE:I = 0x1

.field private static final DEFAULT_DATA_VALUE:Lorg/luaj/vm2/LuaValue;

.field public static final LIB_NAME:Ljava/lang/String; = "data"


# instance fields
.field private dataScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable",
            "<",
            "Lorg/luaj/vm2/LuaValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "write"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "remove"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "clear"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DATA_NAMES:[Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DEFAULT_DATA_VALUE:Lorg/luaj/vm2/LuaValue;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable",
            "<",
            "Lorg/luaj/vm2/LuaValue;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->setDataScriptable(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;)V

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 5

    new-instance v1, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v1}, Lorg/luaj/vm2/LuaTable;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DATA_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DATA_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib$DataLibV;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DATA_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v0, v4, p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib$DataLibV;-><init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;)V

    invoke-virtual {v1, v2, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "data"

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object v1
.end method

.method public data_clear(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->getDataScriptable()Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;->clear()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/luaj/vm2/LuaValue;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/luaj/vm2/LuaValue;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->varargsOf([Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0
.end method

.method public data_read(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DEFAULT_DATA_VALUE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DEFAULT_DATA_VALUE:Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->getDataScriptable()Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DEFAULT_DATA_VALUE:Lorg/luaj/vm2/LuaValue;

    invoke-interface {v2, v0, v3}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;->read(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public data_remove(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DEFAULT_DATA_VALUE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DEFAULT_DATA_VALUE:Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->getDataScriptable()Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DEFAULT_DATA_VALUE:Lorg/luaj/vm2/LuaValue;

    invoke-interface {v2, v0, v3}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;->remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public data_write(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 5

    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DEFAULT_DATA_VALUE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DEFAULT_DATA_VALUE:Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->getDataScriptable()Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;

    move-result-object v3

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->DEFAULT_DATA_VALUE:Lorg/luaj/vm2/LuaValue;

    invoke-interface {v3, v0, v2, v4}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;->write(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->dataScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;

    return-void
.end method

.method public getDataScriptable()Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable",
            "<",
            "Lorg/luaj/vm2/LuaValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->dataScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;

    return-object v0
.end method

.method public setDataScriptable(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable",
            "<",
            "Lorg/luaj/vm2/LuaValue;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->dataScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDataScriptable;

    return-void
.end method
