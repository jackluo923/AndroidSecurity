.class public Lcom/alipay/mobilerelation/core/model/mobile/UploadMobileContact;
.super Lcom/alipay/mobilerelation/core/model/config/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public deviceId:Ljava/lang/String;

.field public recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/core/model/mobile/MobileContactRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilerelation/core/model/config/ToString;-><init>()V

    return-void
.end method
