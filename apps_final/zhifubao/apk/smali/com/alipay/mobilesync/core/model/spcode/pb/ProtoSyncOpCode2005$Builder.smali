.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProtoSyncOpCode2005.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;",
        ">;"
    }
.end annotation


# instance fields
.field public ack_msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

.field public biz_type:Ljava/lang/String;

.field public sync_key:Ljava/lang/Long;

.field public user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 79
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->biz_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->biz_type:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->sync_key:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->sync_key:Ljava/lang/Long;

    .line 82
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->user_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->user_id:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->ack_msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->ack_msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    goto :goto_0
.end method


# virtual methods
.method public final ack_msg(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->ack_msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    .line 103
    return-object p0
.end method

.method public final biz_type(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->biz_type:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->checkRequiredFields()V

    .line 109
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;

    move-result-object v0

    return-object v0
.end method

.method public final sync_key(Ljava/lang/Long;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->sync_key:Ljava/lang/Long;

    .line 93
    return-object p0
.end method

.method public final user_id(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->user_id:Ljava/lang/String;

    .line 98
    return-object p0
.end method
