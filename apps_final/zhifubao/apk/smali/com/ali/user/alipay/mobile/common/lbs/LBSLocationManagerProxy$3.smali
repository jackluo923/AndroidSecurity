.class Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"

# interfaces
.implements Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field final synthetic this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;


# direct methods
.method constructor <init>(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    iput-object p2, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;->a:Landroid/content/Context;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationUpdate(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;
    invoke-static {v2}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$4(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 166
    return-void
.end method
