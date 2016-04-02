.class public Lcom/google/android/gms/internal/cg;
.super Lcom/google/android/gms/internal/co$a;


# static fields
.field private static final od:I


# instance fields
.field private lL:Lcom/google/android/gms/internal/ey;

.field private final oe:Landroid/app/Activity;

.field private of:Lcom/google/android/gms/internal/ci;

.field private og:Lcom/google/android/gms/internal/ck;

.field private oh:Lcom/google/android/gms/internal/cg$c;

.field private oi:Lcom/google/android/gms/internal/cl;

.field private oj:Z

.field private ok:Landroid/widget/FrameLayout;

.field private ol:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private om:Z

.field private on:Z

.field private oo:Z

.field private op:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/cg;->od:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/co$a;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cg;->om:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cg;->on:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cg;->oo:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    return-void
.end method

.method private static a(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ci;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    iget-object v2, p1, Lcom/google/android/gms/internal/ci;->kO:Lcom/google/android/gms/internal/ew;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ew;->sw:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ci;->a(Landroid/content/Intent;Lcom/google/android/gms/internal/ci;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private aO()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cg;->on:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cg;->on:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->op:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oh:Lcom/google/android/gms/internal/cg$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ey;->q(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oh:Lcom/google/android/gms/internal/cg$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/cg$c;->os:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    iget-object v2, p0, Lcom/google/android/gms/internal/cg;->oh:Lcom/google/android/gms/internal/cg$c;

    iget v2, v2, Lcom/google/android/gms/internal/cg$c;->index:I

    iget-object v3, p0, Lcom/google/android/gms/internal/cg;->oh:Lcom/google/android/gms/internal/cg$c;

    iget-object v3, v3, Lcom/google/android/gms/internal/cg$c;->or:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->ov:Lcom/google/android/gms/internal/cj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->ov:Lcom/google/android/gms/internal/cj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cj;->U()V

    goto :goto_0
.end method

.method private k(Z)V
    .locals 13

    const/16 v3, 0x400

    const/4 v12, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cg;->oj:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/cg;->oo:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v1, v1, Lcom/google/android/gms/internal/ci;->oF:Lcom/google/android/gms/internal/w;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/w;->lb:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget v1, v1, Lcom/google/android/gms/internal/ci;->orientation:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cg;->setRequestedOrientation(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_3

    const-string v1, "Enabling hardware acceleration on the AdActivity window."

    invoke-static {v1}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->a(Landroid/view/Window;)V

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/cg$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v3, v3, Lcom/google/android/gms/internal/ci;->oE:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cg$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->op:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cg;->oo:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->op:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->op:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cg;->N()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->ow:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ez;->ce()Z

    move-result v3

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v1, v1, Lcom/google/android/gms/internal/ci;->ow:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ey;->Q()Lcom/google/android/gms/internal/am;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v5, v5, Lcom/google/android/gms/internal/ci;->kO:Lcom/google/android/gms/internal/ew;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ey;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/ew;)Lcom/google/android/gms/internal/ey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v8, v0, Lcom/google/android/gms/internal/ci;->ox:Lcom/google/android/gms/internal/bb;

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v9, v0, Lcom/google/android/gms/internal/ci;->oB:Lcom/google/android/gms/internal/cm;

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v11, v0, Lcom/google/android/gms/internal/ci;->oD:Lcom/google/android/gms/internal/be;

    move-object v6, v4

    move-object v7, v4

    move v10, v2

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/cj;Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/cm;ZLcom/google/android/gms/internal/be;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/cg$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cg$1;-><init>(Lcom/google/android/gms/internal/cg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/ez$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->nZ:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v1, v1, Lcom/google/android/gms/internal/ci;->nZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ey;->loadUrl(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/cg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cg;->oo:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    sget v1, Lcom/google/android/gms/internal/cg;->od:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ey;->setBackgroundColor(I)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->op:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0, v1, v12, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bU()V

    :cond_6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/cg;->i(Z)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->op:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/android/gms/internal/cg;->od:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->oA:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v6, v0, Lcom/google/android/gms/internal/ci;->oy:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v7, v0, Lcom/google/android/gms/internal/ci;->oA:Ljava/lang/String;

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/ey;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/cg$a;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cg$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->ow:Lcom/google/android/gms/internal/ey;

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ey;->setContext(Landroid/content/Context;)V

    goto :goto_1
.end method


# virtual methods
.method public N()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cg;->oj:Z

    return-void
.end method

.method public a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->ok:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->ok:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->ok:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->ok:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cg;->N()V

    iput-object p2, p0, Lcom/google/android/gms/internal/cg;->ol:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public aL()Lcom/google/android/gms/internal/ck;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->og:Lcom/google/android/gms/internal/ck;

    return-object v0
.end method

.method public aM()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget v0, v0, Lcom/google/android/gms/internal/ci;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cg;->setRequestedOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->ok:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->op:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cg;->N()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->ok:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/internal/cg;->ok:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->ol:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->ol:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/internal/cg;->ol:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    return-void
.end method

.method public aN()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->op:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->oi:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cg;->i(Z)V

    return-void
.end method

.method public b(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->og:Lcom/google/android/gms/internal/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->og:Lcom/google/android/gms/internal/ck;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/cg;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ck;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public c(IIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->og:Lcom/google/android/gms/internal/ck;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ck;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ck;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->og:Lcom/google/android/gms/internal/ck;

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->op:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->og:Lcom/google/android/gms/internal/ck;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/cg;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ez;->r(Z)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public i(Z)V
    .locals 4

    const/4 v3, -0x2

    if-eqz p1, :cond_0

    const/16 v0, 0x32

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/cl;

    iget-object v2, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/cl;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/cg;->oi:Lcom/google/android/gms/internal/cl;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_1

    const/16 v0, 0xb

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oi:Lcom/google/android/gms/internal/cl;

    iget-object v2, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ci;->oz:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cl;->j(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->op:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/cg;->oi:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_1
.end method

.method public j(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oi:Lcom/google/android/gms/internal/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oi:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cl;->j(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cg;->om:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ci;->a(Landroid/content/Intent;)Lcom/google/android/gms/internal/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->oF:Lcom/google/android/gms/internal/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->oF:Lcom/google/android/gms/internal/w;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/w;->kZ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cg;->oo:Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/cg$a;

    const-string v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cg$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/cg$a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cg;->oo:Z

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->ov:Lcom/google/android/gms/internal/cj;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->ov:Lcom/google/android/gms/internal/cj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cj;->V()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget v0, v0, Lcom/google/android/gms/internal/ci;->oC:I

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->ou:Lcom/google/android/gms/internal/u;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v0, v0, Lcom/google/android/gms/internal/ci;->ou:Lcom/google/android/gms/internal/u;

    invoke-interface {v0}, Lcom/google/android/gms/internal/u;->onAdClicked()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget v0, v0, Lcom/google/android/gms/internal/ci;->oC:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/cg$a;

    const-string v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cg$a;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cg;->k(Z)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/cg$c;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v1, v1, Lcom/google/android/gms/internal/ci;->ow:Lcom/google/android/gms/internal/ey;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cg$c;-><init>(Lcom/google/android/gms/internal/ey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->oh:Lcom/google/android/gms/internal/cg$c;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cg;->k(Z)V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cg;->k(Z)V

    goto :goto_1

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cg;->om:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v1, v1, Lcom/google/android/gms/internal/ci;->ot:Lcom/google/android/gms/internal/cf;

    iget-object v2, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget-object v2, v2, Lcom/google/android/gms/internal/ci;->oB:Lcom/google/android/gms/internal/cm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/cd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/internal/cm;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Lcom/google/android/gms/internal/cg$a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->og:Lcom/google/android/gms/internal/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->og:Lcom/google/android/gms/internal/ck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ck;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->op:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cg;->aO()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->og:Lcom/google/android/gms/internal/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->og:Lcom/google/android/gms/internal/ck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ck;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cg;->aM()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oh:Lcom/google/android/gms/internal/cg$c;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Landroid/webkit/WebView;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/cg;->aO()V

    return-void
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->of:Lcom/google/android/gms/internal/ci;

    iget v0, v0, Lcom/google/android/gms/internal/ci;->oC:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cg;->om:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->lL:Lcom/google/android/gms/internal/ey;

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->b(Landroid/webkit/WebView;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cg;->om:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/cg;->om:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cg;->aO()V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->oe:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
