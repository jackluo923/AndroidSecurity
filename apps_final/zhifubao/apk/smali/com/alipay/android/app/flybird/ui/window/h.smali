.class final Lcom/alipay/android/app/flybird/ui/window/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/h;->d:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/window/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/window/h;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/h;->d:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/h;->d:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/h;->d:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/h;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;

    return-void
.end method
