.class public Lcom/alipay/mobilesecurity/core/model/account/face/FaceResult;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accountInsuranceButton:Ljava/lang/String;

.field public accountInsuranceMemo:Ljava/lang/String;

.field public faceLoginStatus:Ljava/lang/Boolean;

.field public h5url:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method
