.class final Lcom/alipay/android/app/flybird/ui/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/i;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-boolean p2, p0, Lcom/alipay/android/app/flybird/ui/i;->a:Z

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/i;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/i;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/i;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/i;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-direct {v1}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/i;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/i;->c:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/i;->b:Ljava/lang/String;

    new-instance v4, Lcom/alipay/android/app/flybird/ui/j;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/flybird/ui/j;-><init>(Lcom/alipay/android/app/flybird/ui/i;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Landroid/content/Context;ILjava/lang/String;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;)Landroid/app/Dialog;

    goto :goto_0
.end method
