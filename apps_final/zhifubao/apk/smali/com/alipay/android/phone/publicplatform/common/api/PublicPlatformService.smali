.class public abstract Lcom/alipay/android/phone/publicplatform/common/api/PublicPlatformService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "PublicPlatformService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addFollow(Lcom/alipay/publiccore/client/req/FollowReq;)Lcom/alipay/publiccore/client/result/AddFollowResult;
.end method

.method public abstract getUserFollowAccountFromLocal(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
.end method

.method public abstract isFollow(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract markReaded(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract queryUserFollowAccountFromLocal(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeFollow(Ljava/lang/String;Lcom/alipay/publiccore/client/req/FollowReq;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.end method

.method public abstract removeLocalFollow(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract updateFollowStatus(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract updateSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract waitAddFinish(Ljava/lang/String;)V
.end method
