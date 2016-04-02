.class public Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/SubmitTidResult;
.super Lcom/alipay/mobilesecurity/core/model/auth/AuthBaseResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public authInfo:Lcom/alipay/mobilesecurity/core/model/auth/AuthInfo;

.field public permPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/PermPointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public validType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/core/model/auth/AuthBaseResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/SubmitTidResult;->permPoints:Ljava/util/List;

    return-void
.end method
