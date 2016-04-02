.class public Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/DeviceSyncReq;
.super Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/common/ToString;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public apdid:Ljava/lang/String;

.field public cssids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;",
            ">;"
        }
    .end annotation
.end field

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public lat:Ljava/lang/String;

.field public lon:Ljava/lang/String;

.field public mcount:I

.field public network:I

.field public os:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public ssids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/datainfo/SsidInfo;",
            ">;"
        }
    .end annotation
.end field

.field public tid:Ljava/lang/String;

.field public utdid:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public wcount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/common/ToString;-><init>()V

    return-void
.end method
