.class public Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiUploadReq;
.super Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/common/ToString;


# instance fields
.field public bizInfo:Ljava/lang/String;

.field public deviceInfo:Ljava/lang/String;

.field public userLoginSeqMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/common/ToString;-><init>()V

    return-void
.end method
