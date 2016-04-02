.class final Lcom/alipay/android/app/display/windows/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/windows/WindowsManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/windows/WindowsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/h;->a:Lcom/alipay/android/app/display/windows/WindowsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "msp_alert_title"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/h;->a:Lcom/alipay/android/app/display/windows/WindowsManager;

    invoke-static {v1}, Lcom/alipay/android/app/display/windows/WindowsManager;->b(Lcom/alipay/android/app/display/windows/WindowsManager;)Lcom/alipay/android/app/display/windows/MspWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/display/windows/MspWindow;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "msp_allow_back_hint"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string/jumbo v1, "msp_btn_ok"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "mini_cancel"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/h;->a:Lcom/alipay/android/app/display/windows/WindowsManager;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/WindowsManager;->a(Lcom/alipay/android/app/display/windows/WindowsManager;)Lcom/alipay/android/app/display/windows/IContainer;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Exit:Lcom/alipay/android/app/display/event/EventType;

    invoke-virtual {v1}, Lcom/alipay/android/app/display/event/EventType;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->ClearInvalid:Lcom/alipay/android/app/display/event/EventType;

    invoke-virtual {v2}, Lcom/alipay/android/app/display/event/EventType;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alipay/android/app/display/windows/IContainer;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
