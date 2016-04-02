.class public Lcom/alipay/mobile/publicplatform/relation/RelationSyncCallbackImpl;
.super Ljava/lang/Object;
.source "RelationSyncCallbackImpl.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "chatsdk_RelationSyncCallbackImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "chatsdk_RelationSyncCallbackImpl"

    const-string/jumbo v1, "onReceiveCommand: [ RelationSyncCallbackImpl ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->getInstance()Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->processSyncCmd(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V

    .line 27
    return-void
.end method

.method public onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 2

    .prologue
    .line 17
    const-string/jumbo v0, "chatsdk_RelationSyncCallbackImpl"

    const-string/jumbo v1, "onReceiveMessage: [ RelationSyncCallbackImpl ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->getInstance()Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->processSyncMsg(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 20
    return-void
.end method
