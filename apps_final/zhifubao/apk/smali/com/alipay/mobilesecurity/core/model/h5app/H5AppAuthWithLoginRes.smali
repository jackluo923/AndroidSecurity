.class public Lcom/alipay/mobilesecurity/core/model/h5app/H5AppAuthWithLoginRes;
.super Lcom/alipay/mobilesecurity/core/model/h5app/H5AppAuthRes;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public domains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/core/model/h5app/H5AppAuthRes;-><init>()V

    return-void
.end method
