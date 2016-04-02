.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProtoBizSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public biz_type:Ljava/lang/String;

.field public pf:Ljava/lang/Integer;

.field public sync_key:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;)V
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
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->biz_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->biz_type:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->sync_key:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    .line 76
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->pf:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->pf:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final biz_type(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->biz_type:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->checkRequiredFields()V

    .line 97
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    move-result-object v0

    return-object v0
.end method

.method public final pf(Ljava/lang/Integer;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->pf:Ljava/lang/Integer;

    .line 91
    return-object p0
.end method

.method public final sync_key(Ljava/lang/Long;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    .line 86
    return-object p0
.end method
