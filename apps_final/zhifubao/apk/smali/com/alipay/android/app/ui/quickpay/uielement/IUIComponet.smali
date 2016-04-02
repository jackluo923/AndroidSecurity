.class public abstract Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;
.super Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
        "<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract h()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract i()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/data/MarqueeElementData;",
            ">;"
        }
    .end annotation
.end method
