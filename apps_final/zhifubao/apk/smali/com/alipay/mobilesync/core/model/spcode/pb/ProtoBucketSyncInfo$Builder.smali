.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProtoBucketSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public bucket_type:Ljava/lang/String;

.field public sync_key:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 64
    if-nez p1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->bucket_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->bucket_type:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->sync_key:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final bucket_type(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->bucket_type:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->checkRequiredFields()V

    .line 82
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    move-result-object v0

    return-object v0
.end method

.method public final sync_key(Ljava/lang/Long;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    .line 76
    return-object p0
.end method
