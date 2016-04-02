.class public Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;
.super Ljava/lang/Object;
.source "PubSvcAccountBean.java"


# instance fields
.field public bizCode:I

.field public h5LaunchStyleParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isFlowed:Ljava/lang/String;

.field public isLimitAddThird:Ljava/lang/String;

.field public mAccountLayoutInfo:Lcom/alipay/publiccore/core/model/account/LayoutModel;

.field public mPublicId:Ljava/lang/String;

.field public mThirdAccountMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/publiccore/core/model/account/ButtonObjectList;",
            ">;"
        }
    .end annotation
.end field

.field public mThirdPartyAccount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mThirdPartyAccount:Ljava/util/List;

    .line 18
    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mThirdAccountMenus:Ljava/util/Map;

    .line 10
    return-void
.end method
