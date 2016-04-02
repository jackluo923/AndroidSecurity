.class final Lcom/alipay/android/app/hardwarepay/bracelet/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/p;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/p;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/p;->b:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/p;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/p;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/p;->b:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/p;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callbackWhenFailed(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
