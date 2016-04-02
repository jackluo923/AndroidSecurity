.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProtoSyncOpCode2004.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;",
        ">;"
    }
.end annotation


# instance fields
.field public biz_type:Ljava/lang/String;

.field public msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

.field public sync_key:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 71
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->biz_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->biz_type:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->sync_key:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->sync_key:Ljava/lang/Long;

    .line 74
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    goto :goto_0
.end method


# virtual methods
.method public final biz_type(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->biz_type:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->checkRequiredFields()V

    .line 95
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;

    move-result-object v0

    return-object v0
.end method

.method public final msg(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    .line 89
    return-object p0
.end method

.method public final sync_key(Ljava/lang/Long;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->sync_key:Ljava/lang/Long;

    .line 84
    return-object p0
.end method
