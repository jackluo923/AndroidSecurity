.class final Lcom/alipay/mobile/security/gesture/ui/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/a/c;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/c;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    const-string/jumbo v0, "UC-SECURITY-150515-02"

    const-string/jumbo v1, "safeskip"

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/c;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/a/a;->c(Lcom/alipay/mobile/security/gesture/ui/a/a;)Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/c;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/a/a;->c(Lcom/alipay/mobile/security/gesture/ui/a/a;)Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    move-result-object v0

    const-string/jumbo v1, "show_color_alert"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/a/c;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/a/a;->c(Lcom/alipay/mobile/security/gesture/ui/a/a;)Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/a/c;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-static {v2}, Lcom/alipay/mobile/security/gesture/ui/a/a;->c(Lcom/alipay/mobile/security/gesture/ui/a/a;)Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/c;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/a/a;->c(Lcom/alipay/mobile/security/gesture/ui/a/a;)Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureShutdownHelper"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
