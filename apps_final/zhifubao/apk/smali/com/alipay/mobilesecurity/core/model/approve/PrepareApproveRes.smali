.class public Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public approveImgUrl:Ljava/lang/String;

.field public approvePageTitle:Ljava/lang/String;

.field public approvePageType:Ljava/lang/String;

.field public approveTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field public authTargetDescription:Ljava/lang/String;

.field public authTargetLogoUrl:Ljava/lang/String;

.field public authTargetTitle:Ljava/lang/String;

.field public cancelButtonText:Ljava/lang/String;

.field public confirmButtonText:Ljava/lang/String;

.field public needMobileSp:Z

.field public needPassword:Z

.field public openId:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method
