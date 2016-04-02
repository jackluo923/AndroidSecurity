.class public Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;
.super Ljava/lang/Object;
.source "ConnStateFsm.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static synthetic c:[I


# instance fields
.field private volatile b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alipay$mobile$rome$syncsdk$service$ConnStateFsm$State()[I
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->values()[Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->INIT:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_USER_UNBINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->c:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->a:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->INIT:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 49
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrState()Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;
    .locals 3

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getCurrState: [ currState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->INIT:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDeviceBinded()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    sget-object v3, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    if-ne v2, v3, :cond_0

    move v3, v0

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    sget-object v4, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    sget-object v4, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    if-eq v2, v4, :cond_1

    move v2, v1

    :goto_1
    or-int/2addr v2, v3

    .line 157
    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    sget-object v4, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_2

    :goto_2
    or-int/2addr v0, v2

    .line 159
    monitor-exit p0

    return v0

    :cond_0
    move v3, v1

    .line 155
    goto :goto_0

    :cond_1
    move v2, v0

    .line 156
    goto :goto_1

    :cond_2
    move v0, v1

    .line 157
    goto :goto_2

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isUserBinded()Z
    .locals 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnectSucceeded()V
    .locals 3

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 107
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnectSucceeded: [ currState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDeviceBindSended()V
    .locals 3

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 123
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDeviceBindSended: [ currState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRecvRegisterReply()V
    .locals 3

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->$SWITCH_TABLE$com$alipay$mobile$rome$syncsdk$service$ConnStateFsm$State()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    :pswitch_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRecvRegisterReply: [state error] [ currState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 79
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRecvRegisterReply: [ currState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :pswitch_2
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 83
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRecvRegisterReply: [ currState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_3
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 87
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRecvRegisterReply: [ currState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_4
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 91
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRecvRegisterReply: [ currState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized onRegisterSended()V
    .locals 3

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 115
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRegisterSended: [ currState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onUserBindSended()V
    .locals 3

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 131
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onUserBindSended: [ currState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onUserUnBindSended()V
    .locals 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_USER_UNBINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 139
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onUserUnBindSended: [ currState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toInitState()V
    .locals 3

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->INIT:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 56
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "toInitState: [ currState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->b:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
