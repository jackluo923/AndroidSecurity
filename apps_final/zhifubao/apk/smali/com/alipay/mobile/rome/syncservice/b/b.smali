.class public final Lcom/alipay/mobile/rome/syncservice/b/b;
.super Ljava/lang/Object;
.source "LongLinkCallbackImpl2.java"

# interfaces
.implements Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;


# static fields
.field private static synthetic c:[I


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "sync_service_LongLinkCallbackImpl2"

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/b;->a:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/b/b;->b:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/b/b;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->values()[Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECT_FAILED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/b/b;->c:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final getInitMsg()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInitMsg()Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "sync_service_LongLinkCallbackImpl2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getInitMsg["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v0
.end method

.method public final onLinkOk()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->sendSync1001()V

    .line 108
    return-void
.end method

.method public final onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 116
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/b/b;->a()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 128
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/c/a;->a(Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;)V

    .line 134
    return-void

    .line 118
    :pswitch_0
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECTED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    goto :goto_0

    .line 121
    :pswitch_1
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECTING:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    goto :goto_0

    .line 124
    :pswitch_2
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->CONNECT_FAILED:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    goto :goto_0

    .line 127
    :pswitch_3
    sget-object v0, Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/longlinkservice/ISyncStateCallback$SyncState;

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final processPacket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 44
    const-string/jumbo v0, "sync_service_LongLinkCallbackImpl2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processPacket: [ default channel ] [ appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 48
    :cond_0
    const-string/jumbo v0, "sync_service_LongLinkCallbackImpl2"

    const-string/jumbo v1, "processPacket:  [ default channel ] [ appId=null or empty ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/b/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "com.alipay.longlink.TRANSFER_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v3, "payload"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 61
    const-string/jumbo v0, "sync_service_LongLinkCallbackImpl2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket:  [ default channel ] sendBroadcast [ action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public final processPacketSync([B)V
    .locals 3

    .prologue
    .line 76
    const-string/jumbo v0, "sync_service_LongLinkCallbackImpl2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processPacketSync[data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiver2;->recvSyncMsg([B)V

    .line 78
    return-void
.end method

.method public final processPacketSyncDirect([B)V
    .locals 3

    .prologue
    .line 86
    const-string/jumbo v0, "sync_service_LongLinkCallbackImpl2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processPacketSyncDirect[data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncservice/sync2/recv/SyncMsgReceiverDirect;->recvSyncDirectMsg([B)V

    .line 88
    return-void
.end method
