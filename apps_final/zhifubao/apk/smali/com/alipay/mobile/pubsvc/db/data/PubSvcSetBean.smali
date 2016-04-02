.class public Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;
.super Ljava/lang/Object;
.source "PubSvcSetBean.java"


# instance fields
.field public buttonName:Ljava/lang/String;

.field public buttonUrl:Ljava/lang/String;

.field public officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

.field public officialAccountShareInfo:Lcom/alipay/publiccore/client/result/OfficialAccountShareInfo;

.field public resultCode:I

.field public resultMsg:Ljava/lang/String;

.field public thirdPartyAccountInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/ThirdPartyAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
