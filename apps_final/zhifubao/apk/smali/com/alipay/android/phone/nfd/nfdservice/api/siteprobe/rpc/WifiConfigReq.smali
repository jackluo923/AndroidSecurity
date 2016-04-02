.class public Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiConfigReq;
.super Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/common/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public probeEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/common/ToString;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiConfigReq;->probeEnable:Z

    return-void
.end method
