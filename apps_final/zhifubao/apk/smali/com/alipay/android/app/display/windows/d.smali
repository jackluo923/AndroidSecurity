.class final Lcom/alipay/android/app/display/windows/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/windows/MspWindow;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/windows/MspWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/d;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/d;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/script/IWindowScriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/d;->a:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/display/windows/MspWindow;)Lcom/alipay/android/app/script/IWindowScriptable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/app/script/IWindowScriptable;->loading(I)Lcom/alipay/android/app/script/ILoadingScriptable;

    :cond_0
    return-void
.end method
