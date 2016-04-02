.class public Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accessWirelessNetType:Ljava/lang/String;

.field public accuracy:D

.field public altitude:D

.field public bluetoothMac:Ljava/lang/String;

.field public bluetoothOpen:Z

.field public cdmaInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;",
            ">;"
        }
    .end annotation
.end field

.field public currentMobileOperator:Ljava/lang/String;

.field public direction:D

.field public extraInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gsmInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/GSMInfo;",
            ">;"
        }
    .end annotation
.end field

.field public latitude:D

.field public lbsOpen:Z

.field public longitude:D

.field public os:Ljava/lang/String;

.field public sensors:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public speed:D

.field public wifiConn:Ljava/lang/String;

.field public wifiConnectBypassword:Ljava/lang/String;

.field public wifiInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/WifiInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "Android"

    iput-object v0, p0, Lcom/ali/user/alipay/mobilelbs/common/service/facade/vo/Location;->os:Ljava/lang/String;

    .line 12
    return-void
.end method
