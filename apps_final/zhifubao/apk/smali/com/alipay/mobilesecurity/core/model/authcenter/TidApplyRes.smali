.class public Lcom/alipay/mobilesecurity/core/model/authcenter/TidApplyRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public tid:Lcom/alipay/mobilesecurity/core/model/Tid;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getTid()Lcom/alipay/mobilesecurity/core/model/Tid;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/authcenter/TidApplyRes;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-object v0
.end method

.method public setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/authcenter/TidApplyRes;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-void
.end method
