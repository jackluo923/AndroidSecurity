.class public Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;
.super Ljava/lang/Object;
.source "FollowAccountBiz.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "chatsdk_FollowAccountBiz"

.field private static final lock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private configService:Lcom/alipay/mobile/base/config/ConfigService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 60
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 58
    iput-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    .line 61
    return-void
.end method

.method private convert(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    .locals 3

    .prologue
    .line 915
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->avatar:Ljava/lang/String;

    .line 917
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->cltDefIconType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->cltDefIconType:Ljava/lang/String;

    .line 918
    invoke-virtual {p2}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getDeleteType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->deleteType:Ljava/lang/String;

    .line 919
    iget-boolean v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->disturb:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->disturb:Z

    .line 920
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followType:Ljava/lang/String;

    .line 921
    iget-wide v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gmtFollowTime:J

    iput-wide v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gmtFollowTime:J

    .line 922
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gotoAppUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    .line 923
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->msgNoteType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->msgNoteType:Ljava/lang/String;

    .line 924
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    .line 925
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->publicType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->publicType:Ljava/lang/String;

    .line 926
    invoke-virtual {p2}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getTopType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->topType:Ljava/lang/String;

    .line 927
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->wgtMsgId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->wgtMsgId:Ljava/lang/String;

    .line 928
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    .line 929
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->isFollow:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->isFollow:Ljava/lang/String;

    .line 930
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->vip:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    .line 931
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pluginType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    .line 932
    iget-boolean v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->acceptMsg:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->acceptMsg:Z

    .line 933
    return-object v0
.end method

.method private convert(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    .locals 7

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 241
    :goto_0
    return-object v0

    .line 192
    :cond_0
    new-instance v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

    invoke-direct {v2}, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;-><init>()V

    .line 193
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->dynamicConfigUid:Ljava/lang/String;

    .line 194
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->userId:Ljava/lang/String;

    .line 195
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->syncMaxOpLogId:Ljava/lang/String;

    .line 197
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->success:Z

    .line 198
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->resultCode:I

    .line 199
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->resultMsg:Ljava/lang/String;

    .line 200
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->pageNum:I

    .line 201
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->pageSize:I

    .line 202
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->rowCount:I

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    .line 206
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    .line 241
    goto :goto_0

    .line 206
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;

    .line 207
    new-instance v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;

    invoke-direct {v4}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;-><init>()V

    .line 208
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    .line 209
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    .line 211
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    .line 212
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    .line 213
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    .line 214
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsg:Ljava/lang/String;

    .line 215
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->unReadMsgCount:I

    .line 216
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followType:Ljava/lang/String;

    .line 218
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gmtFollowTime:J

    .line 219
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsgTime:J

    .line 221
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->msgNoteType:Ljava/lang/String;

    .line 222
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gotoAppUri:Ljava/lang/String;

    .line 224
    new-instance v1, Lcom/alipay/publiccore/client/model/OperateProperties;

    invoke-direct {v1}, Lcom/alipay/publiccore/client/model/OperateProperties;-><init>()V

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    .line 226
    iget-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    iget-object v5, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    iget-object v5, v5, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alipay/publiccore/client/model/OperateProperties;->setTopType(Ljava/lang/String;)V

    .line 227
    iget-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    iget-object v5, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    iget-object v5, v5, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alipay/publiccore/client/model/OperateProperties;->setDeleteType(Ljava/lang/String;)V

    .line 228
    iget-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    iget-object v5, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    iget-object v5, v5, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alipay/publiccore/client/model/OperateProperties;->setDefaultOrder(Ljava/lang/String;)V

    .line 232
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->disturb:Z

    .line 233
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    :goto_2
    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->isFollow:Ljava/lang/String;

    .line 234
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->vip:Ljava/lang/String;

    .line 235
    iget-object v1, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pluginType:Ljava/lang/String;

    .line 236
    iget-object v0, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v4, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->acceptMsg:Z

    .line 238
    iget-object v0, v2, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 233
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_2
.end method

.method private createOfficialHomeReq()Lcom/alipay/publiccore/client/req/OfficialHomeReq;
    .locals 3

    .prologue
    .line 283
    new-instance v0, Lcom/alipay/publiccore/client/req/OfficialHomeReq;

    invoke-direct {v0}, Lcom/alipay/publiccore/client/req/OfficialHomeReq;-><init>()V

    .line 284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->setPageNum(I)V

    .line 285
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->setPageSize(I)V

    .line 286
    const-string/jumbo v1, "Android"

    iput-object v1, v0, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->terminal:Ljava/lang/String;

    .line 287
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->channelPackage:Ljava/lang/String;

    .line 289
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->clientVersion:Ljava/lang/String;

    .line 290
    return-object v0
.end method

.method private entryShouldShowPoint()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "PUBLIC_PLATFORM_RED_DOT_TYPE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "mixed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private filterUseLess(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/FollowAccountInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/FollowAccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    if-nez p1, :cond_1

    .line 259
    const/4 p1, 0x0

    .line 273
    :cond_0
    return-object p1

    .line 261
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 263
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;

    .line 266
    const-string/jumbo v2, "ALIPAY_MSG"

    iget-object v3, v0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 269
    :cond_3
    const-string/jumbo v2, "2014120100018252"

    iget-object v0, v0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private followListQuery(Lcom/alipay/publiccore/client/req/OfficialHomeReq;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 166
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 164
    const-class v1, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    .line 171
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->isUsePBQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;

    invoke-direct {v1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;-><init>()V

    .line 173
    iget-object v2, p1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->terminal:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->terminal:Ljava/lang/String;

    .line 174
    iget-object v2, p1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->clientVersion:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->clientVersion:Ljava/lang/String;

    .line 175
    iget-object v2, p1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->channelPackage:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->channelPackage:Ljava/lang/String;

    .line 176
    iget-object v2, p1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->publicIds:Ljava/util/List;

    iput-object v2, v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->publicIds:Ljava/util/List;

    .line 177
    iget v2, p1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->pageNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->pageNum:Ljava/lang/Integer;

    .line 178
    iget v2, p1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->pageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->pageSize:Ljava/lang/Integer;

    .line 179
    invoke-virtual {v1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->build()Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;

    move-result-object v1

    .line 180
    invoke-interface {v0, v1}, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;->queryUserFollower(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;

    move-result-object v0

    .line 181
    invoke-direct {p0, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->convert(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, p1}, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;->queryUserFollowAccount(Lcom/alipay/publiccore/client/req/OfficialHomeReq;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

    move-result-object v0

    goto :goto_0
.end method

.method private getFollowAccountBaseInfoFormDB(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    .locals 5

    .prologue
    .line 875
    const/4 v0, 0x0

    .line 877
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 881
    :goto_0
    return-object v0

    .line 878
    :catch_0
    move-exception v1

    .line 879
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    const-string/jumbo v4, "exception"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getFollowAccountShowInfoFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;
    .locals 5

    .prologue
    .line 865
    const/4 v0, 0x0

    .line 867
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 871
    :goto_0
    return-object v0

    .line 868
    :catch_0
    move-exception v1

    .line 869
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    const-string/jumbo v4, "exception"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isUsePBQuery()Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->configService:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "PUBLIC_PLATFORM_LIST_QUERY_WITH_PB"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string/jumbo v1, "ON"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVip(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z
    .locals 2

    .prologue
    .line 861
    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public convertTabBundle(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;ZZ)Landroid/os/Bundle;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 322
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 323
    const-string/jumbo v0, "itemType"

    const-string/jumbo v4, "public_vip"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string/jumbo v0, "itemId"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->followObjectId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string/jumbo v0, "displayName"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string/jumbo v0, "bizMemo"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string/jumbo v0, "icon"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->avatar:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "alipays://platformapi/startapp?appId=20000042&publicId="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->followObjectId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "&publicName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "&thirdPartyAccount"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgThridAccount:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 331
    const-string/jumbo v4, "&followType=PUBLIC&actionType=TARGET_LIST&sourceId=friendTab"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    iput-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    .line 333
    :cond_1
    const-string/jumbo v0, "uri"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v0, "wgtnumber"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->msgNoteType:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 337
    const-string/jumbo v0, "number"

    iget-object v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->msgNoteType:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 338
    :cond_2
    const-string/jumbo v0, "num"

    .line 342
    :goto_0
    const-string/jumbo v4, "redPointStyle"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-wide v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgTime:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    .line 344
    const-string/jumbo v0, "createTime"

    iget-wide v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgTime:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 348
    :cond_3
    :goto_1
    const-string/jumbo v4, "notDisturb"

    iget-boolean v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->disturb:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    const-string/jumbo v0, "unread"

    iget v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->unReadMsgCount:I

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    if-eqz p3, :cond_9

    .line 351
    const-string/jumbo v0, "revert"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    :cond_4
    :goto_3
    iget-boolean v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->top:Z

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->topType:Ljava/lang/String;

    const-string/jumbo v4, "force"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 358
    :cond_5
    const-string/jumbo v0, "top"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    :goto_4
    const-string/jumbo v0, "lastOperateTime"

    iget-wide v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->lastOperateTime:J

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 365
    return-object v3

    .line 340
    :cond_6
    const-string/jumbo v0, "point"

    goto :goto_0

    .line 345
    :cond_7
    iget-wide v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gmtFollowTime:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    .line 346
    const-string/jumbo v0, "createTime"

    iget-wide v4, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gmtFollowTime:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_8
    move v0, v2

    .line 348
    goto :goto_2

    .line 353
    :cond_9
    if-eqz p2, :cond_4

    .line 354
    const-string/jumbo v0, "holdPosition"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 360
    :cond_a
    const-string/jumbo v0, "top"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4
.end method

.method public deleteFollowAccountInfoByUserId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 123
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    const-string/jumbo v1, "20000042"

    invoke-virtual {v0, p1, v1, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "FollowAccountBiz"

    const-string/jumbo v3, "exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteShowItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 615
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    const-string/jumbo v1, "20000042"

    invoke-virtual {v0, p1, v1, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->deleteFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    const/4 v0, 0x1

    .line 622
    :goto_0
    return v0

    .line 619
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 622
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public generateMergeItem(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 19

    .prologue
    .line 376
    const-string/jumbo v1, ""

    .line 377
    const-wide/16 v4, 0x0

    .line 378
    const-wide/16 v2, 0x0

    .line 381
    const/4 v7, 0x0

    .line 383
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v8}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getLatestFollowAccountShowModel(Ljava/lang/String;I)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v11, v6

    .line 387
    :goto_0
    if-eqz v11, :cond_d

    .line 388
    iget-wide v4, v11, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgTime:J

    .line 389
    iget-object v2, v11, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v11, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    :cond_0
    :goto_1
    iget-wide v2, v11, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gmtFollowTime:J

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v3, v17

    move-object v5, v1

    move-wide v1, v15

    .line 398
    :goto_2
    const-string/jumbo v8, ""

    .line 399
    const-wide/16 v9, 0x0

    .line 400
    const/4 v7, 0x0

    .line 402
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v6

    const-string/jumbo v12, "20000042"

    move-object/from16 v0, p1

    invoke-virtual {v6, v12, v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getLastFeedsSummary(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;

    move-result-object v7

    .line 403
    if-eqz v7, :cond_3

    iget-object v6, v7, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    if-eqz v6, :cond_3

    .line 404
    iget-object v6, v7, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v6}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 405
    iget-object v6, v7, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v6, v6, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 406
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\u52a8\u6001\u6d88\u606f:"

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v7, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v12, v12, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 408
    :cond_1
    iget-object v6, v7, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v6}, Lcom/alipay/mobile/publicplatform/relation/RelationUtils;->calculateMsgTime(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v9

    move-object v15, v7

    move-wide v6, v9

    move-object v9, v15

    .line 415
    :goto_3
    if-nez v11, :cond_4

    if-nez v9, :cond_4

    .line 416
    const/4 v1, 0x0

    .line 484
    :goto_4
    return-object v1

    .line 384
    :catch_0
    move-exception v6

    .line 385
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    const-string/jumbo v9, "chatsdk_FollowAccountBiz"

    const-string/jumbo v10, "exception"

    invoke-interface {v8, v9, v10, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v11, v7

    goto/16 :goto_0

    .line 391
    :cond_2
    iget-object v2, v11, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    iget-object v1, v11, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    goto :goto_1

    .line 410
    :catch_1
    move-exception v6

    .line 411
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    const-string/jumbo v13, "chatsdk_FollowAccountBiz"

    const-string/jumbo v14, "exception"

    invoke-interface {v12, v13, v14, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object v15, v7

    move-wide v6, v9

    move-object v9, v15

    goto :goto_3

    .line 421
    :cond_4
    cmp-long v9, v3, v6

    if-lez v9, :cond_9

    move-object v7, v5

    .line 431
    :goto_5
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_c

    .line 436
    :goto_6
    const/4 v4, 0x0

    .line 437
    const-string/jumbo v3, "point"

    .line 440
    :try_start_2
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v6}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->calculateUnreadMsgCount(Ljava/lang/String;I)Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;

    move-result-object v5

    .line 441
    if-eqz v5, :cond_5

    .line 442
    iget v6, v5, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->numberCount:I

    if-lez v6, :cond_a

    .line 443
    iget v4, v5, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->numberCount:I

    .line 444
    const-string/jumbo v3, "num"
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3

    .line 466
    :cond_5
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->entryShouldShowPoint()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 467
    const-string/jumbo v3, "point"

    .line 469
    :cond_6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 470
    const-string/jumbo v6, "itemType"

    const-string/jumbo v8, "public"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string/jumbo v6, "itemId"

    const-string/jumbo v8, "publicEntryId"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string/jumbo v6, "displayName"

    const-string/jumbo v8, "\u670d\u52a1\u7a97"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string/jumbo v6, "bizMemo"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string/jumbo v6, "uri"

    const-string/jumbo v7, "alipays://platformapi/startapp?appId=20000101&target=chatList"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string/jumbo v6, "redPointStyle"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-wide/16 v6, 0x0

    cmp-long v3, v1, v6

    if-lez v3, :cond_7

    .line 478
    const-string/jumbo v3, "createTime"

    invoke-virtual {v5, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 480
    :cond_7
    if-eqz p2, :cond_8

    .line 481
    const-string/jumbo v1, "holdPosition"

    move/from16 v0, p2

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 483
    :cond_8
    const-string/jumbo v1, "unread"

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v1, v5

    .line 484
    goto/16 :goto_4

    :cond_9
    move-wide v3, v6

    move-object v7, v8

    .line 427
    goto :goto_5

    .line 445
    :cond_a
    :try_start_3
    iget v6, v5, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->dotCount:I

    if-lez v6, :cond_b

    .line 446
    iget v4, v5, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->dotCount:I

    .line 447
    const-string/jumbo v3, "point"
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    .line 449
    :cond_b
    const/4 v6, 0x0

    .line 451
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v5

    const-string/jumbo v8, "20000042"

    move-object/from16 v0, p1

    invoke-virtual {v5, v8, v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getLastFeedsSummary(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v5

    .line 455
    :goto_8
    if-eqz v5, :cond_5

    :try_start_5
    iget v6, v5, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->unReadCount:I

    if-lez v6, :cond_5

    .line 456
    iget v4, v5, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->unReadCount:I

    .line 457
    const-string/jumbo v3, "point"

    goto/16 :goto_7

    .line 452
    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v5, v6

    goto :goto_8

    .line 461
    :catch_3
    move-exception v5

    .line 462
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v8, "chatsdk_FollowAccountBiz"

    const-string/jumbo v9, "exception"

    invoke-interface {v6, v8, v9, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_c
    move-wide v1, v3

    goto/16 :goto_6

    :cond_d
    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v3, v17

    move-object v5, v1

    move-wide v1, v15

    goto/16 :goto_2
.end method

.method public getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    .locals 4

    .prologue
    .line 85
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "FollowAccountBiz"

    const-string/jumbo v3, "exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 4

    .prologue
    .line 76
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "FollowAccountBiz"

    const-string/jumbo v3, "exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFollowAccountShowModelFormDB(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 5

    .prologue
    .line 885
    const/4 v0, 0x0

    .line 887
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 891
    :goto_0
    return-object v0

    .line 888
    :catch_0
    move-exception v1

    .line 889
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    const-string/jumbo v4, "exception"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFollowAccountShowModels(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModels(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    const-string/jumbo v3, "exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initFollowAccountInfos(Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/FollowAccountInfo;",
            ">;)",
            "Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 647
    if-nez p2, :cond_0

    .line 648
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 651
    :cond_0
    new-instance v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;

    invoke-direct {v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;-><init>()V

    .line 652
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    .line 654
    if-eqz v0, :cond_1

    .line 655
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->loadPinyinLib()V

    .line 657
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 664
    if-eqz v0, :cond_2

    .line 665
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    .line 668
    :cond_2
    return-object v3

    .line 657
    :cond_3
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;

    .line 658
    invoke-virtual {p0, p1, v1, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->updateFollowAccountInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;Lcom/alipay/mobile/personalbase/service/PinyinSearchService;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;

    move-result-object v5

    .line 659
    iget v1, v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->modifyCount:I

    iget v6, v5, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->modifyCount:I

    add-int/2addr v1, v6

    iput v1, v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->modifyCount:I

    .line 660
    iget-boolean v1, v5, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->vip2NoVip:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->vip2NoVip:Z

    .line 661
    iget-boolean v1, v5, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->noVip2Vip:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_2
    iput-boolean v1, v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->noVip2Vip:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 663
    :catchall_0
    move-exception v1

    .line 664
    if-eqz v0, :cond_4

    .line 665
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    .line 667
    :cond_4
    throw v1

    .line 660
    :cond_5
    :try_start_2
    iget-boolean v1, v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->vip2NoVip:Z

    goto :goto_1

    .line 661
    :cond_6
    iget-boolean v1, v3, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->noVip2Vip:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method isBaseInfoChanged(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 945
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->avatar:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->avatar:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->deleteType:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->deleteType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    iget-boolean v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->disturb:Z

    iget-boolean v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->disturb:Z

    if-ne v1, v2, :cond_0

    .line 951
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followType:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    iget-wide v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gmtFollowTime:J

    iget-wide v3, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gmtFollowTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 953
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->msgNoteType:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->msgNoteType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 955
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->topType:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->topType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 957
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->wgtMsgId:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->wgtMsgId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->isFollow:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->isFollow:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    iget-boolean v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->acceptMsg:Z

    iget-boolean v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->acceptMsg:Z

    if-ne v1, v2, :cond_0

    .line 962
    iget-object v1, p1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 948
    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public markReaded(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 3

    .prologue
    .line 525
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_0

    .line 527
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->markUnReadMsgCount:I

    .line 528
    const/4 v1, 0x0

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 529
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 531
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    const-string/jumbo v1, "20000042"

    invoke-virtual {v0, p1, v1, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkMsgReadedByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 537
    :goto_0
    return-object v0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 537
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markunReaded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 549
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v1

    .line 550
    if-eqz v1, :cond_0

    .line 551
    const/4 v2, 0x1

    iput v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->lastOperateTime:J

    .line 553
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :cond_0
    :goto_0
    return v0

    .line 556
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 559
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;
    .locals 3

    .prologue
    .line 904
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string/jumbo v1, "default"

    invoke-virtual {p2}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getTopType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    .line 908
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->topOperateTime:J

    .line 910
    :cond_0
    return-object v0
.end method

.method public declared-synchronized processPPChatMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 6

    .prologue
    .line 810
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 812
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 813
    if-nez v0, :cond_1

    .line 814
    const-string/jumbo v0, "chatsdk_FollowAccountBiz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "receive message and not exist showed item "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", add show item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 817
    invoke-static {p1}, Lcom/alipay/mobile/publicplatform/relation/RelationUtils;->calculateMsgTime(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    .line 818
    const-string/jumbo v1, "n"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 821
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update summary userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", followObjectId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , latestMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", latestMsgTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,unReadMsgCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 836
    :goto_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    :goto_1
    monitor-exit p0

    return-void

    .line 824
    :cond_1
    :try_start_2
    const-string/jumbo v1, "chatsdk_FollowAccountBiz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "receive message and  exist showed item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", and update show item"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 826
    invoke-static {p1}, Lcom/alipay/mobile/publicplatform/relation/RelationUtils;->calculateMsgTime(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    .line 827
    const-string/jumbo v1, "n"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 828
    iget v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 830
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update summary userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", followObjectId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , latestMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", latestMsgTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,unReadMsgCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 833
    :catch_0
    move-exception v0

    .line 834
    :try_start_3
    const-string/jumbo v1, "chatsdk_FollowAccountBiz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "OnDispatch: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 836
    :try_start_4
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 835
    :catchall_1
    move-exception v0

    .line 836
    :try_start_5
    sget-object v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 837
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public queryFewUserFollowAccountFromRemote(Ljava/util/List;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/publiccore/client/result/OfficialHomeListResult;"
        }
    .end annotation

    .prologue
    .line 496
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    :cond_0
    const/4 v0, 0x0

    .line 512
    :cond_1
    :goto_0
    return-object v0

    .line 499
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->createOfficialHomeReq()Lcom/alipay/publiccore/client/req/OfficialHomeReq;

    move-result-object v1

    .line 500
    iput-object p1, v1, Lcom/alipay/publiccore/client/req/OfficialHomeReq;->publicIds:Ljava/util/List;

    .line 501
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 503
    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 501
    const-class v2, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;

    .line 504
    invoke-interface {v0, v1}, Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;->queryUserFollowAccountByPIds(Lcom/alipay/publiccore/client/req/OfficialHomeReq;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_1

    .line 508
    iget-object v1, v0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->filterUseLess(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    goto :goto_0
.end method

.method public queryTabList(Ljava/lang/String;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModels(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 313
    :cond_0
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->generateMergeItem(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_1

    .line 315
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_1
    return-object v1

    .line 305
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    .line 306
    const/4 v3, 0x0

    invoke-virtual {p0, v0, p2, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->convertTabBundle(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;ZZ)Landroid/os/Bundle;

    move-result-object v0

    .line 307
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    const-string/jumbo v4, "query vip items exception"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public queryUserFollowAccountFromRemote()Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    .locals 5

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->createOfficialHomeReq()Lcom/alipay/publiccore/client/req/OfficialHomeReq;

    move-result-object v0

    .line 151
    const/4 v1, 0x0

    .line 153
    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->followListQuery(Lcom/alipay/publiccore/client/req/OfficialHomeReq;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    :try_start_1
    iget-object v1, v0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->filterUseLess(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 158
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized recalulateUnreadMsgCount(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)V
    .locals 6

    .prologue
    .line 773
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 774
    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followObjectId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 777
    if-nez v2, :cond_0

    .line 800
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 802
    :goto_0
    monitor-exit p0

    return-void

    .line 780
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    const-string/jumbo v1, "20000042"

    iget-object v3, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->userId:Ljava/lang/String;

    iget-object v4, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followObjectId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getLastSummeryForTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;

    move-result-object v1

    .line 781
    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    if-eqz v0, :cond_3

    .line 782
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 783
    iget v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->unReadCount:I

    iput v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 784
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 785
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mExt:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 786
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-wide v3, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    .line 787
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 786
    :goto_2
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgTime:J

    .line 788
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 800
    :goto_3
    :try_start_4
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 784
    :cond_1
    :try_start_5
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    goto :goto_1

    .line 787
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 790
    :cond_3
    const-string/jumbo v0, ""

    iput-object v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 791
    const/4 v0, 0x0

    iput v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->unReadMsgCount:I

    .line 792
    const-string/jumbo v0, ""

    iput-object v0, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 793
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 796
    :catch_0
    move-exception v0

    .line 797
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    const-string/jumbo v3, "exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 799
    :catchall_1
    move-exception v0

    .line 800
    :try_start_7
    sget-object v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 801
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public top(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 571
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v1

    .line 572
    if-eqz v1, :cond_0

    .line 573
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->topOperateTime:J

    .line 575
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_0
    :goto_0
    return v0

    .line 578
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 581
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public untop(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 593
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v1

    .line 594
    if-eqz v1, :cond_0

    .line 595
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    .line 596
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :cond_0
    const/4 v0, 0x1

    .line 602
    :goto_0
    return v0

    .line 599
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateFollowAccountInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;
    .locals 2

    .prologue
    .line 633
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    .line 635
    if-eqz v0, :cond_0

    .line 636
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->loadPinyinLib()V

    .line 638
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->updateFollowAccountInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;Lcom/alipay/mobile/personalbase/service/PinyinSearchService;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 640
    if-eqz v0, :cond_1

    .line 641
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    .line 638
    :cond_1
    return-object v1

    .line 639
    :catchall_0
    move-exception v1

    .line 640
    if-eqz v0, :cond_2

    .line 641
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    .line 643
    :cond_2
    throw v1
.end method

.method public declared-synchronized updateFollowAccountInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;Lcom/alipay/mobile/personalbase/service/PinyinSearchService;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 673
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 674
    new-instance v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;

    invoke-direct {v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 675
    if-nez p2, :cond_0

    .line 766
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    :goto_0
    monitor-exit p0

    return-object v0

    .line 682
    :cond_0
    :try_start_2
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->getFollowAccountBaseInfoFormDB(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v3

    .line 683
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "chatsdk_FollowAccountBiz"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "add new followAccountinfo userId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " followObjectId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    if-nez v3, :cond_6

    .line 686
    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->modifyCount:I

    .line 687
    iget-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/alipay/android/phone/publicplatform/common/api/impl/PinyinUtils;->name2Pinyin(Lcom/alipay/mobile/personalbase/service/PinyinSearchService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pinyin:Ljava/lang/String;

    .line 688
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "add new followAccountinfo "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pinyin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pinyin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->convert(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v1

    .line 690
    iget-wide v3, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gmtFollowTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gmtFollowTime:J

    .line 695
    :cond_1
    iget-object v3, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->getFollowAccountShowInfoFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v3

    .line 696
    if-nez v3, :cond_5

    .line 697
    iget-object v3, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    const-string/jumbo v4, "sina_news"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 698
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->mergeFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v2

    .line 700
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "chatsdk_FollowAccountBiz"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "add new showInfo top:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " topOperateTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->topOperateTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 749
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 751
    :try_start_3
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->saveFollowBaseAccountInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 756
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 758
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "to save showInfo top:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " topOperateTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->topOperateTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 766
    :cond_4
    :goto_3
    :try_start_5
    sget-object v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 703
    :cond_5
    :try_start_6
    const-string/jumbo v4, "default"

    invoke-virtual {p2}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getTopType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 742
    :goto_4
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->topOperateTime:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 765
    :catchall_1
    move-exception v0

    .line 766
    :try_start_7
    sget-object v1, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 767
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 710
    :cond_6
    :try_start_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "chatsdk_FollowAccountBiz"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "update followAccountinfo old name"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "old pingyin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " new name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " new pinyin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pinyin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->convert(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v1

    .line 714
    iget-object v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 715
    iget-object v4, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    iput-object v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    .line 719
    :goto_5
    invoke-virtual {p0, v1, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->isBaseInfoChanged(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 720
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "chatsdk_FollowAccountBiz"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "need update  followAccountinfo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " pinyin:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->pinyin:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const/4 v4, 0x1

    iput v4, v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->modifyCount:I

    .line 723
    invoke-direct {p0, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->isVip(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z

    move-result v4

    .line 724
    invoke-direct {p0, v1}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->isVip(Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z

    move-result v5

    .line 725
    if-eqz v4, :cond_9

    if-nez v5, :cond_9

    .line 726
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->vip2NoVip:Z

    .line 734
    :cond_7
    :goto_6
    const-string/jumbo v4, "default"

    invoke-virtual {p2}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getTopType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "default"

    iget-object v3, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->topType:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 735
    iget-object v3, p2, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->getFollowAccountShowInfoFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v3

    .line 736
    if-nez v3, :cond_a

    .line 737
    iget-object v3, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    const-string/jumbo v4, "sina_news"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 738
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->mergeFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v2

    goto/16 :goto_1

    .line 717
    :cond_8
    iget-object v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    invoke-static {p3, v4}, Lcom/alipay/android/phone/publicplatform/common/api/impl/PinyinUtils;->name2Pinyin(Lcom/alipay/mobile/personalbase/service/PinyinSearchService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;

    goto :goto_5

    .line 727
    :cond_9
    if-nez v4, :cond_7

    if-eqz v5, :cond_7

    .line 728
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->noVip2Vip:Z

    goto :goto_6

    .line 752
    :catch_0
    move-exception v1

    .line 753
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "chatsdk_FollowAccountBiz"

    const-string/jumbo v5, "exception"

    invoke-interface {v3, v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 760
    :catch_1
    move-exception v1

    .line 761
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "chatsdk_FollowAccountBiz"

    const-string/jumbo v4, "exception"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_3

    :cond_a
    move-object v2, v3

    goto/16 :goto_4

    :cond_b
    move-object v1, v2

    goto :goto_6
.end method

.method public declared-synchronized updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    .locals 4

    .prologue
    .line 848
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    :goto_0
    monitor-exit p0

    return-void

    .line 849
    :catch_0
    move-exception v0

    .line 850
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "chatsdk_FollowAccountBiz"

    const-string/jumbo v3, "exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 848
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateOnlySummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 3

    .prologue
    .line 974
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v0

    .line 977
    if-nez v0, :cond_0

    .line 978
    const-string/jumbo v0, "chatsdk_FollowAccountBiz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "receive message and not exist showed item "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", add show item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :cond_0
    iput-object p3, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 984
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V

    .line 987
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 992
    :goto_0
    return-object v0

    .line 989
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 992
    const/4 v0, 0x0

    goto :goto_0
.end method
