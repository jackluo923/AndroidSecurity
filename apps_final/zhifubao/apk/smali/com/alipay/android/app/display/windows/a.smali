.class final Lcom/alipay/android/app/display/windows/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/alipay/android/app/display/windows/MspWindow;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/windows/MspWindow;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/a;->b:Lcom/alipay/android/app/display/windows/MspWindow;

    iput-object p2, p0, Lcom/alipay/android/app/display/windows/a;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v0, "msp_error_title_default"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/a;->a:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/alipay/android/app/exception/FailOperatingException;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/a;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-boolean v4, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/android/app/display/windows/a;->a:Ljava/lang/Exception;

    instance-of v4, v4, Lcom/alipay/android/app/exception/AppErrorException;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/a;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    sget-boolean v5, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    const-string/jumbo v0, "msp_debug_app_error"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string/jumbo v0, "msp_btn_ok"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/a;->b:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/script/IWindowScriptable;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Exit:Lcom/alipay/android/app/display/event/EventType;

    invoke-virtual {v1}, Lcom/alipay/android/app/display/event/EventType;->a()Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    move-object v7, v2

    invoke-interface/range {v0 .. v7}, Lcom/alipay/android/app/script/IWindowScriptable;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v4, :cond_2

    const-string/jumbo v0, "msp_app_error"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x8

    invoke-static {v0, v4}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method
