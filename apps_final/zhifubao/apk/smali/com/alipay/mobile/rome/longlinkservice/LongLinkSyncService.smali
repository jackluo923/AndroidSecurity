.class public abstract Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "LongLinkSyncService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBizSyncKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLinkState()Z
.end method

.method public abstract querySyncState()Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;
.end method

.method public abstract refreshBiz(Ljava/lang/String;)V
.end method

.method public abstract registerBiz(Ljava/lang/String;)V
.end method

.method public abstract registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V
.end method

.method public abstract registerSyncStateCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;)V
.end method

.method public abstract reportCmdReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportCommandHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendSyncMsg(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract unregisterBiz(Ljava/lang/String;)V
.end method

.method public abstract unregisterBizCallback(Ljava/lang/String;)V
.end method

.method public abstract unregisterSyncStateCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;)V
.end method

.method public abstract updateBizSyncKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
