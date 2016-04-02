.class public Lcom/alipay/mobileprod/biz/deposit/vo/ComponetDataList;
.super Lcom/alipay/mobileprod/core/model/deposit/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/deposit/vo/ComponetData;",
            ">;"
        }
    .end annotation
.end field

.field public defaultDataValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/deposit/ToString;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/vo/ComponetDataList;->defaultDataValue:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/vo/ComponetDataList;->datas:Ljava/util/List;

    return-void
.end method
