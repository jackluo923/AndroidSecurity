.class public Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "TrackTouchDelegate.java"


# instance fields
.field private final a:Landroid/view/TouchDelegate;

.field private final b:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

.field private final c:Landroid/view/View;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;

.field private final i:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/AdapterView$OnItemClickListener;

.field private k:Landroid/widget/AdapterView$OnItemClickListener;

.field private l:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;Landroid/view/View;Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;Landroid/view/TouchDelegate;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;",
            "Landroid/view/TouchDelegate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->i:Landroid/widget/AdapterView;

    .line 87
    iput-object p2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c:Landroid/view/View;

    .line 88
    iput-object p3, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->l:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    .line 89
    iput-object p4, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->a:Landroid/view/TouchDelegate;

    .line 90
    new-instance v0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;-><init>(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

    .line 91
    iput-object p5, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d:Ljava/lang/String;

    .line 92
    iput-object p6, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->e:Ljava/lang/String;

    .line 93
    iput-boolean p7, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->f:Z

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->l:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->k:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)V
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->i:Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->j:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->i:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->j:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackReflector;->a()Lcom/alipay/mobile/monitor/track/TrackReflector;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/monitor/track/TrackReflector;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->h:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->i:Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->i:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->j:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->j:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->k:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->i:Landroid/widget/AdapterView;

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackReflector;->a()Lcom/alipay/mobile/monitor/track/TrackReflector;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/monitor/track/TrackReflector;->a(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

    if-eq v0, v1, :cond_1

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->g:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->g:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->h:Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackReflector;->a()Lcom/alipay/mobile/monitor/track/TrackReflector;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/monitor/track/TrackReflector;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->a:Landroid/view/TouchDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->a:Landroid/view/TouchDelegate;

    invoke-virtual {v0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TrackTouchDelegate"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
