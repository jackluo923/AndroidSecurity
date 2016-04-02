.class public Lcom/alipay/publiccore/client/model/OfficialAccountInfo;
.super Lcom/alipay/publiccore/client/model/OfficialBaseInfo;
.source "OfficialAccountInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x3b079e7819d74290L


# instance fields
.field public followCount:Ljava/lang/String;

.field public followType:Ljava/lang/String;

.field public gotoUrl:Ljava/lang/String;

.field public isFollow:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public properties:Lcom/alipay/publiccore/client/model/OperateProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alipay/publiccore/client/model/OfficialBaseInfo;-><init>()V

    .line 21
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/publiccore/client/model/OfficialAccountInfo;->isFollow:Ljava/lang/String;

    .line 8
    return-void
.end method
