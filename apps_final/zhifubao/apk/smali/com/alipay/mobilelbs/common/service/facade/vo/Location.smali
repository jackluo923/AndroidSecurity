.class public Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accuracy:D

.field public adCode:Ljava/lang/String;

.field public address:Ljava/lang/String;

.field public altitude:D

.field public bluetoothDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field public cdmaInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;",
            ">;"
        }
    .end annotation
.end field

.field public city:Ljava/lang/String;

.field public cityCode:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public direction:D

.field public district:Ljava/lang/String;

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
            "Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;",
            ">;"
        }
    .end annotation
.end field

.field public latitude:D

.field public longitude:D

.field public province:Ljava/lang/String;

.field public provinceAdCode:Ljava/lang/String;

.field public speed:D

.field public street:Ljava/lang/String;

.field public wifiInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
