.class public Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public terminalInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method
