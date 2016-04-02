.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProtoSyncOpCode2003.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;",
        ">;"
    }
.end annotation


# instance fields
.field public biz_sync_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 51
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;->biz_sync_info:Ljava/util/List;

    # invokes: Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003$Builder;->biz_sync_info:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final biz_sync_info(Ljava/util/List;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;",
            ">;)",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003$Builder;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003$Builder;->biz_sync_info:Ljava/util/List;

    .line 57
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2003;

    move-result-object v0

    return-object v0
.end method
