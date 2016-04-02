.class public Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Coordinate;
.super Ljava/lang/Object;
.source "LocationCityMgr.java"


# instance fields
.field public latitude:D

.field public longitude:D

.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;)V
    .locals 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Coordinate;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide v0, -0x3f89800000000000L    # -360.0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Coordinate;->latitude:D

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Coordinate;->longitude:D

    .line 49
    return-void
.end method
