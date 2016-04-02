.class public Lcom/alipay/publiccore/client/result/UserAccountResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "UserAccountResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public avatar:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public followType:Ljava/lang/String;

.field public isFollow:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public publicType:Ljava/lang/String;

.field public realName:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    .line 39
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/publiccore/client/result/UserAccountResult;->isFollow:Ljava/lang/String;

    .line 10
    return-void
.end method
