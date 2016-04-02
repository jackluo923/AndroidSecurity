.class public Lcom/alipay/android/app/template/view/widget/TLabel;
.super Lcom/alipay/android/app/template/view/widget/TElement;
.source "TLabel.java"


# static fields
.field private static synthetic a:[I

.field static b:Ljava/lang/Boolean;

.field static c:Ljava/lang/Class;

.field static d:Ljava/lang/reflect/Constructor;

.field static p:Ljava/lang/reflect/Method;

.field private static synthetic s:[I


# instance fields
.field protected q:Ljava/lang/String;

.field protected r:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->b:Ljava/lang/Boolean;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->q:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    .line 84
    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TLabel;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TLabel;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 86
    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TLabel;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 87
    aget-object v1, v0, v4

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TLabel;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 88
    aget-object v1, v0, v3

    if-nez v1, :cond_2

    aget-object v1, v0, v4

    if-nez v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->genTextSelector([Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-boolean v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mFontSizeAdjust:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 331
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 332
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    .line 333
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 337
    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 338
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float v0, v1, v0

    .line 339
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private static synthetic d()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/view/OverflowType;->values()[Lcom/alipay/android/app/template/view/OverflowType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/template/view/OverflowType;->clip:Lcom/alipay/android/app/template/view/OverflowType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/OverflowType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/template/view/OverflowType;->ellipsis:Lcom/alipay/android/app/template/view/OverflowType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/OverflowType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/app/template/view/OverflowType;->normal:Lcom/alipay/android/app/template/view/OverflowType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/OverflowType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/android/app/template/view/OverflowType;->scroll:Lcom/alipay/android/app/template/view/OverflowType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/OverflowType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static synthetic e()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->s:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/view/DecorationType;->values()[Lcom/alipay/android/app/template/view/DecorationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/template/view/DecorationType;->line_through:Lcom/alipay/android/app/template/view/DecorationType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/DecorationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/template/view/DecorationType;->normal:Lcom/alipay/android/app/template/view/DecorationType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/DecorationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/app/template/view/DecorationType;->overline:Lcom/alipay/android/app/template/view/DecorationType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/DecorationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/android/app/template/view/DecorationType;->underline:Lcom/alipay/android/app/template/view/DecorationType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/DecorationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->s:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 157
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->marquee:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v1, :cond_1

    .line 158
    new-instance v0, Lcom/alipay/android/app/template/view/widget/MarqueeTextView;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/template/view/widget/MarqueeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    .line 182
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    invoke-static {v1}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v1

    int-to-float v1, v1

    .line 181
    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 185
    return-void

    .line 160
    :cond_1
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 162
    :try_start_0
    const-string/jumbo v0, "com.alipay.mobile.commonui.widget.APTextView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 163
    sput-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->c:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->d:Ljava/lang/reflect/Constructor;

    .line 164
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->c:Ljava/lang/Class;

    const-string/jumbo v1, "setSupportEmoji"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->p:Ljava/lang/reflect/Method;

    .line 165
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->b:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :cond_2
    :goto_1
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    :try_start_1
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->d:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/view/widget/TLabel;->b:Ljava/lang/Boolean;

    goto :goto_1

    .line 177
    :cond_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    goto/16 :goto_0
.end method

.method final a(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Landroid/app/Activity;Z)V

    .line 52
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_2
    invoke-direct {p0, p2}, Lcom/alipay/android/app/template/view/widget/TLabel;->b(Z)V

    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    if-eqz v0, :cond_3

    .line 61
    invoke-static {}, Lcom/alipay/android/app/template/view/widget/TLabel;->d()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/OverflowType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxLines:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxLines:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 75
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x3

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->destroy()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    .line 352
    return-void
.end method

.method public extendParentProperty(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->extendParentProperty(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 190
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    .line 201
    :cond_2
    return-void
.end method

.method public fillElementView(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 209
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->fillElementView(Landroid/app/Activity;)V

    .line 210
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TLabel;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->label:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->p:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->a:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v1, :cond_7

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TLabel;->b()I

    move-result v0

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 218
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    const-string/jumbo v1, "nowrap"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 220
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    if-eqz v0, :cond_2

    .line 224
    invoke-static {}, Lcom/alipay/android/app/template/view/widget/TLabel;->e()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/DecorationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 230
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->fontWeight:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-ne v0, v1, :cond_8

    .line 267
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    .line 268
    const/high16 v1, 0x41800000    # 16.0f

    sget v2, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    mul-float/2addr v1, v2

    .line 267
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 273
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->lineHeight:I

    .line 274
    if-lez v0, :cond_4

    .line 275
    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v1

    .line 276
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_9

    .line 277
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 278
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v1, v2, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 279
    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v0

    .line 280
    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 284
    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 287
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->marquee:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v1, :cond_5

    .line 288
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 289
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 290
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 291
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 292
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 293
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 294
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 297
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->isOppoDevice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 298
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    const-string/jumbo v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    :cond_6
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TLabel;->c()V

    .line 302
    return-void

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->parseGravity(Lcom/alipay/android/app/template/view/AlignType;)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    goto/16 :goto_0

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_1

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_1

    .line 270
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    .line 271
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    invoke-static {v1}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v1

    int-to-float v1, v1

    .line 270
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_2

    .line 282
    :cond_9
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->lineHeight:I

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v0

    goto/16 :goto_3

    .line 224
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getInnerText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TLabel;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/alipay/android/app/template/view/widget/TLabel;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string/jumbo v1, "[emoji]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 101
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 102
    sget-object v2, Lcom/alipay/android/app/template/view/widget/TLabel;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    :try_start_0
    sget-object v2, Lcom/alipay/android/app/template/view/widget/TLabel;->p:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    const-string/jumbo v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    :goto_1
    return-object v0

    .line 105
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 113
    :cond_1
    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    invoke-static {v1, v0}, Lcom/alipay/tag/html/Html;->fromHtml(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_1

    .line 116
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 307
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setInnerText"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getInnerText"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 310
    const-string/jumbo v2, "innerText"

    invoke-virtual {p1, p2, v2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 311
    return-void
.end method

.method public setInnerText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 314
    const-string/jumbo v0, "undefined"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/alipay/android/app/template/view/widget/TLabel;->c()V

    .line 320
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/app/template/view/widget/TLabel;->b(Z)V

    .line 321
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    goto :goto_0

    .line 324
    :cond_1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    const-string/jumbo v0, "undefined"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->setValue(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->value:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->input:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->password:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->payword:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v1, :cond_2

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplatePasswordService;->clear(I)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {v1, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 141
    :cond_4
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TLabel;->q:Ljava/lang/String;

    goto :goto_0
.end method
