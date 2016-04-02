.class public Lcom/alipay/mobilesecurity/core/model/account/loginLog/SimpleLoginLogRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public latestLoginlog:Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLog;

.field public loginNotifyStat:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method
