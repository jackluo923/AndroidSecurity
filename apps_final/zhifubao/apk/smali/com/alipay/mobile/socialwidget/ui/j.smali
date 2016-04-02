.class final Lcom/alipay/mobile/socialwidget/ui/j;
.super Ljava/lang/Object;
.source "GuideAnimationCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/i;

.field private final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/i;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/j;->a:Lcom/alipay/mobile/socialwidget/ui/i;

    iput-object p2, p0, Lcom/alipay/mobile/socialwidget/ui/j;->b:Landroid/graphics/drawable/Drawable;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/j;)Lcom/alipay/mobile/socialwidget/ui/i;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/j;->a:Lcom/alipay/mobile/socialwidget/ui/i;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/j;->a:Lcom/alipay/mobile/socialwidget/ui/i;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/i;->a(Lcom/alipay/mobile/socialwidget/ui/i;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/j;->a:Lcom/alipay/mobile/socialwidget/ui/i;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/i;->a(Lcom/alipay/mobile/socialwidget/ui/i;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->l(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    .line 161
    packed-switch v5, :pswitch_data_0

    move v1, v2

    move v3, v2

    move v4, v2

    move v0, v2

    .line 187
    :goto_1
    iget-object v6, p0, Lcom/alipay/mobile/socialwidget/ui/j;->a:Lcom/alipay/mobile/socialwidget/ui/i;

    invoke-static {v6}, Lcom/alipay/mobile/socialwidget/ui/i;->a(Lcom/alipay/mobile/socialwidget/ui/i;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->m(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCircleImageView;

    .line 188
    iget-object v6, p0, Lcom/alipay/mobile/socialwidget/ui/j;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/j;->a:Lcom/alipay/mobile/socialwidget/ui/i;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/i;->a(Lcom/alipay/mobile/socialwidget/ui/i;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->m(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/j;->a:Lcom/alipay/mobile/socialwidget/ui/i;

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/i;->a(Lcom/alipay/mobile/socialwidget/ui/i;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/socialwidget/R$anim;->a:I

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 192
    iget-object v4, p0, Lcom/alipay/mobile/socialwidget/ui/j;->a:Lcom/alipay/mobile/socialwidget/ui/i;

    invoke-static {v4}, Lcom/alipay/mobile/socialwidget/ui/i;->a(Lcom/alipay/mobile/socialwidget/ui/i;)Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->e(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_1

    const/4 v4, 0x4

    if-lt v5, v4, :cond_2

    .line 194
    :cond_1
    new-instance v4, Lcom/alipay/mobile/socialwidget/ui/k;

    invoke-direct {v4, p0, v3, v1}, Lcom/alipay/mobile/socialwidget/ui/k;-><init>(Lcom/alipay/mobile/socialwidget/ui/j;II)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 215
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 216
    invoke-virtual {v2}, Landroid/view/animation/Animation;->start()V

    goto :goto_0

    .line 163
    :pswitch_0
    sget v4, Lcom/alipay/mobile/socialwidget/R$id;->f:I

    .line 164
    sget v3, Lcom/alipay/mobile/socialwidget/R$id;->g:I

    .line 165
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->q:I

    .line 166
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->k:I

    move v7, v0

    move v0, v4

    move v4, v3

    move v3, v1

    move v1, v7

    .line 167
    goto :goto_1

    .line 169
    :pswitch_1
    sget v4, Lcom/alipay/mobile/socialwidget/R$id;->h:I

    .line 170
    sget v3, Lcom/alipay/mobile/socialwidget/R$id;->i:I

    .line 171
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->q:I

    .line 172
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->k:I

    move v7, v0

    move v0, v4

    move v4, v3

    move v3, v1

    move v1, v7

    .line 173
    goto :goto_1

    .line 175
    :pswitch_2
    sget v4, Lcom/alipay/mobile/socialwidget/R$id;->j:I

    .line 176
    sget v3, Lcom/alipay/mobile/socialwidget/R$id;->k:I

    .line 177
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->r:I

    .line 178
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->m:I

    move v7, v0

    move v0, v4

    move v4, v3

    move v3, v1

    move v1, v7

    .line 179
    goto/16 :goto_1

    .line 181
    :pswitch_3
    sget v4, Lcom/alipay/mobile/socialwidget/R$id;->l:I

    .line 182
    sget v3, Lcom/alipay/mobile/socialwidget/R$id;->m:I

    .line 183
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->s:I

    .line 184
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->n:I

    move v7, v0

    move v0, v4

    move v4, v3

    move v3, v1

    move v1, v7

    goto/16 :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
