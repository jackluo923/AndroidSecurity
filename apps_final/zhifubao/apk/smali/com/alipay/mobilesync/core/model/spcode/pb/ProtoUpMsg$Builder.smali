.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProtoUpMsg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;",
        ">;"
    }
.end annotation


# instance fields
.field public app_id:Ljava/lang/String;

.field public m_id:Ljava/lang/String;

.field public payload:Ljava/lang/String;

.field public to_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;)V
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
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->m_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->m_id:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->app_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->app_id:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->payload:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->payload:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->to_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->to_id:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final app_id(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->app_id:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->checkRequiredFields()V

    .line 109
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    move-result-object v0

    return-object v0
.end method

.method public final m_id(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->m_id:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public final payload(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->payload:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public final to_id(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->to_id:Ljava/lang/String;

    .line 103
    return-object p0
.end method
