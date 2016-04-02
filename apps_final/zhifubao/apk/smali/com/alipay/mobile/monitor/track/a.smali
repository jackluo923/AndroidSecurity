.class final Lcom/alipay/mobile/monitor/track/a;
.super Ljava/lang/Object;
.source "TrackIntegrator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/alipay/mobile/monitor/track/TrackIntegrator;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/a;->e:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    iput-object p2, p0, Lcom/alipay/mobile/monitor/track/a;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/mobile/monitor/track/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/monitor/track/a;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alipay/mobile/monitor/track/a;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 10

    .prologue
    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTouchables()Ljava/util/ArrayList;

    move-result-object v9

    .line 394
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 396
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 397
    if-eqz v2, :cond_1

    .line 398
    invoke-virtual {v2}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v4

    .line 402
    instance-of v0, v4, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    if-nez v0, :cond_1

    .line 403
    const/4 v1, 0x0

    .line 404
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    move-object v1, v0

    .line 407
    :cond_0
    new-instance v0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    iget-object v3, p0, Lcom/alipay/mobile/monitor/track/a;->e:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    invoke-static {v3}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Lcom/alipay/mobile/monitor/track/TrackIntegrator;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/monitor/track/a;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/monitor/track/a;->c:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/alipay/mobile/monitor/track/a;->d:Z

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;-><init>(Landroid/widget/AdapterView;Landroid/view/View;Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;Landroid/view/TouchDelegate;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    :cond_2
    return-void
.end method
