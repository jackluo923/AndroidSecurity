.class public Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;
.super Ljava/lang/Object;
.source "GuideAnimationCreator.java"


# instance fields
.field private a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field private b:Landroid/view/View;

.field private c:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Landroid/view/View$OnClickListener;

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/view/View;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;",
            "Landroid/view/View;",
            "Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->f:Z

    .line 31
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->g:Z

    .line 35
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->k:Z

    .line 36
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->l:Z

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 41
    iput-object p2, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b:Landroid/view/View;

    .line 42
    iput-object p3, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->c:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 43
    iput-object p4, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->d:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->e:Ljava/util/List;

    .line 45
    iput-object p6, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->h:Landroid/view/View$OnClickListener;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->j:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method private static a(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;-><init>()V

    .line 305
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;

    .line 306
    iput-object p0, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->displayer:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;

    .line 307
    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    return-object v0
.end method

.method private a(ILjava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 276
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 277
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v1, Lcom/alipay/mobile/socialwidget/R$anim;->a:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 280
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 282
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 283
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/i;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/i;-><init>(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;

    move-result-object v0

    iput-object p1, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/socialwidget/R$drawable;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->c:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->e()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->e:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->Q:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialwidget/ui/RippleView;

    .line 133
    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->a()V

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->f:Z

    .line 135
    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/h;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/h;-><init>(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/RippleView;->a(Lcom/alipay/mobile/socialwidget/ui/RippleView$OnRippleCompleteListener;)V

    .line 144
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->l:Z

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->l:Z

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->D:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 291
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/alipay/mobile/socialwidget/R$string;->j:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->C:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    .line 293
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/alipay/mobile/socialwidget/R$string;->k:I

    :goto_2
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(I)V

    .line 294
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const-string/jumbo v1, "guideopen"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setTag(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialwidget/R$anim;->b:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 298
    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 299
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 300
    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    goto :goto_0

    .line 291
    :cond_1
    sget v1, Lcom/alipay/mobile/socialwidget/R$string;->c:I

    goto :goto_1

    .line 293
    :cond_2
    sget v1, Lcom/alipay/mobile/socialwidget/R$string;->d:I

    goto :goto_2
.end method

.method static synthetic f(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->g:Z

    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    move v1, v2

    :goto_0
    if-eq v1, v2, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v3, Lcom/alipay/mobile/socialwidget/R$string;->e:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(ILjava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->f()V

    return-void

    :pswitch_0
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->o:I

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v4, Lcom/alipay/mobile/socialwidget/R$string;->f:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/socialwidget/R$id;->g:I

    invoke-direct {p0, v1, v3, v4}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(ILjava/lang/String;I)V

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->p:I

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v4, Lcom/alipay/mobile/socialwidget/R$string;->g:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/socialwidget/R$id;->i:I

    invoke-direct {p0, v1, v3, v4}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(ILjava/lang/String;I)V

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->q:I

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v4, Lcom/alipay/mobile/socialwidget/R$string;->h:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/socialwidget/R$id;->k:I

    invoke-direct {p0, v1, v3, v4}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(ILjava/lang/String;I)V

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->r:I

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v4, Lcom/alipay/mobile/socialwidget/R$string;->i:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/socialwidget/R$id;->m:I

    invoke-direct {p0, v1, v3, v4}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(ILjava/lang/String;I)V

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->s:I

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v4, Lcom/alipay/mobile/socialwidget/R$string;->e:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/socialwidget/R$id;->n:I

    invoke-direct {p0, v1, v3, v4}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(ILjava/lang/String;I)V

    move v1, v2

    goto :goto_0

    :pswitch_1
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->k:I

    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->q:I

    goto :goto_0

    :pswitch_2
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->m:I

    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->r:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic h(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->f()V

    return-void
.end method

.method static synthetic i(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->f:Z

    return-void
.end method

.method static synthetic j(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->k:Z

    return-void
.end method

.method static synthetic k(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->f:Z

    return v0
.end method

.method static synthetic l(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->E:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCircleImageView;

    .line 53
    sget v1, Lcom/alipay/mobile/socialwidget/R$drawable;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCircleImageView;->setImageResource(I)V

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/socialwidget/R$id;->F:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    new-instance v2, Lcom/alipay/mobile/socialwidget/ui/a;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/socialwidget/ui/a;-><init>(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;Lcom/alipay/mobile/commonui/widget/APCircleImageView;)V

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;

    move-result-object v0

    .line 66
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->path:Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$drawable;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->c:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialwidget/R$anim;->a:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 70
    new-instance v2, Lcom/alipay/mobile/socialwidget/ui/c;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialwidget/ui/c;-><init>(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V

    .line 111
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 112
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->j:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/f;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/f;-><init>(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V

    .line 121
    const-wide/16 v2, 0x1770

    .line 116
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->j:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/g;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/g;-><init>(Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;)V

    .line 128
    const-wide/32 v2, 0x1d4c0

    .line 122
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->f:Z

    .line 228
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->k:Z

    if-nez v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->e()V

    .line 234
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->f:Z

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->g:Z

    .line 239
    return-void
.end method
