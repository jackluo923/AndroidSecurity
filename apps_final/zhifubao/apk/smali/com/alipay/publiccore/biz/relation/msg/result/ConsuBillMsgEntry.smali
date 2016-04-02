.class public Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;
.super Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;
.source "ConsuBillMsgEntry.java"


# instance fields
.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/MsgNameValuePair;",
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

    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->actionType:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;->actionParam:Ljava/lang/String;

    .line 11
    return-void
.end method
