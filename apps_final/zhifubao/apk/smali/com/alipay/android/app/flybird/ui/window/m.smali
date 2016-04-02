.class final Lcom/alipay/android/app/flybird/ui/window/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/l;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/l;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/m;->a:Lcom/alipay/android/app/flybird/ui/window/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/m;->a:Lcom/alipay/android/app/flybird/ui/window/l;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/l;->c:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
