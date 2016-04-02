.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProtoSyncOpCode1004.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;",
        ">;"
    }
.end annotation


# instance fields
.field public biz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 52
    if-nez p1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;->biz:Ljava/util/List;

    # invokes: Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004$Builder;->biz:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final biz(Ljava/util/List;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004$Builder;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004$Builder;->biz:Ljava/util/List;

    .line 58
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1004;

    move-result-object v0

    return-object v0
.end method
