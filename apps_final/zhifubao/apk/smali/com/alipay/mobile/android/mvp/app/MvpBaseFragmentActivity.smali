.class public abstract Lcom/alipay/mobile/android/mvp/app/MvpBaseFragmentActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "MvpBaseFragmentActivity.java"

# interfaces
.implements Lcom/alipay/mobile/android/mvp/DataObserver;


# instance fields
.field private a:Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo",
            "<*>;"
        }
    .end annotation
.end field

.field protected mControllerObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onChanged(Lcom/alipay/mobile/android/mvp/DataEvent;)V
    .locals 0
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
    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/app/MvpBaseFragmentActivity;->a:Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;

    invoke-static {v0, p0}, Lcom/alipay/mobile/android/mvp/util/MvpUtil;->unregisterController(Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;Lcom/alipay/mobile/android/mvp/DataObserver;)V

    .line 50
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 51
    return-void
.end method

.method public onException(Lcom/alipay/mobile/android/mvp/DataEvent;)V
    .locals 0
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
    .line 45
    return-void
.end method

.method protected setControllerClass(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/mobile/android/mvp/MvpBaseController;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/android/mvp/util/MvpUtil;->registerController(Ljava/lang/Class;Ljava/lang/Class;Lcom/alipay/mobile/android/mvp/DataObserver;)Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/mvp/app/MvpBaseFragmentActivity;->a:Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/app/MvpBaseFragmentActivity;->a:Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;

    iget-object v0, v0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;->controllerObj:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
