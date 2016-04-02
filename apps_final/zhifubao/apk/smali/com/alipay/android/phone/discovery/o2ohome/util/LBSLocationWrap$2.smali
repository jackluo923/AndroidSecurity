.class Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$2;
.super Ljava/lang/Object;
.source "LBSLocationWrap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->checkLocationTimeOut()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$6(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)V

    .line 185
    return-void
.end method
