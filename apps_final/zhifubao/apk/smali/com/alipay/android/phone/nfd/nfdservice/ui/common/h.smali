.class public final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Timer;

.field private c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/ui/common/j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "NetworkAvailabilityDetector"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->d:Ljava/util/List;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->g:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->g:I

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "stopDetector. START"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b:Ljava/util/Timer;

    :cond_1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b:Ljava/util/Timer;

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/j;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "startDetector. START"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "startDetector. TextUtils.isEmpty(mac) == true, return"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "startDetector. TextUtils.equals(mCurrentMac, mac) == true, return"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->f:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "startDetector. TextUtils.equals(mCurrentSsid, ssid) == true, return"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->g:I

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b:Ljava/util/Timer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b:Ljava/util/Timer;

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;

    if-nez v0, :cond_5

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b:Ljava/util/Timer;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "NetworkAvailabilityDetectorTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b:Ljava/util/Timer;

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b:Ljava/util/Timer;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x75300

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->d:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/j;

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final declared-synchronized b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/j;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->g:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->g:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->e:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->f:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->g:I

    if-eq v2, v1, :cond_3

    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->d:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/j;

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
