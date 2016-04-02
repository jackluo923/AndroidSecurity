.class public final Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;",
        ">;"
    }
.end annotation


# instance fields
.field public addByReq:Ljava/lang/Boolean;

.field public alipayAccount:Ljava/lang/String;

.field public area:Ljava/lang/String;

.field public blacked:Ljava/lang/Boolean;

.field public extVersion:Ljava/lang/Long;

.field public gender:Ljava/lang/String;

.field public headImg:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public province:Ljava/lang/String;

.field public putTop:Ljava/lang/Boolean;

.field public realFriend:Ljava/lang/Boolean;

.field public realName:Ljava/lang/String;

.field public realNameStatus:Ljava/lang/String;

.field public refuseDisturb:Ljava/lang/Boolean;

.field public remarkName:Ljava/lang/String;

.field public showRealName:Ljava/lang/Boolean;

.field public signature:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public sourceDec:Ljava/lang/String;

.field public starred:Ljava/lang/Boolean;

.field public stranger:Ljava/lang/Boolean;

.field public userGrade:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public version:Ljava/lang/Long;

.field public zmcredit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->userId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->nickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->nickName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->remarkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->remarkName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->realName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->realName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->gender:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->gender:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->zmcredit:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->zmcredit:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->headImg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->headImg:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->signature:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->signature:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->userGrade:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->userGrade:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->source:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->sourceDec:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->sourceDec:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->province:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->province:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->area:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->area:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->realNameStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->realNameStatus:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->alipayAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->alipayAccount:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->version:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->version:Ljava/lang/Long;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->starred:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->starred:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->blacked:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->blacked:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->refuseDisturb:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->refuseDisturb:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->realFriend:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->realFriend:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->putTop:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->putTop:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->showRealName:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->showRealName:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->stranger:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->stranger:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->addByReq:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->addByReq:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;->extVersion:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->extVersion:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final addByReq(Ljava/lang/Boolean;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->addByReq:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final alipayAccount(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->alipayAccount:Ljava/lang/String;

    return-object p0
.end method

.method public final area(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->area:Ljava/lang/String;

    return-object p0
.end method

.method public final blacked(Ljava/lang/Boolean;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->blacked:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final build()Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;
    .locals 2

    new-instance v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;-><init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->build()Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO;

    move-result-object v0

    return-object v0
.end method

.method public final extVersion(Ljava/lang/Long;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->extVersion:Ljava/lang/Long;

    return-object p0
.end method

.method public final gender(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->gender:Ljava/lang/String;

    return-object p0
.end method

.method public final headImg(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->headImg:Ljava/lang/String;

    return-object p0
.end method

.method public final nickName(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->nickName:Ljava/lang/String;

    return-object p0
.end method

.method public final province(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->province:Ljava/lang/String;

    return-object p0
.end method

.method public final putTop(Ljava/lang/Boolean;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->putTop:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final realFriend(Ljava/lang/Boolean;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->realFriend:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final realName(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->realName:Ljava/lang/String;

    return-object p0
.end method

.method public final realNameStatus(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->realNameStatus:Ljava/lang/String;

    return-object p0
.end method

.method public final refuseDisturb(Ljava/lang/Boolean;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->refuseDisturb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final remarkName(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->remarkName:Ljava/lang/String;

    return-object p0
.end method

.method public final showRealName(Ljava/lang/Boolean;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->showRealName:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final signature(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->signature:Ljava/lang/String;

    return-object p0
.end method

.method public final source(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final sourceDec(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->sourceDec:Ljava/lang/String;

    return-object p0
.end method

.method public final starred(Ljava/lang/Boolean;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->starred:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final stranger(Ljava/lang/Boolean;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->stranger:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final userGrade(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->userGrade:Ljava/lang/String;

    return-object p0
.end method

.method public final userId(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public final version(Ljava/lang/Long;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->version:Ljava/lang/Long;

    return-object p0
.end method

.method public final zmcredit(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/FriendVO$Builder;->zmcredit:Ljava/lang/String;

    return-object p0
.end method
