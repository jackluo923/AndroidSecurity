.class public Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;
.super Ljava/lang/Object;
.source "ReconnCtrl.java"


# static fields
.field public static final MAX_CONTROL_SECONDS:I = 0x258

.field public static final MIN_CONTROL_SECONDS:I = 0xa

.field private static volatile a:Ljava/lang/String;

.field private static volatile b:I

.field private static volatile c:Z

.field private static volatile d:Z

.field private static volatile e:Z

.field private static volatile f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    const-string/jumbo v0, "active"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->a:Ljava/lang/String;

    .line 20
    sput v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->c:Z

    .line 27
    sput-boolean v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->d:Z

    .line 36
    sput-boolean v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->e:Z

    .line 40
    sput v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->f:I

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized AddConnSeq()V
    .locals 4

    .prologue
    .line 87
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->f:I

    .line 88
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AddConnSeq: [ connSeq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit v1

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized addFailCount()V
    .locals 4

    .prologue
    .line 114
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    .line 115
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addFailCount: [ failCount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v1

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized decreaseFailCount()V
    .locals 4

    .prologue
    .line 130
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    if-lez v0, :cond_0

    .line 131
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    .line 133
    :cond_0
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "decreaseFailCount: [ failCount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit v1

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getConnAction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 201
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getConnAction: [ connAction="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getConnSeq()I
    .locals 4

    .prologue
    .line 95
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getConnSeq: [ connSeq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getFailCount()I
    .locals 4

    .prologue
    .line 122
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getFailCount: [ failCount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isBackToFront()Z
    .locals 4

    .prologue
    .line 210
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isBackToFront: [ mIsBackToFront="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isConnActionActive()Z
    .locals 3

    .prologue
    .line 151
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "active"

    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isForceStopped()Z
    .locals 4

    .prologue
    .line 48
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isForceStopped: [ isForceStopped="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ isFlowControlByServer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 49
    sget-boolean v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->c:Z

    sget-boolean v2, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v0, v2

    monitor-exit v1

    return v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isReconnEnable()Z
    .locals 5

    .prologue
    .line 163
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    const/4 v0, 0x0

    .line 164
    :try_start_0
    sget v2, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 168
    :cond_0
    const-string/jumbo v2, "sync_link_ReconnCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isReconnEnable: [ isReconnEnable="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ failCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 169
    sget v4, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ MAX_FAIL_COUNT=10 ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit v1

    return v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetConnSeq()V
    .locals 3

    .prologue
    .line 78
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    const-string/jumbo v2, "resetConnSeq: "

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v1

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetFailCount()V
    .locals 3

    .prologue
    .line 105
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    const-string/jumbo v2, "resetFailCount: "

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit v1

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setBackToFront(Z)V
    .locals 4

    .prologue
    .line 218
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setBackToFront: [ isBackToFront="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sput-boolean p0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit v1

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setConnAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 180
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setConnAction: [ connAction="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    if-nez p0, :cond_0

    .line 183
    const-string/jumbo p0, ""

    .line 185
    :cond_0
    sput-object p0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit v1

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setConnActionActive()V
    .locals 3

    .prologue
    .line 192
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    const-string/jumbo v2, "setConnActionActive: "

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v0, "active"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit v1

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setFailCountForOnceEnable()V
    .locals 4

    .prologue
    .line 140
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    const/16 v0, 0x9

    :try_start_0
    sput v0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    .line 142
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFailCountForOnceEnable: [ failCount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit v1

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setFlowCotrol(Z)V
    .locals 4

    .prologue
    .line 67
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setFlowCotrol: [ setFlowCotrol="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sput-boolean p0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v1

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setForceStopped(Z)V
    .locals 4

    .prologue
    .line 58
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sync_link_ReconnCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setForceStopped: [ setForceStopped="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sput-boolean p0, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v1

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
