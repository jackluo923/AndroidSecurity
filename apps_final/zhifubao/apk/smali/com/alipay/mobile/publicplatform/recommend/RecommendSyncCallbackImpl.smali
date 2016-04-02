.class public Lcom/alipay/mobile/publicplatform/recommend/RecommendSyncCallbackImpl;
.super Ljava/lang/Object;
.source "RecommendSyncCallbackImpl.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "chatsdk_RecommendSyncCallbackImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "chatsdk_RecommendSyncCallbackImpl"

    const-string/jumbo v1, "onReceiveCommand: [ RecommendSyncCallbackImpl ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 2

    .prologue
    .line 16
    const-string/jumbo v0, "chatsdk_RecommendSyncCallbackImpl"

    const-string/jumbo v1, "onReceiveMessage: [ RecommendSyncCallbackImpl ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->getInstance()Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicplatform/recommend/RecommendRecv;->processSyncMsg(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 18
    return-void
.end method
