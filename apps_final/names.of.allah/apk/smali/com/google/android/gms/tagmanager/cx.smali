.class Lcom/google/android/gms/tagmanager/cx;
.super Lcom/google/android/gms/tagmanager/cw;


# static fields
.field private static ahR:Lcom/google/android/gms/tagmanager/cx;

.field private static final tQ:Ljava/lang/Object;


# instance fields
.field private ahH:Landroid/content/Context;

.field private ahI:Lcom/google/android/gms/tagmanager/at;

.field private volatile ahJ:Lcom/google/android/gms/tagmanager/ar;

.field private ahK:I

.field private ahL:Z

.field private ahM:Z

.field private ahN:Z

.field private ahO:Lcom/google/android/gms/tagmanager/au;

.field private ahP:Lcom/google/android/gms/tagmanager/bn;

.field private ahQ:Z

.field private connected:Z

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/cx;->tQ:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cw;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:I

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/cx;->ahL:Z

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/cx;->ahM:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/cx;->connected:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/cx;->ahN:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/cx$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/cx$1;-><init>(Lcom/google/android/gms/tagmanager/cx;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahO:Lcom/google/android/gms/tagmanager/au;

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/cx;->ahQ:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/cx;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->connected:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/cx;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/tagmanager/cx;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahQ:Z

    return v0
.end method

.method private cA()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/tagmanager/bn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/bn;-><init>(Lcom/google/android/gms/tagmanager/cw;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahP:Lcom/google/android/gms/tagmanager/bn;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahP:Lcom/google/android/gms/tagmanager/bn;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx;->ahH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/bn;->s(Landroid/content/Context;)V

    return-void
.end method

.method private cB()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx;->ahH:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/tagmanager/cx$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/cx$2;-><init>(Lcom/google/android/gms/tagmanager/cx;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    iget v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/cx;->tQ:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method static synthetic cE()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/cx;->tQ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/tagmanager/cx;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/tagmanager/cx;)Lcom/google/android/gms/tagmanager/at;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahI:Lcom/google/android/gms/tagmanager/at;

    return-object v0
.end method

.method public static mL()Lcom/google/android/gms/tagmanager/cx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/cx;->ahR:Lcom/google/android/gms/tagmanager/cx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/cx;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/cx;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/cx;->ahR:Lcom/google/android/gms/tagmanager/cx;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/cx;->ahR:Lcom/google/android/gms/tagmanager/cx;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/ar;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahH:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahH:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahJ:Lcom/google/android/gms/tagmanager/ar;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cx;->ahJ:Lcom/google/android/gms/tagmanager/ar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahQ:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/tagmanager/cx;->tQ:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/cx;->tQ:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PowerSaveMode "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/cx;->ahQ:Z

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/cx;->connected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized cD()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahQ:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->connected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahK:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/tagmanager/cx;->tQ:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/cx;->tQ:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cl()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahM:Z

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahJ:Lcom/google/android/gms/tagmanager/ar;

    new-instance v1, Lcom/google/android/gms/tagmanager/cx$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/cx$3;-><init>(Lcom/google/android/gms/tagmanager/cx;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/ar;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized mM()Lcom/google/android/gms/tagmanager/at;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahI:Lcom/google/android/gms/tagmanager/at;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahH:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/tagmanager/ca;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cx;->ahO:Lcom/google/android/gms/tagmanager/au;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cx;->ahH:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ca;-><init>(Lcom/google/android/gms/tagmanager/au;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahI:Lcom/google/android/gms/tagmanager/at;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cx;->cB()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahM:Z

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cx;->cl()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahL:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahP:Lcom/google/android/gms/tagmanager/bn;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahN:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cx;->cA()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahI:Lcom/google/android/gms/tagmanager/at;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized t(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/cx;->ahQ:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/cx;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
