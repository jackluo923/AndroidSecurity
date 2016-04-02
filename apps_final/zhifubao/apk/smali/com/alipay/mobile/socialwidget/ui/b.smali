.class final Lcom/alipay/mobile/socialwidget/ui/b;
.super Ljava/lang/Object;
.source "GuideAnimationCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/a;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APCircleImageView;

.field private final synthetic c:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/a;Lcom/alipay/mobile/commonui/widget/APCircleImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/b;->a:Lcom/alipay/mobile/socialwidget/ui/a;

    iput-object p2, p0, Lcom/alipay/mobile/socialwidget/ui/b;->b:Lcom/alipay/mobile/commonui/widget/APCircleImageView;

    iput-object p3, p0, Lcom/alipay/mobile/socialwidget/ui/b;->c:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/b;->b:Lcom/alipay/mobile/commonui/widget/APCircleImageView;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    return-void
.end method
