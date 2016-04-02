.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public businessMobileValidateStatus:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public tid:Lcom/alipay/mobilesecurity/core/model/Tid;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method
