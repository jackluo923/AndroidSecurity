.class final Lcom/alipay/android/app/ui/quickpay/window/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/widget/animation/DisplayRotate3D$onCompletedListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/bc;->c:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/bc;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/window/bc;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bc;->c:Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/bc;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/bc;->b:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->a(Lcom/alipay/android/app/ui/quickpay/window/UISubForm;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->b:Z
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
