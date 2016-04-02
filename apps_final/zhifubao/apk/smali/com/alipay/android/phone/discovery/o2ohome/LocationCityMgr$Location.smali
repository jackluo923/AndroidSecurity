.class public Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;
.super Ljava/lang/Object;
.source "LocationCityMgr.java"


# instance fields
.field public adCode:Ljava/lang/String;

.field public cityName:Ljava/lang/String;

.field public latitude:D

.field public longitude:D

.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)V
    .locals 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide v0, -0x3f89800000000000L    # -360.0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->latitude:D

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->longitude:D

    .line 34
    return-void
.end method


# virtual methods
.method public isInvalid()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
