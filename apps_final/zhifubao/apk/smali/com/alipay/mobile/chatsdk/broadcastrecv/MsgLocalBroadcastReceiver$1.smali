.class Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "MsgLocalBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

.field private final synthetic val$objectId:Ljava/lang/String;

.field private final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->val$objectId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->val$userId:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->val$objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->val$userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->val$objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v0

    .line 128
    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->val$objectId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->queryFewUserFollowAccountFromRemote(Ljava/util/List;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->success:Z

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->resultCode:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;

    .line 134
    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

    iget-object v2, v2, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    iget-object v1, v1, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->userId:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->updateFollowAccountInfo(Ljava/lang/String;Lcom/alipay/publiccore/client/model/FollowAccountInfo;)Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->this$0:Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver;->followAccountBiz:Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->val$objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->getInstance()Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/chatsdk/msg/MsgEventDispatch;->dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V

    .line 140
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/broadcastrecv/MsgLocalBroadcastReceiver$1;->val$userId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;Z)V

    .line 143
    :cond_1
    return-void
.end method
