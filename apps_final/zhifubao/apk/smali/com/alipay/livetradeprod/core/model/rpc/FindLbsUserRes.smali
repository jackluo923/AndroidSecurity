.class public Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;
.super Lcom/alipay/livetradeprod/core/model/base/OnsiteBaseRes;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public timestamp:Ljava/lang/String;

.field public userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/livetradeprod/core/model/base/DisplayUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/livetradeprod/core/model/base/OnsiteBaseRes;-><init>()V

    return-void
.end method
