.class public Lcom/alipay/publiccore/client/result/TopicOfficialListResult;
.super Lcom/alipay/publiccore/client/result/PublicResult;
.source "TopicOfficialListResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasNextPage:Z

.field public officialAccountInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/OfficialAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field public topicName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/publiccore/client/result/PublicResult;-><init>()V

    return-void
.end method
