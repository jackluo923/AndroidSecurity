.class public Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;
.super Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;
.source "MessageQuery.java"


# instance fields
.field public agreementId:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public includeMsgType:[Ljava/lang/String;

.field public includeTotalCount:Z

.field public pageSize:Ljava/lang/Integer;

.field public publicId:Ljava/lang/String;

.field public startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alipay/publiccore/biz/relation/msg/query/BaseMessageQuery;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->includeTotalCount:Z

    .line 57
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/query/MessageQuery;->pageSize:Ljava/lang/Integer;

    .line 8
    return-void
.end method
