.class public Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;,
        Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;
    }
.end annotation


# static fields
.field private static final DEFAULT_ATTR_VALUE:Lorg/luaj/vm2/LuaValue;

.field private static final DOC_GET_BY_ATTR:I = 0x1

.field private static final DOC_GET_BY_ID:I = 0x0

.field public static final DOC_NAMES:[Ljava/lang/String;

.field private static final DOC_VALIDATE:I = 0x2

.field public static final LIB_NAME:Ljava/lang/String; = "doc"

.field private static final NODE_ATTR:I = 0x3

.field private static final NODE_EVENT:I = 0x4

.field public static final NODE_NAMES:[Ljava/lang/String;


# instance fields
.field private docScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

.field private nodeMethods:Lorg/luaj/vm2/LuaTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "getById"

    aput-object v1, v0, v2

    const-string/jumbo v1, "getByAttr"

    aput-object v1, v0, v3

    const-string/jumbo v1, "validate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->DOC_NAMES:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "attr"

    aput-object v1, v0, v2

    const-string/jumbo v1, "event"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->NODE_NAMES:[Ljava/lang/String;

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->DEFAULT_ATTR_VALUE:Lorg/luaj/vm2/LuaValue;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->setDocScriptable(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;)Lorg/luaj/vm2/LuaTable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->nodeMethods:Lorg/luaj/vm2/LuaTable;

    return-object v0
.end method

.method private adapterToNode(Ljava/util/List;)Lorg/luaj/vm2/Varargs;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;",
            ">;)",
            "Lorg/luaj/vm2/Varargs;"
        }
    .end annotation

    new-instance v1, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v1}, Lorg/luaj/vm2/LuaTable;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    add-int/lit8 v4, v2, 0x1

    new-instance v5, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;

    invoke-direct {v5, p0, v0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;)V

    invoke-virtual {v1, v4, v5}, Lorg/luaj/vm2/LuaTable;->set(ILorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static optNode(Lorg/luaj/vm2/LuaValue;)Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;
    .locals 1

    instance-of v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v2}, Lorg/luaj/vm2/LuaTable;-><init>()V

    move v0, v1

    :goto_0
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->DOC_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->DOC_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v0, v4, p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;-><init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;)V

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->DOC_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaTable;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->nodeMethods:Lorg/luaj/vm2/LuaTable;

    :goto_1
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->NODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v1, 0x3

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->NODE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;-><init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->nodeMethods:Lorg/luaj/vm2/LuaTable;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->NODE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "doc"

    invoke-virtual {p2, v0, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object v2
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->docScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

    return-void
.end method

.method public doc_get_by_attr(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->docScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

    invoke-interface {v3, v1, v2}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;->getByAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->adapterToNode(Ljava/util/List;)Lorg/luaj/vm2/Varargs;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doc_get_by_id(Lorg/luaj/vm2/Varargs;)Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->getDocScriptable()Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;->getById(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_1
.end method

.method public doc_validate(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->docScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;->validate()Z

    move-result v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getDocScriptable()Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->docScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

    return-object v0
.end method

.method public node_attr(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v1, 0x2

    invoke-virtual {p2}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->optNode(Lorg/luaj/vm2/LuaValue;)Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;->attr(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_1
    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    if-lez v0, :cond_4

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p2, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;->attr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/luaj/vm2/LuaError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    :goto_2
    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->DEFAULT_ATTR_VALUE:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0
.end method

.method public node_event(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p2}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-ge v0, v2, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->optNode(Lorg/luaj/vm2/LuaValue;)Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v1

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lorg/luaj/vm2/Varargs;->checkfunction(I)Lorg/luaj/vm2/LuaFunction;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;->event(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setDocScriptable(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->docScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

    return-void
.end method
