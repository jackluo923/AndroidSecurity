.class public Lcom/alipay/mobilesecurity/core/model/account/certify/DoubleCertificatesAuditReq;
.super Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyReq;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public secondCertificatesType:Ljava/lang/String;

.field public secondDownImgUrl:Ljava/lang/String;

.field public secondUpImgUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyReq;-><init>()V

    return-void
.end method
