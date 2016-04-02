.class final Lcom/alipay/android/app/hardwarepay/fingerprint/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    const-string/jumbo v2, "mini_add_fp"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    const-string/jumbo v3, "alipay_cancel"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/hardwarepay/fingerprint/h;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/h;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/g;)V

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v4, v4, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    const-string/jumbo v5, "mini_to_open"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/android/app/hardwarepay/fingerprint/i;

    invoke-direct {v5, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/i;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/g;)V

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/k;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
