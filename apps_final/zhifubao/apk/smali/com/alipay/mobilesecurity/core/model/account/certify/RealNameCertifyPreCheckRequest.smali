.class public Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyPreCheckRequest;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public certNo:Ljava/lang/String;

.field public logonId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public preCertifyCheckType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobilesecurity/core/model/account/certify/RealNameCertifyPreCheckRequest;->preCertifyCheckType:I

    return-void
.end method
