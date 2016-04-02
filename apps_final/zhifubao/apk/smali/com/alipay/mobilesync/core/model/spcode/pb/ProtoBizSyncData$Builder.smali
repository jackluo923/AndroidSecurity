.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProtoBizSyncData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;",
        ">;"
    }
.end annotation


# instance fields
.field public biz_type:Ljava/lang/String;

.field public has_more:Ljava/lang/Boolean;

.field public oplog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;",
            ">;"
        }
    .end annotation
.end field

.field public pf:Ljava/lang/Integer;

.field public sync_key:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 93
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->biz_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->biz_type:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->pf:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->pf:Ljava/lang/Integer;

    .line 96
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->has_more:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->has_more:Ljava/lang/Boolean;

    .line 97
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->sync_key:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->sync_key:Ljava/lang/Long;

    .line 98
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->oplog:Ljava/util/List;

    # invokes: Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->oplog:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final biz_type(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->biz_type:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->checkRequiredFields()V

    .line 129
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;

    move-result-object v0

    return-object v0
.end method

.method public final has_more(Ljava/lang/Boolean;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->has_more:Ljava/lang/Boolean;

    .line 113
    return-object p0
.end method

.method public final oplog(Ljava/util/List;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;",
            ">;)",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->oplog:Ljava/util/List;

    .line 123
    return-object p0
.end method

.method public final pf(Ljava/lang/Integer;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->pf:Ljava/lang/Integer;

    .line 108
    return-object p0
.end method

.method public final sync_key(Ljava/lang/Long;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->sync_key:Ljava/lang/Long;

    .line 118
    return-object p0
.end method
