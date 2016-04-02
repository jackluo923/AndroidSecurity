.class public Lcom/alipay/publiccore/common/service/facade/model/PublicEventConsuBillMsgEntry;
.super Lcom/alipay/publiccore/common/service/facade/model/PublicEventBaseMsgEntry;
.source "PublicEventConsuBillMsgEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/common/service/facade/model/PublicEventMsgNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public extInfo:Ljava/util/Map;
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

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/PublicEventBaseMsgEntry;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventConsuBillMsgEntry;->actionType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventConsuBillMsgEntry;->actionParam:Ljava/lang/String;

    .line 12
    return-void
.end method
