.class final Lcom/alipay/pushsdk/push/p;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/pushsdk/push/l;

.field final synthetic b:Lcom/alipay/pushsdk/push/l;


# direct methods
.method private constructor <init>(Lcom/alipay/pushsdk/push/l;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/alipay/pushsdk/push/p;->b:Lcom/alipay/pushsdk/push/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p1, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    .line 733
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/pushsdk/push/l;B)V
    .locals 0

    .prologue
    .line 731
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/p;-><init>(Lcom/alipay/pushsdk/push/l;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v2, 0x3

    .line 739
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "===== RegisterTask.run()====="

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->u()Z

    move-result v0

    if-nez v0, :cond_9

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/p;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->j(Lcom/alipay/pushsdk/push/l;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/c/c;->a(I)Lcom/alipay/pushsdk/push/c/a;

    move-result-object v1

    .line 745
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/c/a;->a(I)V

    .line 747
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/c/a;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    new-instance v0, Lcom/alipay/pushsdk/util/b;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/p;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v2}, Lcom/alipay/pushsdk/push/l;->h(Lcom/alipay/pushsdk/push/l;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/pushsdk/util/b;-><init>(Landroid/content/Context;)V

    .line 757
    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/b;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 758
    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 761
    const-string/jumbo v0, "userId"

    .line 762
    iget-object v3, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/l;->e()Ljava/lang/String;

    move-result-object v3

    .line 761
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 767
    :goto_0
    const-string/jumbo v0, ""

    .line 768
    iget-object v3, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v3

    .line 769
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 770
    if-eqz v3, :cond_8

    .line 772
    const-string/jumbo v4, "com.eg.android.AlipayGphoneRC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 773
    const-string/jumbo v0, "alipayclient-rc"

    .line 779
    :cond_0
    :goto_1
    const-string/jumbo v3, "appId"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 781
    const-string/jumbo v0, "trigger"

    .line 782
    iget-object v3, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/l;->j()Ljava/lang/String;

    move-result-object v3

    .line 781
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 784
    iget-object v0, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->h()J

    move-result-wide v3

    .line 785
    iget-object v0, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->g()J

    move-result-wide v5

    .line 786
    sub-long v7, v5, v3

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    .line 787
    const-string/jumbo v0, "curCreate"

    invoke-virtual {v2, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 789
    const-string/jumbo v0, "preClose"

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 792
    invoke-static {}, Lcom/alipay/pushsdk/push/b/e;->a()I

    move-result v0

    sget v3, Lcom/alipay/pushsdk/push/b/e;->a:I

    if-le v0, v3, :cond_2

    .line 793
    new-instance v0, Lcom/alipay/pushsdk/push/b/a;

    .line 794
    iget-object v3, p0, Lcom/alipay/pushsdk/push/p;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v3}, Lcom/alipay/pushsdk/push/l;->h(Lcom/alipay/pushsdk/push/l;)Landroid/content/Context;

    move-result-object v3

    .line 793
    invoke-direct {v0, v3}, Lcom/alipay/pushsdk/push/b/a;-><init>(Landroid/content/Context;)V

    .line 796
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/b/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/b/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/pushsdk/push/b/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 797
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/b/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 798
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 799
    const/4 v3, 0x3

    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v4

    .line 800
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "RegisterTask() locationString="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 800
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 799
    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_1
    const-string/jumbo v3, "lbsInfo"

    .line 804
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 810
    :cond_2
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 812
    const/4 v0, 0x3

    .line 813
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v3

    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "RegisterTask() registration userId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 816
    const-string/jumbo v5, "userId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 815
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 817
    const-string/jumbo v5, ", delTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 814
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 811
    invoke-static {v0, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/c/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 830
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/p;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->k(Lcom/alipay/pushsdk/push/l;)Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    .line 831
    iget-object v2, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/l;->m()Lcom/alipay/pushsdk/push/d/d;

    move-result-object v2

    .line 830
    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/connection/k;->a(Lcom/alipay/pushsdk/push/d/d;)V

    .line 832
    iget-object v0, p0, Lcom/alipay/pushsdk/push/p;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->k(Lcom/alipay/pushsdk/push/l;)Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    .line 833
    iget-object v2, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/l;->n()Lcom/alipay/pushsdk/push/d/d;

    move-result-object v2

    .line 832
    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/connection/k;->a(Lcom/alipay/pushsdk/push/d/d;)V

    .line 834
    iget-object v0, p0, Lcom/alipay/pushsdk/push/p;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->k(Lcom/alipay/pushsdk/push/l;)Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    .line 835
    iget-object v2, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/l;->o()Lcom/alipay/pushsdk/push/d/d;

    move-result-object v2

    .line 834
    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/connection/k;->a(Lcom/alipay/pushsdk/push/d/d;)V

    .line 836
    iget-object v0, p0, Lcom/alipay/pushsdk/push/p;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->k(Lcom/alipay/pushsdk/push/l;)Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    .line 837
    iget-object v2, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/l;->p()Lcom/alipay/pushsdk/push/d/d;

    move-result-object v2

    .line 836
    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/connection/k;->a(Lcom/alipay/pushsdk/push/d/d;)V

    .line 838
    iget-object v0, p0, Lcom/alipay/pushsdk/push/p;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->k(Lcom/alipay/pushsdk/push/l;)Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    .line 839
    iget-object v2, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/l;->q()Lcom/alipay/pushsdk/push/d/d;

    move-result-object v2

    .line 838
    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/push/connection/k;->a(Lcom/alipay/pushsdk/push/d/d;)V

    .line 846
    const/4 v0, 0x4

    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v2

    .line 847
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RegisterTask() registration will be sent! length="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/c/a;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 847
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 846
    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-static {v12}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 850
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RegisterTask() pushManager="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 851
    iget-object v3, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 850
    invoke-static {v12, v0, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_5
    iget-object v0, p0, Lcom/alipay/pushsdk/push/p;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->a(Lcom/alipay/pushsdk/push/c/a;)V

    .line 866
    :cond_6
    :goto_3
    return-void

    .line 748
    :catch_0
    move-exception v0

    .line 750
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 751
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 764
    :cond_7
    :try_start_2
    const-string/jumbo v0, "userId"

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 822
    :catch_1
    move-exception v0

    .line 824
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 825
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 774
    :cond_8
    if-eqz v3, :cond_0

    .line 776
    :try_start_3
    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 777
    const-string/jumbo v0, "alipayclient"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 855
    :cond_9
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Account registered already"

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
