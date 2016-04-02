.class public Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public addByReq:Z

.field public alipayAccount:Ljava/lang/String;

.field public area:Ljava/lang/String;

.field public blacked:Z

.field public extVersion:J

.field public gender:Ljava/lang/String;

.field public headImg:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public province:Ljava/lang/String;

.field public putTop:Z

.field public realFriend:Z

.field public realName:Ljava/lang/String;

.field public realNameStatus:Ljava/lang/String;

.field public refuseDisturb:Z

.field public remarkName:Ljava/lang/String;

.field public showRealName:Z

.field public signature:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public sourceDec:Ljava/lang/String;

.field public starred:Z

.field public stranger:Z

.field public userGrade:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public version:J

.field public zmcredit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;->stranger:Z

    return-void
.end method
