.class Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;
.super Ljava/lang/Object;
.source "LocationCityMgr.java"

# interfaces
.implements Lcom/alipay/android/phone/discovery/o2ohome/util/LBSWrapListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    return-object v0
.end method


# virtual methods
.method public onLocationResult(ZLcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;ZLcom/alipay/mobile/common/lbs/LBSLocation;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method
