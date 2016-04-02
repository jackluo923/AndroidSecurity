.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProtoSyncOpCode2002.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;",
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

.field public bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 63
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->biz_sync_info:Ljava/util/List;

    # invokes: Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;->biz_sync_info:Ljava/util/List;

    .line 65
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    goto :goto_0
.end method


# virtual methods
.method public final biz_sync_info(Ljava/util/List;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;",
            ">;)",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;->biz_sync_info:Ljava/util/List;

    .line 70
    return-object p0
.end method

.method public final bucket_sync_info(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    .line 75
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;

    move-result-object v0

    return-object v0
.end method
