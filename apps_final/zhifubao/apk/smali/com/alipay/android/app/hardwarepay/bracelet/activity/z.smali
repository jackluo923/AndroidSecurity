.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

.field final synthetic b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/z;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/z;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/z;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->f(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/z;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/z;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/z;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->f(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/z;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->e(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/z;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->f(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/z;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->e(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->notifyDataSetChanged()V

    return-void
.end method
