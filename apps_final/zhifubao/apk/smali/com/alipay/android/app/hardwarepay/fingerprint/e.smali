.class final Lcom/alipay/android/app/hardwarepay/fingerprint/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/e;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
