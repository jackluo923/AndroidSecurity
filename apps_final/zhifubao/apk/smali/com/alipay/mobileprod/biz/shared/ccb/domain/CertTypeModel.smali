.class public Lcom/alipay/mobileprod/biz/shared/ccb/domain/CertTypeModel;
.super Ljava/lang/Object;


# instance fields
.field public certMsg:Ljava/lang/String;

.field public code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccb/domain/CertTypeModel;->certMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccb/domain/CertTypeModel;->code:Ljava/lang/String;

    return-object v0
.end method

.method public setCertMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccb/domain/CertTypeModel;->certMsg:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccb/domain/CertTypeModel;->code:Ljava/lang/String;

    return-void
.end method
