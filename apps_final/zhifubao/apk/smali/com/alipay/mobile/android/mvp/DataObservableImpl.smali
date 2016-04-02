.class public Lcom/alipay/mobile/android/mvp/DataObservableImpl;
.super Ljava/lang/Object;
.source "DataObservableImpl.java"

# interfaces
.implements Lcom/alipay/mobile/android/mvp/DataObservable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/mvp/DataObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 34
    return-void
.end method

.method private a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/mvp/DataObserver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->a:Ljava/util/List;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->a:Ljava/util/List;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/mvp/DataObserver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->a()Ljava/util/List;

    move-result-object v1

    .line 157
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 158
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    .line 161
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 162
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 161
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 169
    throw v0
.end method


# virtual methods
.method public addDataObserver(Lcom/alipay/mobile/android/mvp/DataObserver;)V
    .locals 2

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 49
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 54
    throw v0
.end method

.method public countDataObservers()I
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 129
    return v0

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 132
    throw v0
.end method

.method public declared-synchronized deleteDataObserver(Lcom/alipay/mobile/android/mvp/DataObserver;)V
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    :try_start_3
    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 70
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyDataObservers(Lcom/alipay/mobile/android/mvp/DataEvent;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/android/mvp/DataEvent",
            "<",
            "Lcom/alipay/mobile/android/mvp/model/MvpResult",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/android/mvp/DataObservableImpl;->b()Ljava/util/List;

    move-result-object v3

    .line 82
    if-nez v3, :cond_1

    .line 123
    :cond_0
    return-void

    .line 87
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_4

    .line 106
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_0

    .line 108
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/mvp/DataObserver;

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Landroid/app/Activity;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 111
    check-cast v1, Landroid/app/Activity;

    .line 112
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 118
    invoke-interface {v0, p1}, Lcom/alipay/mobile/android/mvp/DataObserver;->onException(Lcom/alipay/mobile/android/mvp/DataEvent;)V

    .line 119
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 89
    :cond_4
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/mvp/DataObserver;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Landroid/app/Activity;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v0

    .line 92
    check-cast v1, Landroid/app/Activity;

    .line 93
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 94
    :cond_5
    if-nez p2, :cond_6

    .line 99
    invoke-interface {v0, p1}, Lcom/alipay/mobile/android/mvp/DataObserver;->onChanged(Lcom/alipay/mobile/android/mvp/DataEvent;)V

    .line 100
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    :cond_6
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method
