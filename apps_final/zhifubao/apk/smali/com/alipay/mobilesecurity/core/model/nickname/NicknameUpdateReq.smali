.class public Lcom/alipay/mobilesecurity/core/model/nickname/NicknameUpdateReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public nickname:Ljava/lang/String;

.field public switchFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/nickname/NicknameUpdateReq;->switchFlag:Z

    return-void
.end method
