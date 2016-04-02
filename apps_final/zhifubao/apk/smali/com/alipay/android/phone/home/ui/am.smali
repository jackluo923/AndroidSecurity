.class final Lcom/alipay/android/phone/home/ui/am;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/al;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private final synthetic c:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/al;Lcom/alipay/mobile/commonui/widget/APImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/am;->a:Lcom/alipay/android/phone/home/ui/al;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/am;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object p3, p0, Lcom/alipay/android/phone/home/ui/am;->c:Landroid/graphics/drawable/Drawable;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/am;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/am;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    return-void
.end method
