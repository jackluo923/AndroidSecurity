.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/t;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/t;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/t;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const-string/jumbo v3, "mini_bl_open_failed"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/t;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/bracelet/activity/r;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v2}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->i(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
