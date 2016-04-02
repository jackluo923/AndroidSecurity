.class public abstract Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.super Ljava/lang/Object;
.source "RpcExcutor.java"

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

.field private m:Landroid/widget/FrameLayout;

.field private n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

.field private o:Landroid/widget/ScrollView;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a:Landroid/os/Handler;

    .line 49
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 51
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->f:Ljava/lang/String;

    .line 77
    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    .line 82
    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    .line 87
    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    .line 92
    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->j:I

    .line 97
    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->k:I

    .line 102
    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->l:I

    .line 119
    iput-boolean v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    .line 125
    iput-boolean v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 127
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    .line 129
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    .line 130
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 131
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 130
    iput-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    .line 133
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a:Landroid/os/Handler;

    .line 49
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 51
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->f:Ljava/lang/String;

    .line 77
    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    .line 82
    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    .line 87
    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    .line 92
    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->j:I

    .line 97
    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->k:I

    .line 102
    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->l:I

    .line 119
    iput-boolean v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a(Landroid/app/Activity;I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a:Landroid/os/Handler;

    .line 49
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 51
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->f:Ljava/lang/String;

    .line 77
    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    .line 82
    iput-boolean v3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    .line 87
    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    .line 92
    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->j:I

    .line 97
    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->k:I

    .line 102
    iput v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->l:I

    .line 119
    iput-boolean v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    .line 150
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 151
    if-gtz v0, :cond_0

    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 153
    new-instance v2, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;

    invoke-direct {v2, p0, p2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$1;-><init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;Landroid/view/View;)V

    .line 152
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 165
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a(Landroid/app/Activity;I)V

    .line 166
    return-void
.end method

.method private a(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    .line 175
    iput p2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    .line 176
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    .line 177
    check-cast p1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    .line 178
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 179
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 178
    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    .line 181
    :cond_0
    return-void
.end method

.method private varargs a([Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 277
    const/4 v2, 0x0

    .line 279
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    .line 280
    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    .line 283
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->getProgressText()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;)V

    .line 285
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->excute([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    .line 313
    :cond_1
    iput-boolean v4, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    .line 315
    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 320
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    :try_start_2
    const-string/jumbo v1, "RpcExcutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    .line 290
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 291
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_6

    .line 292
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onNetworkError(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V

    .line 293
    iget-boolean v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    if-eqz v1, :cond_4

    .line 294
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->showNetworkErrorTip([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    .line 313
    :cond_3
    iput-boolean v4, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    .line 315
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 316
    :catch_1
    move-exception v0

    .line 317
    const-string/jumbo v1, "RpcExcutor"

    const-string/jumbo v2, "RpcExcutor.onRpcFinish\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 296
    :cond_4
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 308
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    if-eqz v0, :cond_5

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    .line 313
    :cond_5
    iput-boolean v4, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    .line 315
    :try_start_5
    invoke-virtual {p0, v2, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 319
    :goto_1
    throw v1

    .line 299
    :cond_6
    :try_start_6
    throw v0

    .line 301
    :catch_2
    move-exception v0

    .line 302
    const-string/jumbo v1, "RpcExcutor"

    const-string/jumbo v3, "RpcExcutor.excute\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 304
    :try_start_7
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onException(Ljava/lang/Exception;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 309
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    if-eqz v0, :cond_7

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    .line 313
    :cond_7
    iput-boolean v4, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    .line 315
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 316
    :catch_3
    move-exception v0

    .line 317
    const-string/jumbo v1, "RpcExcutor"

    const-string/jumbo v2, "RpcExcutor.onRpcFinish\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 305
    :catch_4
    move-exception v0

    .line 306
    :try_start_9
    const-string/jumbo v1, "RpcExcutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 316
    :catch_5
    move-exception v0

    .line 317
    const-string/jumbo v2, "RpcExcutor"

    const-string/jumbo v3, "RpcExcutor.onRpcFinish\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 316
    :catch_6
    move-exception v0

    .line 317
    const-string/jumbo v1, "RpcExcutor"

    const-string/jumbo v2, "RpcExcutor.onRpcFinish\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    return v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->m:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    move v3, v4

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lt v3, v1, :cond_4

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$layout;->ext_flow_tip_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->hideTipView()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->j:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->k:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->l:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->m:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v1, v2, Landroid/widget/ScrollView;

    if-eqz v1, :cond_5

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-eqz v1, :cond_5

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1
.end method

.method static synthetic access$4(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public varargs abstract excute([Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 210
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public getProgressText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->f:Ljava/lang/String;

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
    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

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
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 199
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hideTipView()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 257
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->p:Z

    return v0
.end method

.method public isShowNetworkErrorView()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    return v0
.end method

.method public isShowProgressDialog()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    return v0
.end method

.method public varargs onException(Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 457
    const-string/jumbo v0, "ExtRpcAction"

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 458
    return-void
.end method

.method public varargs onNetworkError(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public varargs onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 449
    const-string/jumbo v0, "ExtRpcAction"

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    return-void
.end method

.method public varargs onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 434
    const-string/jumbo v0, "onRpcFinish"

    const-string/jumbo v1, "rpc request finish."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a([Ljava/lang/Object;)V

    .line 463
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 490
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    .line 491
    return-void
.end method

.method public runOnUiThreadDelay(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 494
    if-eqz p1, :cond_0

    .line 495
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setProgressText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->f:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public setShowNetworkErrorView(Z)V
    .locals 0

    .prologue
    .line 486
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->h:Z

    .line 487
    return-void
.end method

.method public setShowProgressDialog(Z)V
    .locals 0

    .prologue
    .line 478
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->g:Z

    .line 479
    return-void
.end method

.method public setTipMargin(IIII)V
    .locals 0

    .prologue
    .line 516
    iput p3, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->j:I

    .line 517
    iput p2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->k:I

    .line 518
    iput p4, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->l:I

    .line 519
    iput p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->i:I

    .line 520
    return-void
.end method

.method public showEmptyTip(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 363
    new-instance v1, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4;-><init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public varargs showNetworkErrorTip([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 330
    new-instance v1, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$3;-><init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;Landroid/app/Activity;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showWarningTip(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 398
    new-instance v1, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$5;-><init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public varargs start([Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;-><init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method
