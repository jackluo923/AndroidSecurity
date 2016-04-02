.class public Lcom/alipay/mobilesecurity/core/model/account/face/FaceReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public businessMobileValidateStatus:Ljava/lang/String;

.field public businessMobileValidateStatusDate:Ljava/lang/String;

.field public cellID:Ljava/lang/String;

.field public faceUrl:Ljava/lang/String;

.field public failCount:Ljava/lang/Integer;

.field public loginId:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public prisonBreak:Z

.field public productVersion:Ljava/lang/String;

.field public reqType:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public umidToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method
