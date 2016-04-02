.class public Lcom/alipay/mobile/rome/syncsdk/service/a/d;
.super Ljava/lang/Object;
.source "DisconnectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncsdk/service/a/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/d;->a:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/d;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/d;->a:Ljava/lang/String;

    const-string/jumbo v1, "DisconnectTask: run: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/a/d;->a:Ljava/lang/String;

    const-string/jumbo v1, "disconnect: [ DisconnectTask ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/d;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->toInitState()V

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/d;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnection()Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/d;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setConnection(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->f()V

    .line 35
    :cond_0
    return-void
.end method
