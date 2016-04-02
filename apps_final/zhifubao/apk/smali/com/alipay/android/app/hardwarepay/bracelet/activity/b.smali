.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;->a:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;->b:I

    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const-string/jumbo v2, "mini_cannot_get_download_url"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->setResult(I)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/b;->c:Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->finish()V

    goto :goto_0
.end method
