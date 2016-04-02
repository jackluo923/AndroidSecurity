.class final Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

.field final synthetic b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->o(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->g(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->p(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v2}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->q(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v3, v3, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v3, v3, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v3}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->r(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->a(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->h(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->g(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->h(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->o(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/NoScrollListview;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/aa;->b:Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/y;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/activity/x;->a:Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;->g(Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity;)Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/activity/HardwareHandleActivity$b;->notifyDataSetChanged()V

    return-void
.end method
