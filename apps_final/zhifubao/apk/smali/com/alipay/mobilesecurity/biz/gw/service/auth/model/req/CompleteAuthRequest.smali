.class public Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public authId:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public permPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tid:Lcom/alipay/mobilesecurity/core/model/Tid;

.field public validType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method
