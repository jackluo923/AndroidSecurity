.class public Lcom/alipay/mobile/commonui/widget/APAnnouncementView;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# static fields
.field public static STYLE_COUNT_DOWN:I

.field public static STYLE_HIDE_AUTO:I

.field public static STYLE_HIDE_BY_CLICK:I

.field public static STYLE_HIDE_BY_CLICK_CLOSE:I

.field public static STYLE_HIDE_NONE:I

.field public static STYLE_JUMP_ENABLE:I


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:I

.field private d:Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:J

.field private i:I

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_NONE:I

    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_BY_CLICK_CLOSE:I

    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_AUTO:I

    const/16 v0, 0x8

    sput v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_BY_CLICK:I

    const/16 v0, 0x10

    sput v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_JUMP_ENABLE:I

    const/16 v0, 0x20

    sput v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_COUNT_DOWN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_BY_CLICK_CLOSE:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->i:I

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;-><init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$3;-><init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->l:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_BY_CLICK_CLOSE:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->i:I

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;-><init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$3;-><init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->l:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_BY_CLICK_CLOSE:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->i:I

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$2;-><init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$3;-><init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->l:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(II)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a()V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->setVisibility(I)V

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->i:I

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->c:I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setVisibility(I)V

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$4;-><init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_JUMP_ENABLE:I

    and-int/2addr v1, p1

    sget v2, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_JUMP_ENABLE:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setType(I)V

    :cond_0
    sget v1, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_BY_CLICK_CLOSE:I

    and-int/2addr v1, p1

    sget v2, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_BY_CLICK_CLOSE:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setType(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    new-instance v2, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$5;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView$5;-><init>(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v1, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_BY_CLICK:I

    and-int/2addr v1, p1

    sget v2, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_BY_CLICK:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setType(I)V

    :cond_2
    sget v1, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_AUTO:I

    and-int/2addr v1, p1

    sget v2, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_AUTO:I

    if-ne v1, v2, :cond_4

    if-gez p2, :cond_3

    move p2, v0

    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->j:Ljava/lang/Runnable;

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setMarqueeRepeatLimit(I)V

    sget v1, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_COUNT_DOWN:I

    and-int/2addr v1, p1

    sget v2, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_COUNT_DOWN:I

    if-ne v1, v2, :cond_7

    div-int/lit8 v1, p2, 0x64

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->e:Ljava/lang/String;

    const-string/jumbo v2, "#cdtime#"

    const-string/jumbo v3, "%03d"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->e:Ljava/lang/String;

    :goto_0
    if-lez p2, :cond_7

    iget-wide v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->h:J

    cmp-long v1, v1, v6

    if-gtz v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->h:J

    :cond_5
    iget-wide v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->h:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->h:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    sub-int v1, p2, v1

    if-gez v1, :cond_6

    move v1, v0

    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->e:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->k:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void

    :cond_8
    div-int/lit8 v1, p2, 0xa

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->e:Ljava/lang/String;

    const-string/jumbo v2, "#cdtime#"

    const-string/jumbo v3, "%02d"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->e:Ljava/lang/String;

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->e:Ljava/lang/String;

    const-string/jumbo v2, "#cdtime#"

    const-string/jumbo v3, "%d"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_announcement_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->content:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->right_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->announcement_bg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->d:Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->h:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->i:I

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->c:I

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/commonui/widget/APAnnouncementView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a(II)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onLayout(ZIIII)V

    sget v0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_BY_CLICK_CLOSE:I

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->c:I

    and-int/2addr v0, v1

    sget v1, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->STYLE_HIDE_BY_CLICK_CLOSE:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    sub-int v1, p5, p3

    int-to-float v1, v1

    sub-int v2, p5, p3

    int-to-float v2, v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v2, v1

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->right:I

    :cond_1
    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v3, v0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    const-class v2, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_2
    return-void
.end method

.method public setAnnouncement(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->e:Ljava/lang/String;

    return-void
.end method

.method public setAnnouncementType(III)V
    .locals 3

    const v1, -0x7a800

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a()V

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->announcement_bg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->postInvalidate()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->setVisibility(I)V

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->i:I

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->h:J

    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->l:Ljava/lang/Runnable;

    int-to-long v1, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a(II)V

    goto :goto_0
.end method

.method public setBackgroundColor(II)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v6, [I

    const v4, 0x101009e

    aput v4, v3, v5

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v6, [I

    const v4, 0x101009c

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v5, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public setBtnColor(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->g:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->a:Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APSelfDrawIconButton;->setColor(I)V

    return-void
.end method

.method public setCallBack(Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->d:Lcom/alipay/mobile/commonui/widget/APAnnouncementView$UserBehaviorCallBack;

    return-void
.end method

.method public setContentEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public setHoverTime(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->i:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->f:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APAnnouncementView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    return-void
.end method
