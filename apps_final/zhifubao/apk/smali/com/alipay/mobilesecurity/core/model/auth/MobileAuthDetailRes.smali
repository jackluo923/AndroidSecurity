.class public Lcom/alipay/mobilesecurity/core/model/auth/MobileAuthDetailRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public approvePageTitle:Ljava/lang/String;

.field public authDate:Ljava/lang/String;

.field public authDateText:Ljava/lang/String;

.field public authOptionTitle:Ljava/lang/String;

.field public authOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/common/spi/approve/AuthOption;",
            ">;"
        }
    .end annotation
.end field

.field public authState:Ljava/lang/String;

.field public authTargetDescription:Ljava/lang/String;

.field public authTargetLogoUrl:Ljava/lang/String;

.field public authTargetTitle:Ljava/lang/String;

.field public expireDate:Ljava/lang/String;

.field public expireDateText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method
