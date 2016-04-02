.class final Lcom/alipay/mobile/security/gesture/ui/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/a/a;

.field private final synthetic b:Lcom/alipay/mobilesecurity/biz/gw/service/gestureclose/GesturecloseManagerFacade;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/a/a;Lcom/alipay/mobilesecurity/biz/gw/service/gestureclose/GesturecloseManagerFacade;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/a/b;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/a/b;->b:Lcom/alipay/mobilesecurity/biz/gw/service/gestureclose/GesturecloseManagerFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureShutdownHelper"

    const-string/jumbo v2, "sendRpc"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/b;->b:Lcom/alipay/mobilesecurity/biz/gw/service/gestureclose/GesturecloseManagerFacade;

    invoke-interface {v0}, Lcom/alipay/mobilesecurity/biz/gw/service/gestureclose/GesturecloseManagerFacade;->getGestureServiceShutdownStatus()Lcom/alipay/mobilesecurity/core/model/gestureclose/GesturecloseRes;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alipay/mobilesecurity/core/model/gestureclose/GesturecloseRes;->success:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/a/b;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/a/a;->a(Lcom/alipay/mobile/security/gesture/ui/a/a;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/a/b;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/a/a;->b(Lcom/alipay/mobile/security/gesture/ui/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    iget-boolean v2, v0, Lcom/alipay/mobilesecurity/core/model/gestureclose/GesturecloseRes;->shutdown:Z

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/a/b;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/gestureclose/GesturecloseRes;->msg:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/gesture/ui/a/a;->a(Lcom/alipay/mobile/security/gesture/ui/a/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/b;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/a/a;->c(Lcom/alipay/mobile/security/gesture/ui/a/a;)Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    move-result-object v0

    const-string/jumbo v1, "show_color_alert"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "isShutDown"

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/a/b;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-static {v3}, Lcom/alipay/mobile/security/gesture/ui/a/a;->b(Lcom/alipay/mobile/security/gesture/ui/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "shutdownMsg"

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/a/b;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-static {v2}, Lcom/alipay/mobile/security/gesture/ui/a/a;->d(Lcom/alipay/mobile/security/gesture/ui/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureShutdownHelper"

    const-string/jumbo v2, "response is null or not success"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureShutdownHelper"

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
