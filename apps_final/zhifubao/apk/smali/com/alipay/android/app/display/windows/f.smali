.class final Lcom/alipay/android/app/display/windows/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/windows/UIWindow;

.field final synthetic b:Lcom/alipay/android/app/data/Orientation;

.field final synthetic c:Lcom/alipay/android/app/display/windows/WindowsManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/windows/WindowsManager;Lcom/alipay/android/app/display/windows/UIWindow;Lcom/alipay/android/app/data/Orientation;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/f;->c:Lcom/alipay/android/app/display/windows/WindowsManager;

    iput-object p2, p0, Lcom/alipay/android/app/display/windows/f;->a:Lcom/alipay/android/app/display/windows/UIWindow;

    iput-object p3, p0, Lcom/alipay/android/app/display/windows/f;->b:Lcom/alipay/android/app/data/Orientation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/f;->c:Lcom/alipay/android/app/display/windows/WindowsManager;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/WindowsManager;->a(Lcom/alipay/android/app/display/windows/WindowsManager;)Lcom/alipay/android/app/display/windows/IContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/f;->c:Lcom/alipay/android/app/display/windows/WindowsManager;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/WindowsManager;->a(Lcom/alipay/android/app/display/windows/WindowsManager;)Lcom/alipay/android/app/display/windows/IContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/f;->a:Lcom/alipay/android/app/display/windows/UIWindow;

    iget-object v2, p0, Lcom/alipay/android/app/display/windows/f;->b:Lcom/alipay/android/app/data/Orientation;

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/display/windows/IContainer;->a(Lcom/alipay/android/app/display/windows/UIWindow;Lcom/alipay/android/app/data/Orientation;)V

    :cond_0
    return-void
.end method
