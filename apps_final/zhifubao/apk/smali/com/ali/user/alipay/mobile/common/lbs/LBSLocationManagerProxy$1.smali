.class Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Z

.field final synthetic this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;


# direct methods
.method constructor <init>(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    iput-object p2, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->b:Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Z
    invoke-static {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$0(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$1(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;Z)V

    .line 62
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z
    invoke-static {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$2(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    # getter for: Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;
    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$3()Ljava/lang/String;

    .line 65
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->b:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/location/LocationManagerProxy;->setGpsEnable(Z)V

    .line 66
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "lbs"

    .line 68
    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    .line 67
    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationUpdates(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    iget-object v1, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z
    invoke-static {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$2(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    # getter for: Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;
    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$3()Ljava/lang/String;

    .line 72
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
