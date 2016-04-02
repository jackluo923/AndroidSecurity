.class final Lcom/alipay/mobile/command/manager/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/command/listener/NotifyListener;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/listener/NotifyListener;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/manager/b;->a:Lcom/alipay/mobile/command/listener/NotifyListener;

    iput-object p2, p0, Lcom/alipay/mobile/command/manager/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Boolean;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/command/manager/b;->a:Lcom/alipay/mobile/command/listener/NotifyListener;

    iget-object v1, p0, Lcom/alipay/mobile/command/manager/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/command/listener/NotifyListener;->notify(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "manager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "furure\u6267\u884c\u5f02\u5e38"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/command/manager/b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
