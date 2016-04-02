.class public Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "UserAccountLayoutResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5e97598593c9b07fL


# instance fields
.field public bizCode:I

.field public bizResult:Ljava/lang/String;

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

.field public isFollow:Ljava/lang/String;

.field public isLimitAddThird:Ljava/lang/String;

.field public layoutModel:Lcom/alipay/publiccore/core/model/account/LayoutModel;

.field public thirdAccountMenus:Ljava/util/Map;
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

.field public thirdPartyAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/ThirdPartyAccount;",
            ">;"
        }
    .end annotation
.end field

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    .line 48
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;->isLimitAddThird:Ljava/lang/String;

    .line 14
    return-void
.end method
