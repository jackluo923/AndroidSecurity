.class public Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;
.super Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
.source "LongLinkSyncServiceImpl.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private volatile b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    const-class v1, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizSyncKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 334
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "getBizSyncKey: [ userId or biz =null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v0, ""

    .line 344
    :goto_0
    return-object v0

    .line 339
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 341
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getBizSyncKey:  [ userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ] [ biz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 342
    const-string/jumbo v4, " ] [ sKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLinkState()Z
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "getLinkState: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->isConnected()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "onCreate: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->finish()V

    .line 56
    return-void
.end method

.method public querySyncState()Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "querySyncState: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/c/a;->a()Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    move-result-object v0

    return-object v0
.end method

.method public refreshBiz(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refreshBiz:  [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "refreshBiz: [ biz=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/b;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerBiz(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 111
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerBiz:  [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "registerBiz: [ biz=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->b(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V
    .locals 3

    .prologue
    .line 168
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerBizCallback:  [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] [ callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 172
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "registerBizCallback: [ biz=null or callback=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {p1, p2}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->a(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    goto :goto_0
.end method

.method public registerSyncStateCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;)V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "querySyncState: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/c/a;->a(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;)V

    .line 92
    return-void
.end method

.method public reportCmdReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 250
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reportCmdReceived:  [ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] [ biz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] [ id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 254
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "reportCmdReceived: [ userId or biz or id=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 260
    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bizReportCmdReceived: [ Execption="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportCommandHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 274
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reportCommandHandled:  [ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] [ biz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 275
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] [ id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 278
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "reportCommandHandled: [ userId or biz or id=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    :try_start_0
    const-string/jumbo v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 285
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 286
    const/4 v2, 0x2

    aget-object v0, v0, v2

    .line 290
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->updateBizSyncKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 295
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 300
    const-string/jumbo v2, "biz"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string/jumbo v2, "sKey"

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 303
    const-string/jumbo v2, "pf"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 307
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/sync/b;->b(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reportCommandHandled: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 319
    :catch_1
    move-exception v0

    .line 320
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reportCommandHandled: [ Execption="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 315
    :cond_3
    :try_start_3
    const-string/jumbo v0, "mmtp"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    .line 317
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    .line 316
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->sendSyncHandledAck2003(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 226
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reportMsgReceived:  [ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] [ biz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] [ id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 230
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "reportMsgReceived: [ userId or biz or id=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 236
    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/rome/syncservice/sync/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reportMsgReceived: [ Execption="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendSyncMsg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 389
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSyncMsg: [ biz="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    :cond_0
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "sendSyncMsg: [ biz or msg=null ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_0
    return v0

    .line 398
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    .line 399
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendSyncMsg: msg length exceeded [ length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 400
    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_2
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-static {p1, p2}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 409
    :cond_4
    const-string/jumbo v0, "mmtp"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->sendSyncMsg2004(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unregisterBiz(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 138
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregisterBiz:  [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "unregisterBiz: [ biz=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "unregisterBiz:  [ biz not registered ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->c(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/b;->a(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/b;

    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterBizCallback(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 187
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregisterBizCallback:  [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "unregisterBizCallback: [ biz=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/e/b;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterSyncStateCallback(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;)V
    .locals 0

    .prologue
    .line 99
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/c/a;->b(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback;)V

    .line 100
    return-void
.end method

.method public updateBizSyncKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 355
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateBizSyncKey: [ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ biz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
    const-string/jumbo v2, " ][ sKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 359
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v1, "updateBizSyncKey: [ userId or biz or sKey=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 364
    :cond_2
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 372
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getBizSkey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 374
    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 375
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v2

    invoke-virtual {v2, p2, v0, v1, p1}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->setBizSkey(Ljava/lang/String;JLjava/lang/String;)J

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/service/LongLinkSyncServiceImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateBizSyncKey: [ NumberFormatException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
