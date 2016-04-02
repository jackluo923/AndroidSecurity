.class final Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;)Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/c;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;)Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->c(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;)V

    :cond_0
    return-void
.end method
