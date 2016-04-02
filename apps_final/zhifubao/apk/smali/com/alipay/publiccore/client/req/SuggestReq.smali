.class public Lcom/alipay/publiccore/client/req/SuggestReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "SuggestReq.java"

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

.field public sourceTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method
