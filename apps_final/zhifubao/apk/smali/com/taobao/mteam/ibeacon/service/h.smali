.class final Lcom/taobao/mteam/ibeacon/service/h;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taobao/mteam/ibeacon/service/IBeaconService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static a(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v0, "IBEACON_DATA_KEY"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-class v1, Lcom/taobao/mteam/ibeacon/service/StartRMData;

    invoke-static {p1, v1}, Lcom/taobao/mteam/ibeacon/service/h;->a(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/service/StartRMData;

    const-string/jumbo v2, "IBeaconService"

    const-string/jumbo v3, "start ranging received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->a()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->b()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(JJ)V

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->c()Lcom/taobao/mteam/ibeacon/service/RegionData;

    move-result-object v2

    new-instance v3, Lcom/taobao/mteam/ibeacon/service/Callback;

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/taobao/mteam/ibeacon/service/Callback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Lcom/taobao/mteam/ibeacon/Region;Lcom/taobao/mteam/ibeacon/service/Callback;)V

    goto :goto_0

    :pswitch_1
    const-class v1, Lcom/taobao/mteam/ibeacon/service/StartRMData;

    invoke-static {p1, v1}, Lcom/taobao/mteam/ibeacon/service/h;->a(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/service/StartRMData;

    const-string/jumbo v2, "IBeaconService"

    const-string/jumbo v3, "stop ranging received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->c()Lcom/taobao/mteam/ibeacon/service/RegionData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Lcom/taobao/mteam/ibeacon/Region;)V

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->a()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->b()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(JJ)V

    goto :goto_0

    :pswitch_2
    const-class v1, Lcom/taobao/mteam/ibeacon/service/StartRMData;

    invoke-static {p1, v1}, Lcom/taobao/mteam/ibeacon/service/h;->a(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/service/StartRMData;

    const-string/jumbo v2, "IBeaconService"

    const-string/jumbo v3, "start monitoring received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->a()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->b()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(JJ)V

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->c()Lcom/taobao/mteam/ibeacon/service/RegionData;

    move-result-object v2

    new-instance v3, Lcom/taobao/mteam/ibeacon/service/Callback;

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/taobao/mteam/ibeacon/service/Callback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b(Lcom/taobao/mteam/ibeacon/Region;Lcom/taobao/mteam/ibeacon/service/Callback;)V

    goto :goto_0

    :pswitch_3
    const-class v1, Lcom/taobao/mteam/ibeacon/service/StartRMData;

    invoke-static {p1, v1}, Lcom/taobao/mteam/ibeacon/service/h;->a(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/service/StartRMData;

    const-string/jumbo v2, "IBeaconService"

    const-string/jumbo v3, "stop monitoring received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->c()Lcom/taobao/mteam/ibeacon/service/RegionData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b(Lcom/taobao/mteam/ibeacon/Region;)V

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->a()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->b()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(JJ)V

    goto/16 :goto_0

    :pswitch_4
    const-class v1, Lcom/taobao/mteam/ibeacon/service/StartRMData;

    invoke-static {p1, v1}, Lcom/taobao/mteam/ibeacon/service/h;->a(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/service/StartRMData;

    const-string/jumbo v2, "IBeaconService"

    const-string/jumbo v3, "set scan intervals received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->a()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/StartRMData;->b()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(JJ)V

    goto/16 :goto_0

    :pswitch_5
    const-class v1, Lcom/taobao/mteam/ibeacon/BeaconFilter;

    invoke-static {p1, v1}, Lcom/taobao/mteam/ibeacon/service/h;->a(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/BeaconFilter;

    invoke-virtual {v0, v1}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Lcom/taobao/mteam/ibeacon/BeaconFilter;)V

    goto/16 :goto_0

    :pswitch_6
    const-class v1, Lcom/taobao/mteam/ibeacon/BeaconFilter;

    invoke-static {p1, v1}, Lcom/taobao/mteam/ibeacon/service/h;->a(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/BeaconFilter;

    invoke-virtual {v0, v1}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b(Lcom/taobao/mteam/ibeacon/BeaconFilter;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
