.class public Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;
.super Ljava/lang/Object;
.source "ChatApiMgr.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static volatile isRegistered:Z

.field private static volatile isStop:Z

.field private static final mApiGetObjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mChatApiListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mApiGetObjMap:Ljava/util/HashMap;

    .line 43
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    .line 45
    sput-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isRegistered:Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkBaseFollowAccountInfo(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    .locals 4

    .prologue
    .line 275
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v0

    .line 276
    if-nez v0, :cond_0

    .line 277
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "receive message but not exist base  follow item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", record it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->getInstance()Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->recordNoFollowInfoPublicId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-object v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    sget-object v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkBaseFollowAccountInfo: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized clearAllRegisters()V
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    .line 56
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 57
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mApiGetObjMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v1

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized dispatchAddOrUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V
    .locals 4

    .prologue
    .line 325
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchAddOrUpdate:"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 327
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 344
    :goto_1
    monitor-exit v1

    return-void

    .line 328
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_1

    .line 329
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchAddOrUpdate:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 332
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 333
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 334
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 336
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onAddorUpdate(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "dispatchAddOrUpdate"

    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized dispatchClearMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 350
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchClearMsg:"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 352
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 369
    :goto_1
    monitor-exit v1

    return-void

    .line 353
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_1

    .line 354
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchClearMsg:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 357
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 358
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 359
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 361
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onClearMsg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "dispatchClearMsg"

    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized dispatchDelete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 400
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchDelete:"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 402
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 419
    :goto_1
    monitor-exit v1

    return-void

    .line 403
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_1

    .line 404
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchDelete:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 407
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 408
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 409
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 411
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onDelete(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "dispatchDelete"

    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized dispatchDeleteShowItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 424
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchDeleteShowItem:"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 426
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 443
    :goto_1
    monitor-exit v1

    return-void

    .line 427
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_1

    .line 428
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchDeleteShowItem:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 431
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 432
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 433
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 435
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onDeleteShowItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "dispatchDeleteShowItem"

    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized dispatchFeedsReaded(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 375
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchAddOrUpdate:"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 377
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 394
    :goto_1
    monitor-exit v1

    return-void

    .line 378
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_1

    .line 379
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchAddOrUpdate:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 382
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 383
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 384
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 386
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onFeedsReaded(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "dispatchAddOrUpdate"

    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized dispatchOnReload(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchDelete:"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 453
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 470
    :goto_1
    monitor-exit v1

    return-void

    .line 454
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_1

    .line 455
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchDelete:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 458
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 459
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 460
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 462
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onReload(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "dispatchDelete"

    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized dispathMsg(Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 139
    const-class v7, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispathMsg:[ msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    if-nez p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    .line 144
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->checkBaseFollowAccountInfo(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v5

    .line 146
    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v1

    .line 147
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    const-string/jumbo v2, "recall"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    :try_start_2
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 150
    const-string/jumbo v2, "recallMsgId"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    iget-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->recallMsg(Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;Lcom/alipay/mobile/chatsdk/api/ChatMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 152
    if-eqz v0, :cond_0

    .line 160
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    :try_start_3
    iget-boolean v0, v5, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->disturb:Z

    if-nez v0, :cond_3

    .line 161
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    .line 162
    iget-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    iget v4, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 161
    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkMsgReaded(Ljava/lang/String;Ljava/lang/String;I)I

    .line 163
    const-string/jumbo v0, "y"

    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 164
    const-string/jumbo v0, "y"

    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv2:Ljava/lang/String;

    .line 168
    :cond_3
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mBox:Ljava/lang/String;

    const-string/jumbo v2, "feeds"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isP:Ljava/lang/String;

    const-string/jumbo v2, "y"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->processPPChatMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V

    .line 173
    :cond_5
    iget-boolean v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->hasMore:Z

    if-nez v0, :cond_6

    .line 174
    invoke-static {}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->getInstance()Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->loadNoFollowInfoList(Ljava/lang/String;)V

    .line 178
    :cond_6
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 179
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 206
    iget-boolean v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->hasMore:Z

    if-nez v0, :cond_d

    .line 207
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mBox:Ljava/lang/String;

    const-string/jumbo v2, "feeds"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 208
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notifyMergeItem(Ljava/lang/String;ZZ)V

    .line 212
    :goto_3
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "has  More is false notify"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    :try_start_4
    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "OnDispatch: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 180
    :cond_8
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_9

    .line 181
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispathMsg:[ isStop="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 186
    if-eqz v0, :cond_a

    .line 187
    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 188
    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 191
    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dispathMsg:[ msg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 194
    iget-object v5, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-static {v2, v4}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    :try_start_5
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onReceiveMessage(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 197
    :catch_1
    move-exception v2

    .line 198
    :try_start_6
    sget-object v4, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "dispathMsg: onReceiveMessage[ msg="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " ][ e="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 199
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " ] listener=["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v4, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 202
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 210
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v2

    iget-object v3, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    const-string/jumbo v1, "y"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v2, v3, v4, v0}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModelFromNew(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_c
    move v0, v6

    goto :goto_4

    .line 214
    :cond_d
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->setHasNoNotifyFlag(Z)V

    .line 215
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "has  More msg recode"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized dispathMsgStatus(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 291
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispathMsgStatus:[ appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ localMsgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 292
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 295
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :goto_1
    monitor-exit v1

    return-void

    .line 296
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    if-eqz v0, :cond_2

    .line 297
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispathMsgStatus:[ isStop="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 301
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 302
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 303
    if-eqz v0, :cond_3

    .line 304
    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dispathMsgStatus:[ appId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ localMsgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 306
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 307
    iget-object v5, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 305
    invoke-static {v3, v4}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->chatListener:Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;->onUpdateSendStatus(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    :try_start_4
    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dispathMsg: onUpdateSendStatus[ appId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 312
    const-string/jumbo v5, " ][ localMsgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v3, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized getChatApi(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;
    .locals 4

    .prologue
    .line 121
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getChatApi:[ appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mApiGetObjMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mApiGetObjMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    monitor-exit v1

    return-object v0

    .line 128
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mApiGetObjMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static recallMsg(Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;Lcom/alipay/mobile/chatsdk/api/ChatMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 222
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "recallMsg msgId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " recallMsgId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v2

    invoke-virtual {v2, p3, p4, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByMsgId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v2

    .line 226
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v3

    .line 227
    invoke-virtual {v3, p3, p4, p2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteMsgByBMsgId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 226
    if-nez v3, :cond_0

    .line 232
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "recallMsg desnot exist retun ,msgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " recallMsgId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v1

    .line 234
    iget v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 233
    invoke-virtual {v1, p3, p4, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)I

    .line 261
    :goto_0
    return v0

    .line 236
    :cond_0
    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mBox:Ljava/lang/String;

    const-string/jumbo v3, "feeds"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "recallMsg is feeds message ,delete recall msg self  ,msgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " recallMsgId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    .line 239
    iget v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 238
    invoke-virtual {v0, p3, p4, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)I

    .line 241
    const-string/jumbo v0, "feeds"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mBox:Ljava/lang/String;

    move v0, v1

    .line 242
    goto :goto_0

    .line 243
    :cond_1
    if-eqz p5, :cond_2

    iget-object v2, p5, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pluginType:Ljava/lang/String;

    const-string/jumbo v3, "sina_news"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "recallMsg is sina_news msg ,delete recall msg self  ,msgId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " recallMsgId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v2

    .line 246
    iget v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 245
    invoke-virtual {v2, p3, p4, v3}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatDeleteByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)I

    .line 248
    invoke-virtual {p0, p3, p5}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->recalulateUnreadMsgCount(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)V

    .line 250
    invoke-static {}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->getInstance()Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;

    move-result-object v2

    iget-object v3, p5, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->userId:Ljava/lang/String;

    iget-object v4, p5, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/alipay/mobile/chatsdk/notify/NotifyCenter;->notityShowModel(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 255
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    move-result-object v0

    .line 256
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    iget v4, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    .line 255
    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMarkMsgReaded(Ljava/lang/String;Ljava/lang/String;I)I

    .line 257
    const-string/jumbo v0, "y"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    .line 258
    const-string/jumbo v0, "y"

    iput-object v0, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv2:Ljava/lang/String;

    .line 260
    invoke-virtual {p0, p3, p5}, Lcom/alipay/mobile/publicplatform/relation/biz/FollowAccountBiz;->recalulateUnreadMsgCount(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)V

    move v0, v1

    .line 261
    goto/16 :goto_0
.end method

.method public static declared-synchronized registerChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;)Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;
    .locals 4

    .prologue
    .line 68
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerChatApi:[ appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    const-string/jumbo v3, " ][ listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 72
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "registerChatApi:[ appId / userId / listener is null ]"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const/4 v0, 0x0

    .line 83
    :goto_0
    monitor-exit v1

    return-object v0

    .line 76
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isRegistered:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/chatsdk/msg/MsgSend;->isTaskEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->isRegistered:Z

    .line 78
    invoke-static {}, Lcom/alipay/mobile/chatsdk/db/init/ChatDbMsgStatus;->repairMsgStatus()V

    .line 81
    :cond_2
    new-instance v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade$ChatEventListener;)V

    .line 82
    sget-object v2, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unRegisterChatApi(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/chatsdk/api/ChatApiFacade;)Z
    .locals 4

    .prologue
    .line 91
    const-class v1, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unRegisterChatApi:[ appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    const-string/jumbo v3, " ][ apiObj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 95
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v2, "registerChatApi:[ appId / userId / apiObj is null ]"

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    const/4 v0, 0x0

    .line 112
    :goto_0
    monitor-exit v1

    return v0

    .line 99
    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiMgr;->mChatApiListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 100
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 102
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;

    .line 103
    if-eqz v0, :cond_4

    .line 104
    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/apiimpl/ChatApiFacadempl;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v0, p2, :cond_2

    .line 105
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
