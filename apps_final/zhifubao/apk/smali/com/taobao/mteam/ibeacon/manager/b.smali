.class final Lcom/taobao/mteam/ibeacon/manager/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field final synthetic c:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;


# direct methods
.method private constructor <init>(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/manager/b;->c:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/taobao/mteam/ibeacon/manager/b;->a:Z

    iput-boolean v0, p0, Lcom/taobao/mteam/ibeacon/manager/b;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taobao/mteam/ibeacon/manager/b;-><init>(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;)V

    return-void
.end method
