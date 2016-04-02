.class public abstract Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;
.super Ljava/lang/Object;
.source "BackgroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final SHOW_ALWAYS:Ljava/lang/String; = "showAlways"

.field public static final SHOW_STYLE_FULLSCREEN:Ljava/lang/String; = "fullScreen"

.field public static final SHOW_STYLE_IN_VIEW:Ljava/lang/String; = "inView"

.field public static final SHOW_STYLE_UNDER_TITLEBAR:Ljava/lang/String; = "underTitle"

.field public static final SHOW_WHEN_NOCACHE:Ljava/lang/String; = "showWhenNoCache"

.field private static s:I


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private final c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

.field private n:Landroid/widget/ScrollView;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Landroid/widget/FrameLayout;

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->a:Landroid/os/Handler;

    .line 55
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 57
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 63
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->f:Ljava/lang/String;

    .line 83
    iput-boolean v3, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->g:Z

    .line 88
    iput-boolean v3, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->h:Z

    .line 93
    iput v2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->i:I

    .line 98
    iput v2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->j:I

    .line 103
    iput v2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->k:I

    .line 108
    iput v2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->l:I

    .line 120
    iput-boolean v2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->o:Z

    .line 137
    iput-boolean v2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->h:Z

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 139
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    .line 141
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    .line 142
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 143
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 142
    iput-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    .line 145
    :cond_0
    return-void
.end method

.method private varargs a([Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 340
    const/4 v2, 0x0

    .line 342
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->o:Z

    .line 343
    iget-boolean v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    .line 346
    invoke-virtual {p0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->getProgressText()Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;)V

    .line 348
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->execute([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 372
    iput-boolean v4, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->o:Z

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->g:Z

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    .line 378
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->onFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 383
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    :try_start_2
    const-string/jumbo v1, "BackgroundExecutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V

    .line 352
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    .line 353
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 354
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_6

    .line 355
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->onNetworkError(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V

    .line 356
    iget-boolean v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->h:Z

    if-eqz v1, :cond_4

    .line 357
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->showNetworkErrorTip([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    iput-boolean v4, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->o:Z

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->g:Z

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    .line 378
    :cond_3
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->onFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 379
    :catch_1
    move-exception v0

    .line 380
    const-string/jumbo v1, "BackgroundExecutor"

    const-string/jumbo v2, "BackgroundExecutor.onRpcFinish\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 359
    :cond_4
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 371
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 372
    iput-boolean v4, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->o:Z

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->g:Z

    if-eqz v0, :cond_5

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    .line 378
    :cond_5
    :try_start_5
    invoke-virtual {p0, v2, p1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->onFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 382
    :goto_1
    throw v1

    .line 362
    :cond_6
    :try_start_6
    throw v0

    .line 364
    :catch_2
    move-exception v0

    .line 365
    const-string/jumbo v1, "BackgroundExecutor"

    const-string/jumbo v3, "BackgroundExecutor.excute\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 367
    :try_start_7
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->onException(Ljava/lang/Exception;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 372
    :goto_2
    iput-boolean v4, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->o:Z

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->g:Z

    if-eqz v0, :cond_7

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    .line 378
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->onFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 379
    :catch_3
    move-exception v0

    .line 380
    const-string/jumbo v1, "BackgroundExecutor"

    const-string/jumbo v2, "BackgroundExecutor.onRpcFinish\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 368
    :catch_4
    move-exception v0

    .line 369
    :try_start_9
    const-string/jumbo v1, "BackgroundExecutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 379
    :catch_5
    move-exception v0

    .line 380
    const-string/jumbo v2, "BackgroundExecutor"

    const-string/jumbo v3, "BackgroundExecutor.onRpcFinish\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 379
    :catch_6
    move-exception v0

    .line 380
    const-string/jumbo v1, "BackgroundExecutor"

    const-string/jumbo v2, "BackgroundExecutor.onRpcFinish\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->a([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->q:Landroid/widget/FrameLayout;

    if-nez v1, :cond_2

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->q:Landroid/widget/FrameLayout;

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    move v3, v4

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lt v3, v1, :cond_7

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->n:Landroid/widget/ScrollView;

    if-nez v1, :cond_6

    const-string/jumbo v1, "fullScreen"

    iget-object v2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "inView"

    iget-object v2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_4
    iput v4, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->i:I

    iput v4, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->j:I

    iput v4, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->k:I

    iput v4, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->l:I

    :cond_5
    :goto_3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$layout;->ext_flow_tip_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->n:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->hideTipView()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->i:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->j:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->k:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->l:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->q:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->n:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->n:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v1, v2, Landroid/widget/ScrollView;

    if-eqz v1, :cond_8

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-eqz v1, :cond_8

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->n:Landroid/widget/ScrollView;

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v1, "underTitle"

    iget-object v2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->s:I

    if-gtz v1, :cond_a

    const/4 v1, 0x1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->s:I

    :cond_a
    sget v1, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->s:I

    iput v1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->i:I

    goto :goto_3
.end method

.method static synthetic access$2(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->n:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public varargs abstract execute([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TResult;"
        }
    .end annotation
.end method

.method public getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 252
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public getProgressText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServiceByInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 241
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hideTipView()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->n:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->n:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 316
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->o:Z

    return v0
.end method

.method public isShowNetworkErrorView()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->h:Z

    return v0
.end method

.method public isShowProgressDialog()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->g:Z

    return v0
.end method

.method public varargs onException(Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 520
    const-string/jumbo v0, "ExtRpcAction"

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 521
    return-void
.end method

.method public varargs onFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 391
    const-string/jumbo v0, "onRpcFinish"

    const-string/jumbo v1, "rpc request finish."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public varargs onNetworkError(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public varargs onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 512
    const-string/jumbo v0, "ExtRpcAction"

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->a([Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 553
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    .line 554
    return-void
.end method

.method public runOnUiThreadDelay(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 557
    if-eqz p1, :cond_0

    .line 558
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    .line 155
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    .line 156
    check-cast p1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    .line 157
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 158
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 157
    iput-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->e:Ljava/lang/ref/WeakReference;

    .line 161
    :cond_0
    return-object p0
.end method

.method public setConcurrency(Z)Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->r:Z

    .line 222
    return-object p0
.end method

.method public setProgress(Ljava/lang/String;Z)Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 180
    const-string/jumbo v0, "showAlways"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->setShowProgressDialog(Z)V

    .line 187
    :goto_0
    return-object p0

    .line 182
    :cond_0
    const-string/jumbo v0, "showWhenNoCache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 183
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->setShowProgressDialog(Z)V

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->setShowProgressDialog(Z)V

    goto :goto_0
.end method

.method public setProgressMsg(Ljava/lang/String;)Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->f:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public setProgressText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->f:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public setShowNetworkError(Z)Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->setShowNetworkErrorView(Z)V

    .line 197
    return-object p0
.end method

.method public setShowNetworkErrorParent(Landroid/widget/FrameLayout;)Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            ")",
            "Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->q:Landroid/widget/FrameLayout;

    .line 217
    return-object p0
.end method

.method public setShowNetworkErrorStyle(Ljava/lang/String;)Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->p:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public setShowNetworkErrorView(Z)V
    .locals 0

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->h:Z

    .line 550
    return-void
.end method

.method public setShowProgressDialog(Z)V
    .locals 0

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->g:Z

    .line 542
    return-void
.end method

.method public setTipMargin(IIII)V
    .locals 0

    .prologue
    .line 579
    iput p3, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->j:I

    .line 580
    iput p2, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->k:I

    .line 581
    iput p4, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->l:I

    .line 582
    iput p1, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->i:I

    .line 583
    return-void
.end method

.method public showEmptyTip(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 435
    new-instance v1, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$3;-><init>(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public varargs showNetworkErrorTip([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 402
    new-instance v1, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$2;-><init>(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;Landroid/app/Activity;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showWarningTip(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 470
    new-instance v1, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$4;-><init>(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public varargs start([Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 326
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;->getServiceByInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 327
    new-instance v1, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable$1;-><init>(Lcom/alipay/mobile/common/androidannotations/BackgroundRunnable;[Ljava/lang/Object;)V

    .line 332
    const-string/jumbo v2, "BackgroundExecutor"

    .line 327
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method
