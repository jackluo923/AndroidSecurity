.class final Lcom/alipay/android/app/ui/quickpay/window/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/r;->d:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/window/r;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/ui/quickpay/window/r;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/r;->d:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/r;->d:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/r;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/r;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;

    return-void
.end method
