.class public Lcom/alipay/mobilesecurity/core/model/devicelock/DeviceLockWithPassReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public encryType:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public passwordType:Ljava/lang/String;

.field public plateForm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobilesecurity/core/model/devicelock/DeviceLockWithPassReq;->encryType:Ljava/lang/String;

    return-void
.end method
