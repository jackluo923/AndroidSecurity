.class public Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidVO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public authType:Ljava/lang/Integer;

.field public devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/DeviceVO;",
            ">;"
        }
    .end annotation
.end field

.field public id:J

.field public lat:Ljava/lang/Integer;

.field public lon:Ljava/lang/Integer;

.field public matchType:Ljava/lang/Integer;

.field public ssid:Ljava/lang/String;

.field public status:Ljava/lang/Integer;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
