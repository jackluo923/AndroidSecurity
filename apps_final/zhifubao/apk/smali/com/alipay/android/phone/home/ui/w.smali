.class final Lcom/alipay/android/phone/home/ui/w;
.super Ljava/lang/Object;
.source "HeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HeaderView;

.field private final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HeaderView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/w;->a:Lcom/alipay/android/phone/home/ui/HeaderView;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/w;->b:Landroid/graphics/drawable/Drawable;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/w;->a:Lcom/alipay/android/phone/home/ui/HeaderView;

    # getter for: Lcom/alipay/android/phone/home/ui/HeaderView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderView;->access$1(Lcom/alipay/android/phone/home/ui/HeaderView;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/w;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    return-void
.end method
