.class Lcom/google/analytics/tracking/android/GAThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAThread;

.field final synthetic val$hitCopy:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    const-string v1, "&cid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    const-string v1, "&cid"

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mClientId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAThread;->access$000(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$100(Lcom/google/analytics/tracking/android/GAThread;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getAppOptOut()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    # invokes: Lcom/google/analytics/tracking/android/GAThread;->isSampledOut(Ljava/util/Map;)Z
    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/GAThread;->access$200(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$300(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    new-instance v1, Lcom/google/analytics/tracking/android/MapBuilder;

    invoke-direct {v1}, Lcom/google/analytics/tracking/android/MapBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/analytics/tracking/android/GAThread;->access$300(Lcom/google/analytics/tracking/android/GAThread;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    const/4 v1, 0x0

    # setter for: Lcom/google/analytics/tracking/android/GAThread;->mInstallCampaign:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/GAThread;->access$302(Lcom/google/analytics/tracking/android/GAThread;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    # invokes: Lcom/google/analytics/tracking/android/GAThread;->fillAppParameters(Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/GAThread;->access$400(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/HitBuilder;->generateHitParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$700(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/ServiceProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    const-string v3, "&ht"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAThread$1;->val$hitCopy:Ljava/util/Map;

    # invokes: Lcom/google/analytics/tracking/android/GAThread;->getUrlScheme(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/analytics/tracking/android/GAThread;->access$500(Lcom/google/analytics/tracking/android/GAThread;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/analytics/tracking/android/GAThread$1;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mCommands:Ljava/util/List;
    invoke-static {v5}, Lcom/google/analytics/tracking/android/GAThread;->access$600(Lcom/google/analytics/tracking/android/GAThread;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/analytics/tracking/android/ServiceProxy;->putHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
