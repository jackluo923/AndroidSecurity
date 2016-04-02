.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProtoSyncOpCode1001.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;",
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

.field public bucket_sync_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;",
            ">;"
        }
    .end annotation
.end field

.field public is_new_device:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 73
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;->is_new_device:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;->is_new_device:Ljava/lang/Boolean;

    .line 75
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;->biz_sync_info:Ljava/util/List;

    # invokes: Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;->biz_sync_info:Ljava/util/List;

    .line 76
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;->bucket_sync_info:Ljava/util/List;

    # invokes: Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;->bucket_sync_info:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final biz_sync_info(Ljava/util/List;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;",
            ">;)",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;->biz_sync_info:Ljava/util/List;

    .line 86
    return-object p0
.end method

.method public final bucket_sync_info(Ljava/util/List;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;",
            ">;)",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;->bucket_sync_info:Ljava/util/List;

    .line 91
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001;

    move-result-object v0

    return-object v0
.end method

.method public final is_new_device(Ljava/lang/Boolean;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1001$Builder;->is_new_device:Ljava/lang/Boolean;

    .line 81
    return-object p0
.end method
