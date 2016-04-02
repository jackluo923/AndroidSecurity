.class public final Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;",
        ">;"
    }
.end annotation


# instance fields
.field public assignedChannel:Ljava/lang/String;

.field public barCodeIndex:Ljava/lang/String;

.field public cardNo:Ljava/lang/String;

.field public channelIndex:Ljava/lang/String;

.field public channelName:Ljava/lang/String;

.field public channelType:Ljava/lang/String;

.field public enable:Ljava/lang/Boolean;

.field public index:Ljava/lang/Integer;

.field public prefixName:Ljava/lang/String;

.field public signId:Ljava/lang/String;

.field public suffixName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->index:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->index:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->prefixName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->prefixName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->suffixName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->suffixName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->channelName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->cardNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->cardNo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->barCodeIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->barCodeIndex:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->signId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->signId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->channelType:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->assignedChannel:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->assignedChannel:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->channelIndex:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->enable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->enable:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final assignedChannel(Ljava/lang/String;)Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->assignedChannel:Ljava/lang/String;

    return-object p0
.end method

.method public final barCodeIndex(Ljava/lang/String;)Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->barCodeIndex:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;
    .locals 2

    new-instance v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;-><init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->build()Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;

    move-result-object v0

    return-object v0
.end method

.method public final cardNo(Ljava/lang/String;)Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->cardNo:Ljava/lang/String;

    return-object p0
.end method

.method public final channelIndex(Ljava/lang/String;)Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->channelIndex:Ljava/lang/String;

    return-object p0
.end method

.method public final channelName(Ljava/lang/String;)Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->channelName:Ljava/lang/String;

    return-object p0
.end method

.method public final channelType(Ljava/lang/String;)Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->channelType:Ljava/lang/String;

    return-object p0
.end method

.method public final enable(Ljava/lang/Boolean;)Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->enable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final index(Ljava/lang/Integer;)Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->index:Ljava/lang/Integer;

    return-object p0
.end method

.method public final prefixName(Ljava/lang/String;)Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->prefixName:Ljava/lang/String;

    return-object p0
.end method

.method public final signId(Ljava/lang/String;)Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->signId:Ljava/lang/String;

    return-object p0
.end method

.method public final suffixName(Ljava/lang/String;)Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel$Builder;->suffixName:Ljava/lang/String;

    return-object p0
.end method
