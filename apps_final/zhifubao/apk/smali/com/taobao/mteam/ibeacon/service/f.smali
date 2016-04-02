.class final Lcom/taobao/mteam/ibeacon/service/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/service/f;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/f;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/f;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-static {v1}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Lcom/taobao/mteam/ibeacon/service/IBeaconService;Ljava/lang/Boolean;)V

    return-void
.end method
