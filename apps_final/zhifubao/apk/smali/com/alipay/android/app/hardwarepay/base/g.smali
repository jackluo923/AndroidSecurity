.class final Lcom/alipay/android/app/hardwarepay/base/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/base/g;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/g;->a:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->c(Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
