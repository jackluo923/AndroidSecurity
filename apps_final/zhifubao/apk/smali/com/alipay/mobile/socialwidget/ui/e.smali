.class final Lcom/alipay/mobile/socialwidget/ui/e;
.super Ljava/lang/Object;
.source "GuideAnimationCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/e;->a:Lcom/alipay/mobile/socialwidget/ui/d;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/e;->a:Lcom/alipay/mobile/socialwidget/ui/d;

    iget-object v0, v0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->f(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/e;->a:Lcom/alipay/mobile/socialwidget/ui/d;

    iget-object v0, v0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->g(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V

    .line 97
    return-void
.end method
