.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/s;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/s;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Z)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/s;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->g(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/s;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->g(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/s;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->e(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/s;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->e(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
