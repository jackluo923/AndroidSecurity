.class Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v5, 0x5

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    # getter for: Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->d:Landroid/content/Context;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->access$1(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "framework_preferences"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v3, "processStartTimesPush"

    const-string/jumbo v4, ""

    invoke-interface {v6, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    # invokes: Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/lang/String;J)Ljava/util/List;
    invoke-static {v4, v3, v0, v1}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->access$2(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "processStartTimesPush"

    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    # invokes: Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(Ljava/util/List;I)Ljava/lang/String;
    invoke-static {v4, v1, v5}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->access$3(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v3, v0

    const-wide/32 v3, 0xea60

    div-long/2addr v0, v3

    cmp-long v3, v8, v0

    if-gtz v3, :cond_3

    const-wide/16 v3, 0x3c

    cmp-long v3, v0, v3

    if-gez v3, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor$2;->this$0:Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    # invokes: Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->a(J)Z
    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->access$5(Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ClientAnomalousRestart"

    const-string/jumbo v1, "PushProcess Restart 5 Times In 60 Minutes."

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v7}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    :cond_2
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "processStartTimesPush"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "processStartTimesPush"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
