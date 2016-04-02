.class final Lcom/alipay/mobile/socialwidget/ui/h;
.super Ljava/lang/Object;
.source "GuideAnimationCreator.java"

# interfaces
.implements Lcom/alipay/mobile/socialwidget/ui/RippleView$OnRippleCompleteListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/h;->a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/socialwidget/ui/RippleView;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/h;->a:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->k(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->a()V

    goto :goto_0
.end method
