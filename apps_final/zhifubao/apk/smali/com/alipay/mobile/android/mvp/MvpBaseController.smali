.class public abstract Lcom/alipay/mobile/android/mvp/MvpBaseController;
.super Ljava/lang/Object;
.source "MvpBaseController.java"

# interfaces
.implements Lcom/alipay/mobile/android/mvp/DataObservable;


# instance fields
.field private a:Lcom/alipay/mobile/android/mvp/DataObservable;

.field private b:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController;->b:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/android/mvp/MvpBaseController;)Lcom/alipay/mobile/android/mvp/DataObservable;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController;->a:Lcom/alipay/mobile/android/mvp/DataObservable;

    return-object v0
.end method


# virtual methods
.method public addDataObserver(Lcom/alipay/mobile/android/mvp/DataObserver;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController;->a:Lcom/alipay/mobile/android/mvp/DataObservable;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/android/mvp/DataObservable;->addDataObserver(Lcom/alipay/mobile/android/mvp/DataObserver;)V

    .line 29
    return-void
.end method

.method public countDataObservers()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController;->a:Lcom/alipay/mobile/android/mvp/DataObservable;

    invoke-interface {v0}, Lcom/alipay/mobile/android/mvp/DataObservable;->countDataObservers()I

    move-result v0

    return v0
.end method

.method public deleteDataObserver(Lcom/alipay/mobile/android/mvp/DataObserver;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController;->a:Lcom/alipay/mobile/android/mvp/DataObservable;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/android/mvp/DataObservable;->deleteDataObserver(Lcom/alipay/mobile/android/mvp/DataObserver;)V

    .line 34
    return-void
.end method

.method public getDataObservable()Lcom/alipay/mobile/android/mvp/DataObservable;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController;->a:Lcom/alipay/mobile/android/mvp/DataObservable;

    return-object v0
.end method

.method public notifyDataObservers(Lcom/alipay/mobile/android/mvp/DataEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/android/mvp/DataEvent",
            "<",
            "Lcom/alipay/mobile/android/mvp/model/MvpResult",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/mvp/MvpBaseController$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/android/mvp/MvpBaseController$2;-><init>(Lcom/alipay/mobile/android/mvp/MvpBaseController;Lcom/alipay/mobile/android/mvp/DataEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method public notifyDataObservers(Lcom/alipay/mobile/android/mvp/DataEvent;I)V
    .locals 2
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
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/mvp/MvpBaseController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/android/mvp/MvpBaseController$1;-><init>(Lcom/alipay/mobile/android/mvp/MvpBaseController;Lcom/alipay/mobile/android/mvp/DataEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
.end method

.method public notifyDataObserversException(Lcom/alipay/mobile/android/mvp/DataEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/android/mvp/DataEvent",
            "<",
            "Lcom/alipay/mobile/android/mvp/model/MvpResult",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/mvp/MvpBaseController$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/android/mvp/MvpBaseController$3;-><init>(Lcom/alipay/mobile/android/mvp/MvpBaseController;Lcom/alipay/mobile/android/mvp/DataEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method public setDataObservable(Lcom/alipay/mobile/android/mvp/DataObservable;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/android/mvp/MvpBaseController;->a:Lcom/alipay/mobile/android/mvp/DataObservable;

    .line 93
    return-void
.end method
