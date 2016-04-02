.class final Lcom/alipay/android/phone/home/ui/ak;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/aj;

.field private final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/aj;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ak;->a:Lcom/alipay/android/phone/home/ui/aj;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/ak;->b:Landroid/graphics/drawable/Drawable;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ak;->a:Lcom/alipay/android/phone/home/ui/aj;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/aj;->a(Lcom/alipay/android/phone/home/ui/aj;)Lcom/alipay/android/phone/home/ui/HomeFragment;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/home/ui/HomeFragment;->t:Landroid/view/View;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$8(Lcom/alipay/android/phone/home/ui/HomeFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/ak;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    return-void
.end method
