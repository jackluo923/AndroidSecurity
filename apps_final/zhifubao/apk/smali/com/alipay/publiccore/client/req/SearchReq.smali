.class public Lcom/alipay/publiccore/client/req/SearchReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "SearchReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
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

.field public keyword:Ljava/lang/String;

.field public lastId:Ljava/lang/String;

.field public operation:Ljava/lang/String;

.field public pageNum:I

.field public pageSize:I

.field public sourceTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    .line 45
    const/16 v0, 0x14

    iput v0, p0, Lcom/alipay/publiccore/client/req/SearchReq;->pageSize:I

    .line 11
    return-void
.end method
