.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/g;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/g;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/g;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v2}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->m(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/h;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/h;-><init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/g;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/g;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->b(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/g;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->v(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
