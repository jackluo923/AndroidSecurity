.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProtoUpAckMsg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;",
        ">;"
    }
.end annotation


# instance fields
.field public app_id:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public m_id:Ljava/lang/String;

.field public mk:Ljava/lang/Long;

.field public sc:Ljava/lang/Integer;

.field public st:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 97
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->sc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->sc:Ljava/lang/Integer;

    .line 99
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->st:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->st:Ljava/lang/Integer;

    .line 100
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->mk:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->mk:Ljava/lang/Long;

    .line 101
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->m_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->m_id:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->app_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->app_id:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->ext:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->ext:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final app_id(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->app_id:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->checkRequiredFields()V

    .line 139
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    move-result-object v0

    return-object v0
.end method

.method public final ext(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->ext:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public final m_id(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->m_id:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public final mk(Ljava/lang/Long;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->mk:Ljava/lang/Long;

    .line 118
    return-object p0
.end method

.method public final sc(Ljava/lang/Integer;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->sc:Ljava/lang/Integer;

    .line 108
    return-object p0
.end method

.method public final st(Ljava/lang/Integer;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->st:Ljava/lang/Integer;

    .line 113
    return-object p0
.end method
