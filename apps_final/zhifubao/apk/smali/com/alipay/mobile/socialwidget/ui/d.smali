.class final Lcom/alipay/mobile/socialwidget/ui/d;
.super Ljava/lang/Object;
.source "GuideAnimationCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->e(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->e(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->e(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x4

    if-lt v1, v0, :cond_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->d(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/e;-><init>(Lcom/alipay/mobile/socialwidget/ui/d;)V

    .line 98
    const-wide/16 v2, 0xfa0

    .line 92
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    :goto_1
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->e(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;Ljava/lang/String;)V

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->o:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$string;->f:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$id;->g:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;ILjava/lang/String;I)V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->p:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$string;->g:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$id;->i:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;ILjava/lang/String;I)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->q:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$string;->h:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$id;->k:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;ILjava/lang/String;I)V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->r:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$string;->i:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$id;->m:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;ILjava/lang/String;I)V

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->s:I

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$string;->e:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$id;->n:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;ILjava/lang/String;I)V

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/d;->a:Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/c;->a(Lcom/alipay/mobile/socialwidget/ui/c;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->h(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V

    goto/16 :goto_1
.end method
