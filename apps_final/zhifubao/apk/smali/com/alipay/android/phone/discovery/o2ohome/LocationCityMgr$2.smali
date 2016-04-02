.class Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$2;
.super Ljava/lang/Object;
.source "LocationCityMgr.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->locationView:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_LOADING:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView;->changeStyleType(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->startLocationTaskWithListener()V

    .line 172
    return-void
.end method
