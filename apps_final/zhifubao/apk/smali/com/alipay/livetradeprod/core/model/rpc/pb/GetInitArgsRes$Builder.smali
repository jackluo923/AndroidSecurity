.class public final Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;",
        ">;"
    }
.end annotation


# instance fields
.field public displayOspMerchants:Ljava/lang/Boolean;

.field public displayPayChannel:Ljava/lang/Boolean;

.field public facePaySwitch:Ljava/lang/Boolean;

.field public noticeAuthPeriod:Ljava/lang/Integer;

.field public noticeAuthTxt:Ljava/lang/String;

.field public payChannelModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field public queryOrNo:Ljava/lang/Boolean;

.field public resultCode:Ljava/lang/String;

.field public resultDes:Ljava/lang/String;

.field public shouldNoticeAuth:Ljava/lang/Boolean;

.field public success:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->success:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->resultCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->resultCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->resultDes:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->resultDes:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->queryOrNo:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->queryOrNo:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->displayOspMerchants:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->displayOspMerchants:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->shouldNoticeAuth:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->shouldNoticeAuth:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->noticeAuthPeriod:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->noticeAuthPeriod:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->noticeAuthTxt:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->noticeAuthTxt:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->displayPayChannel:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->displayPayChannel:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->facePaySwitch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->facePaySwitch:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->payChannelModel:Ljava/util/List;

    # invokes: Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->payChannelModel:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;
    .locals 2

    new-instance v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;-><init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->build()Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;

    move-result-object v0

    return-object v0
.end method

.method public final displayOspMerchants(Ljava/lang/Boolean;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->displayOspMerchants:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final displayPayChannel(Ljava/lang/Boolean;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->displayPayChannel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final facePaySwitch(Ljava/lang/Boolean;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->facePaySwitch:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final noticeAuthPeriod(Ljava/lang/Integer;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->noticeAuthPeriod:Ljava/lang/Integer;

    return-object p0
.end method

.method public final noticeAuthTxt(Ljava/lang/String;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->noticeAuthTxt:Ljava/lang/String;

    return-object p0
.end method

.method public final payChannelModel(Ljava/util/List;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;",
            ">;)",
            "Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->payChannelModel:Ljava/util/List;

    return-object p0
.end method

.method public final queryOrNo(Ljava/lang/Boolean;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->queryOrNo:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final resultCode(Ljava/lang/String;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->resultCode:Ljava/lang/String;

    return-object p0
.end method

.method public final resultDes(Ljava/lang/String;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->resultDes:Ljava/lang/String;

    return-object p0
.end method

.method public final shouldNoticeAuth(Ljava/lang/Boolean;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->shouldNoticeAuth:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final success(Ljava/lang/Boolean;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->success:Ljava/lang/Boolean;

    return-object p0
.end method
