.class public Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;
.super Ljava/lang/Object;
.source "AmnetCallbackImpl.java"


# static fields
.field public static final MAX_DATA_SIZE:I = 0x100000

.field private static volatile a:Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;->a:Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static change(I)V
    .locals 3

    .prologue
    .line 104
    const-string/jumbo v0, "sync_link_AmnetCallbackImpl"

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "change: [ state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ linktype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v0, "mmtp"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 114
    packed-switch p0, :pswitch_data_0

    .line 135
    :goto_1
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->setLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    goto :goto_0

    .line 116
    :pswitch_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    goto :goto_1

    .line 119
    :pswitch_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    goto :goto_1

    .line 122
    :pswitch_2
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    goto :goto_1

    .line 125
    :pswitch_3
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    goto :goto_1

    .line 128
    :pswitch_4
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    goto :goto_1

    .line 131
    :pswitch_5
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    goto :goto_1

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static collect(Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 161
    const-string/jumbo v0, "sync_link_AmnetCallbackImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "collect: [ param="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/a/a;->a()Lcom/alipay/mobile/rome/syncsdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string/jumbo v0, "syncIsNew"

    const-string/jumbo v1, "1"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :goto_0
    const-string/jumbo v0, "syncVer"

    const-string/jumbo v1, "5"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->onLinkOk()V

    .line 175
    :goto_1
    return-void

    .line 167
    :cond_0
    const-string/jumbo v0, "syncIsNew"

    const-string/jumbo v1, "0"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string/jumbo v1, "sync_link_AmnetCallbackImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "collect: [ TException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;->a:Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;

    if-nez v0, :cond_0

    .line 41
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;

    monitor-enter v1

    .line 42
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;->a:Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;->a:Lcom/alipay/mobile/rome/syncsdk/zlink2/adaptor/AmnetCallbackImpl;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifyInitOk()V
    .locals 4

    .prologue
    .line 199
    const-string/jumbo v0, "sync_link_AmnetCallbackImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyInitOk: [ linktype="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v0, "mmtp"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string/jumbo v0, "LL_INIT_MMTP"

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 205
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 210
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->setLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    goto :goto_0
.end method

.method public static onAcceptedDataEvent(BLjava/util/Map;[BD)V
    .locals 4

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 61
    const-string/jumbo v0, "sync_link_AmnetCallbackImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAcceptedDataEvent: [ data null ][ channel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string/jumbo v0, "sync_link_AmnetCallbackImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAcceptedDataEvent: [ channel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ data len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/a/a;->a()Lcom/alipay/mobile/rome/syncsdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/a/a;->b()V

    .line 71
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 73
    array-length v0, p2

    const/high16 v1, 0x100000

    if-le v0, v1, :cond_1

    .line 74
    const-string/jumbo v0, "sync_link_AmnetCallbackImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAcceptedDataEvent: [ data exceed max size ][ channel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ data len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string/jumbo v1, "sync_link_AmnetCallbackImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onAcceptedDataEvent: [ TException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->onReceiveData([B)V

    .line 87
    :cond_2
    :goto_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 88
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->setLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    goto/16 :goto_0

    .line 82
    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 83
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->onReceiveDirectData([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static panic(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 148
    const-string/jumbo v0, "sync_link_AmnetCallbackImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "panic: [ err="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ inf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v0, "EXP_MMTP"

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "inf:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitorExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static report(Ljava/lang/String;D)V
    .locals 4

    .prologue
    .line 186
    const-string/jumbo v0, "JVM tcp connect"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const-string/jumbo v0, "CONN_MMTP"

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tcp"

    .line 187
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const-string/jumbo v0, "JVM ssl handshake"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string/jumbo v0, "CONN_MMTP"

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ssl"

    .line 190
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
