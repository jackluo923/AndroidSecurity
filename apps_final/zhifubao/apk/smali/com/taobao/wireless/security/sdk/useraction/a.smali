.class public final Lcom/taobao/wireless/security/sdk/useraction/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/useraction/IUATrace;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/JNICLibrary;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getInstance()Lcom/taobao/wireless/security/adapter/JNICLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wireless/security/sdk/useraction/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getTraceData()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/useraction/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v0}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->getTraceData()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onControlClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/useraction/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->onControlClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onFocusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/useraction/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->onFocusChange(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onKeyDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/wireless/security/sdk/useraction/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v1, p1, p2, v0}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->onKeyDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onNewPage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/useraction/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {v0, p1}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->onNewPage(Ljava/lang/String;)V

    return-void
.end method

.method public final onPwdKeyDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/useraction/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, p1, p2, v1}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->onKeyDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onSensorChanged(Ljava/lang/String;Landroid/hardware/SensorEvent;)V
    .locals 5

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/useraction/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    iget-object v1, p2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->onSensorChanged(Ljava/lang/String;FFF)V

    :cond_0
    return-void
.end method

.method public final onTouchScreen(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/useraction/a;->a:Lcom/taobao/wireless/security/adapter/JNICLibrary;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/taobao/wireless/security/adapter/JNICLibrary;->onTouchScreen(Ljava/lang/String;Ljava/lang/String;FF)V

    :cond_0
    return-void
.end method
