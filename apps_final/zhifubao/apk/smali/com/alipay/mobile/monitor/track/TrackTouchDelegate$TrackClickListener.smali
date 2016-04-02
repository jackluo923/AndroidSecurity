.class public Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;
.super Ljava/lang/Object;
.source "TrackTouchDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->a(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "subappResume"

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v2}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "viewSwitch"

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v2}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 187
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v2}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->handleOnClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->g(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->g(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->f(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)V

    .line 196
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->a(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "subappResume"

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v2}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "viewSwitch"

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v2}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->handleOnItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->e(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->e(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->f(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)V

    .line 176
    return-void
.end method
