.class final Lcom/alipay/pushsdk/push/o;
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
    .line 876
    iput-object p1, p0, Lcom/alipay/pushsdk/push/o;->b:Lcom/alipay/pushsdk/push/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    iput-object p1, p0, Lcom/alipay/pushsdk/push/o;->a:Lcom/alipay/pushsdk/push/l;

    .line 878
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/pushsdk/push/l;B)V
    .locals 0

    .prologue
    .line 876
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/o;-><init>(Lcom/alipay/pushsdk/push/l;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    const/4 v4, 0x4

    .line 881
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "===== HeartBeatTask() Runnable====="

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/o;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 888
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/o;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/l;->j(Lcom/alipay/pushsdk/push/l;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/c/c;->a(I)Lcom/alipay/pushsdk/push/c/a;

    move-result-object v0

    .line 889
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/c/a;->a(I)V

    .line 890
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/c/a;->b(I)V

    .line 891
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 900
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v1

    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HeartBeatTask() heartBeat will be sent! length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/c/a;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 901
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 900
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_1
    iget-object v1, p0, Lcom/alipay/pushsdk/push/o;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/connection/k;->a(Lcom/alipay/pushsdk/push/c/a;)V

    .line 912
    :cond_2
    :goto_0
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 894
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 895
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_3
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 908
    invoke-static {}, Lcom/alipay/pushsdk/push/l;->B()Ljava/lang/String;

    move-result-object v0

    .line 909
    const-string/jumbo v1, "Account registered has not been done."

    .line 908
    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
