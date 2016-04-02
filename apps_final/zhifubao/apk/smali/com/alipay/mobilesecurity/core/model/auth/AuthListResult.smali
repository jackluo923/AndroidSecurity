.class public Lcom/alipay/mobilesecurity/core/model/auth/AuthListResult;
.super Lcom/alipay/mobilesecurity/core/model/auth/AuthBaseResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public authModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/auth/AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field public currentPageNum:I

.field public hasNext:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/core/model/auth/AuthBaseResult;-><init>()V

    return-void
.end method
