.class Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1$1;
.super Ljava/lang/Object;
.source "LocationCityMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;

.field private final synthetic val$isOK:Z

.field private final synthetic val$lbs:Lcom/alipay/mobile/common/lbs/LBSLocation;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;ZLcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;

    iput-boolean p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1$1;->val$isOK:Z

    iput-object p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1$1;->val$lbs:Lcom/alipay/mobile/common/lbs/LBSLocation;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->callback:Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1$1;->val$isOK:Z

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$1$1;->val$lbs:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;->onLocationResult(ZLcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 92
    return-void
.end method
