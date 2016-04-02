.class public Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;
.super Ljava/lang/Object;
.source "ClickInterceptorManager.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->a:Ljava/util/List;

    .line 13
    new-instance v0, Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->b:Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;

    return-void
.end method


# virtual methods
.method public addClickInterceptor(Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public handleOnClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->b:Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;->reportViewTrackEvent(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;

    .line 28
    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;->onClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleOnItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->b:Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;

    const-string/jumbo v1, "cellAction"

    invoke-virtual {v0, p2, v1, p6, p7}, Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;->reportViewTrackEvent(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 39
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
