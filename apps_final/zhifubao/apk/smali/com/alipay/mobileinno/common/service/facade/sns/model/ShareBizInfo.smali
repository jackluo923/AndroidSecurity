.class public Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareBizInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizId:Ljava/lang/String;

.field public bizName:Ljava/lang/String;

.field public campId:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "initialize"

    iput-object v0, p0, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareBizInfo;->status:Ljava/lang/String;

    return-void
.end method
