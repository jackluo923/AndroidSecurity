.class final Lcom/alipay/android/app/flybird/ui/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

.field final synthetic b:Lcom/alipay/android/app/base/trade/Trade;

.field final synthetic c:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic d:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

.field final synthetic e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Lcom/alipay/android/app/base/trade/Trade;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/s;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/s;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/s;->b:Lcom/alipay/android/app/base/trade/Trade;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/s;->c:Lcom/alipay/android/app/json/JSONObject;

    iput-object p5, p0, Lcom/alipay/android/app/flybird/ui/s;->d:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/s;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->d(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/s;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/s;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->d()Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/s;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->f()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/s;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v4}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/s;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->e(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/s;->b:Lcom/alipay/android/app/base/trade/Trade;

    invoke-virtual {v5}, Lcom/alipay/android/app/base/trade/Trade;->k()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->d(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/s;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/s;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-interface {v3, v2, v4, v5}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a(Landroid/view/View;ILcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "show view time"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "msms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->b(J)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/s;->a:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/s;->c:Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/s;->d:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/s;->d:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/s;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/s;->d:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/s;->e:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->c(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/util/ExceptionUtils;->a(ILjava/lang/Throwable;)V

    goto :goto_0
.end method
