.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProtoSyncOpCode2001.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;",
        ">;"
    }
.end annotation


# instance fields
.field public biz_sync_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;",
            ">;"
        }
    .end annotation
.end field

.field public bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

.field public not_check_principal:Ljava/lang/Boolean;

.field public principal_id:Ljava/lang/String;

.field public principal_id_type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 94
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->principal_id_type:Ljava/lang/Integer;

    .line 96
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->principal_id:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->biz_sync_data:Ljava/util/List;

    # invokes: Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->biz_sync_data:Ljava/util/List;

    .line 98
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    .line 99
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->not_check_principal:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->not_check_principal:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final biz_sync_data(Ljava/util/List;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;",
            ">;)",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->biz_sync_data:Ljava/util/List;

    .line 117
    return-object p0
.end method

.method public final bucket_sync_info(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    .line 122
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->checkRequiredFields()V

    .line 133
    new-instance v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->build()Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;

    move-result-object v0

    return-object v0
.end method

.method public final not_check_principal(Ljava/lang/Boolean;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->not_check_principal:Ljava/lang/Boolean;

    .line 127
    return-object p0
.end method

.method public final principal_id(Ljava/lang/String;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->principal_id:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public final principal_id_type(Ljava/lang/Integer;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->principal_id_type:Ljava/lang/Integer;

    .line 104
    return-object p0
.end method
