.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProtoOplog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;",
        ">;"
    }
.end annotation


# instance fields
.field public app_id:Ljava/lang/String;

.field public binary_payload:Lokio/ByteString;

.field public biz_id:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public m_id:Ljava/lang/String;

.field public mct:Ljava/lang/Long;

.field public mk:Ljava/lang/Long;

.field public payload:Ljava/lang/String;

.field public sc:Ljava/lang/Integer;

.field public st:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 131
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->sc:Ljava/lang/Integer;

    .line 133
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->st:Ljava/lang/Integer;

    .line 134
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->mct:Ljava/lang/Long;

    .line 135
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->mk:Ljava/lang/Long;

    .line 136
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->m_id:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->app_id:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->biz_id:Ljava/lang/String;

    .line 139
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->payload:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->binary_payload:Lokio/ByteString;

    .line 141
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->ext:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final app_id(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->app_id:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public final binary_payload(Lokio/ByteString;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->binary_payload:Lokio/ByteString;

    .line 186
    return-object p0
.end method

.method public final biz_id(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->biz_id:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->checkRequiredFields()V

    .line 197
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;

    move-result-object v0

    return-object v0
.end method

.method public final ext(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->ext:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public final m_id(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->m_id:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public final mct(Ljava/lang/Long;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->mct:Ljava/lang/Long;

    .line 156
    return-object p0
.end method

.method public final mk(Ljava/lang/Long;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->mk:Ljava/lang/Long;

    .line 161
    return-object p0
.end method

.method public final payload(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->payload:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public final sc(Ljava/lang/Integer;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->sc:Ljava/lang/Integer;

    .line 146
    return-object p0
.end method

.method public final st(Ljava/lang/Integer;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->st:Ljava/lang/Integer;

    .line 151
    return-object p0
.end method
