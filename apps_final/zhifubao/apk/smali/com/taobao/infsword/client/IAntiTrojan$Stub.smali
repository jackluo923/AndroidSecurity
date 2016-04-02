.class public Lcom/taobao/infsword/client/IAntiTrojan$Stub;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/infsword/client/IAntiTrojan;


# static fields
.field private static a:Lcom/taobao/infsword/client/IAntiTrojan;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance()Lcom/taobao/infsword/client/IAntiTrojan;
    .locals 1

    sget-object v0, Lcom/taobao/infsword/client/IAntiTrojan$Stub;->a:Lcom/taobao/infsword/client/IAntiTrojan;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/infsword/client/a;

    invoke-direct {v0}, Lcom/taobao/infsword/client/a;-><init>()V

    sput-object v0, Lcom/taobao/infsword/client/IAntiTrojan$Stub;->a:Lcom/taobao/infsword/client/IAntiTrojan;

    :cond_0
    sget-object v0, Lcom/taobao/infsword/client/IAntiTrojan$Stub;->a:Lcom/taobao/infsword/client/IAntiTrojan;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/taobao/infsword/client/IAntiTrojan$Stub;->a:Lcom/taobao/infsword/client/IAntiTrojan;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/infsword/client/IAntiTrojan;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
