.class public Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->b:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->a:Landroid/view/View;

    return-object v0
.end method

.method public final b()Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;->b:Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    return-object v0
.end method
