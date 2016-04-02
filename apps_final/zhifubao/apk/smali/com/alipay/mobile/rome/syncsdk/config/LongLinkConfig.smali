.class public final Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;
.super Ljava/lang/Object;
.source "LongLinkConfig.java"


# static fields
.field private static volatile a:I

.field private static volatile b:I

.field private static volatile c:I

.field private static volatile d:I

.field private static volatile e:I

.field private static volatile f:I

.field private static volatile g:I

.field private static volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 12
    const/16 v0, 0xf

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->a:I

    .line 14
    const/16 v0, 0xa

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->b:I

    .line 17
    const/16 v0, 0x1e

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->c:I

    .line 20
    const/4 v0, 0x5

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->d:I

    .line 23
    sput v1, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->e:I

    .line 25
    const/4 v0, 0x6

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->f:I

    .line 27
    sput v1, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->g:I

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->h:Z

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static declared-synchronized getKeepAliveInterval()I
    .locals 2

    .prologue
    .line 81
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPacketReplyTimeout()I
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPacketReplyTimeoutWifi()I
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getReconnectInterval()I
    .locals 2

    .prologue
    .line 65
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSpdyWaitTimeout(Z)I
    .locals 3

    .prologue
    const/16 v2, 0x1e

    .line 99
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->h:Z

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->h:Z

    .line 110
    :cond_0
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->f:I

    if-lez v0, :cond_1

    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->f:I

    if-le v0, v2, :cond_2

    .line 111
    :cond_1
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->g:I

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->f:I

    .line 114
    :cond_2
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->e:I

    if-lez v0, :cond_3

    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->e:I

    if-le v0, v2, :cond_4

    .line 115
    :cond_3
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->g:I

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->e:I

    .line 118
    :cond_4
    if-eqz p0, :cond_5

    .line 119
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit v1

    return v0

    :cond_5
    :try_start_1
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setKeepAliveInterval(I)V
    .locals 2

    .prologue
    .line 88
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;

    monitor-enter v0

    if-lez p0, :cond_0

    .line 89
    :try_start_0
    sput p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit v0

    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setPacketReplyTimeout(I)V
    .locals 2

    .prologue
    .line 56
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;

    monitor-enter v0

    if-lez p0, :cond_0

    .line 57
    :try_start_0
    sput p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit v0

    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setReconnectInterval(I)V
    .locals 2

    .prologue
    .line 72
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;

    monitor-enter v0

    if-lez p0, :cond_0

    .line 73
    :try_start_0
    sput p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit v0

    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setSpdyWaitTimeout(I)V
    .locals 2

    .prologue
    .line 130
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;

    monitor-enter v0

    if-lez p0, :cond_0

    const/16 v1, 0x1e

    if-ge p0, v1, :cond_0

    .line 131
    :try_start_0
    sput p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    monitor-exit v0

    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
