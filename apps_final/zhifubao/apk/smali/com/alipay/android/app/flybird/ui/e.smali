.class final Lcom/alipay/android/app/flybird/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-direct {v1}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->d()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/e;->a:Ljava/lang/String;

    new-instance v4, Lcom/alipay/android/app/flybird/ui/f;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/flybird/ui/f;-><init>(Lcom/alipay/android/app/flybird/ui/e;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Landroid/content/Context;ILjava/lang/String;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "flybird_bl_val_ok"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->a(Ljava/lang/String;II)V

    return-void
.end method
