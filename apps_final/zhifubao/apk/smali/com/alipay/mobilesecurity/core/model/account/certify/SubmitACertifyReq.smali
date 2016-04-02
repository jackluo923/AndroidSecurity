.class public Lcom/alipay/mobilesecurity/core/model/account/certify/SubmitACertifyReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public certNo:Ljava/lang/String;

.field public downImgUrl:Ljava/lang/String;

.field public expireDate:Ljava/lang/String;

.field public isForever:Z

.field public logonId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public upImgUrl:Ljava/lang/String;

.field public urgentProcessFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method
