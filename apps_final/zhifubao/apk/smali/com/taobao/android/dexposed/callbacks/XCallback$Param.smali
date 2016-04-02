.class public Lcom/taobao/android/dexposed/callbacks/XCallback$Param;
.super Ljava/lang/Object;
.source "XCallback.java"


# instance fields
.field public final callbacks:[Ljava/lang/Object;

.field private extra:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    .line 25
    return-void
.end method

.method protected constructor <init>(Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->extra:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->extra:Landroid/os/Bundle;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->extra:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 46
    instance-of v1, v0, Lcom/taobao/android/dexposed/callbacks/a;

    if-eqz v1, :cond_0

    .line 47
    check-cast v0, Lcom/taobao/android/dexposed/callbacks/a;

    invoke-static {v0}, Lcom/taobao/android/dexposed/callbacks/a;->a(Lcom/taobao/android/dexposed/callbacks/a;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/dexposed/callbacks/a;

    invoke-direct {v1, p2}, Lcom/taobao/android/dexposed/callbacks/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 54
    return-void
.end method
