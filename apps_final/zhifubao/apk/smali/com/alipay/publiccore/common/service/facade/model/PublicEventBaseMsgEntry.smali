.class public Lcom/alipay/publiccore/common/service/facade/model/PublicEventBaseMsgEntry;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "PublicEventBaseMsgEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agreementId:Ljava/lang/String;

.field public isClieckedDelete:Z

.field public isCouldDelete:Z

.field public isReaded:Z

.field public msgId:Ljava/lang/String;

.field public msgType:Ljava/lang/String;

.field public thirdAccountId:Ljava/lang/String;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method
