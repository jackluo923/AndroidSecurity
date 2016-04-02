.class public Lcom/alipay/android/app/template/YearMonthPicker;
.super Landroid/widget/RelativeLayout;
.source "YearMonthPicker.java"


# instance fields
.field protected a:Landroid/widget/Button;

.field protected b:Landroid/widget/Button;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/Button;

.field protected f:Landroid/widget/Button;

.field protected g:I

.field protected h:I

.field protected final i:I

.field protected j:Landroid/os/Handler;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->i:I

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->j:Landroid/os/Handler;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->k:Z

    .line 39
    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->l:Z

    .line 40
    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->m:Z

    .line 41
    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->n:Z

    .line 42
    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->o:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->i:I

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->j:Landroid/os/Handler;

    .line 37
    iput-boolean v2, p0, Lcom/alipay/android/app/template/YearMonthPicker;->k:Z

    .line 39
    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->l:Z

    .line 40
    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->m:Z

    .line 41
    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->n:Z

    .line 42
    iput-boolean v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->o:Z

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "template_year_month_picker"

    invoke-static {p1, v1}, Lcom/alipay/android/app/template/ResUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    const/16 v1, 0x9

    if-le p0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/widget/Button;ZZ)V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/alipay/android/app/template/YearMonthPicker$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/alipay/android/app/template/YearMonthPicker$1;-><init>(Lcom/alipay/android/app/template/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v0, Lcom/alipay/android/app/template/YearMonthPicker$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/alipay/android/app/template/YearMonthPicker$2;-><init>(Lcom/alipay/android/app/template/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    new-instance v0, Lcom/alipay/android/app/template/YearMonthPicker$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/YearMonthPicker$3;-><init>(Lcom/alipay/android/app/template/YearMonthPicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/YearMonthPicker;Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/YearMonthPicker;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/template/YearMonthPicker;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->o:Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/template/YearMonthPicker;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/app/template/YearMonthPicker;Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->l:Z

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/app/template/YearMonthPicker;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/template/YearMonthPicker;Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->m:Z

    return-void
.end method

.method static synthetic d(Lcom/alipay/android/app/template/YearMonthPicker;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->m:Z

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    .line 217
    iget v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->g:I

    if-le v0, v1, :cond_0

    .line 218
    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->h:I

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    return-void
.end method

.method protected final a(Z)V
    .locals 0

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->a()V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->b()V

    goto :goto_0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 226
    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 247
    add-int/lit8 v0, v0, -0x1

    .line 248
    iget v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->h:I

    if-ge v0, v1, :cond_0

    .line 249
    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->g:I

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 256
    add-int/lit8 v0, v0, -0x1

    .line 257
    if-gtz v0, :cond_0

    .line 258
    const/16 v0, 0xc

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/android/app/template/YearMonthPicker;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method public decrement(Z)V
    .locals 0

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->c()V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->d()V

    goto :goto_0
.end method

.method public disableBeforeYear()V
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->k:Z

    .line 108
    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->h:I

    iget v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->p:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->p:I

    :goto_0
    iput v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->h:I

    .line 109
    return-void

    .line 108
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->h:I

    goto :goto_0
.end method

.method public enableBeforeYear()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->k:Z

    .line 104
    return-void
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMonthStr(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    if-nez p1, :cond_0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_0
    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 59
    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "year_up_btn"

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->a:Landroid/widget/Button;

    .line 60
    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "year_down_btn"

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->b:Landroid/widget/Button;

    .line 61
    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "year_text"

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->c:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "month_up_btn"

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->e:Landroid/widget/Button;

    .line 64
    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "month_down_btn"

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->f:Landroid/widget/Button;

    .line 65
    invoke-virtual {p0}, Lcom/alipay/android/app/template/YearMonthPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "month_text"

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->d:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->a:Landroid/widget/Button;

    invoke-direct {p0, v0, v3, v3}, Lcom/alipay/android/app/template/YearMonthPicker;->a(Landroid/widget/Button;ZZ)V

    .line 68
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->b:Landroid/widget/Button;

    invoke-direct {p0, v0, v3, v2}, Lcom/alipay/android/app/template/YearMonthPicker;->a(Landroid/widget/Button;ZZ)V

    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->e:Landroid/widget/Button;

    invoke-direct {p0, v0, v2, v3}, Lcom/alipay/android/app/template/YearMonthPicker;->a(Landroid/widget/Button;ZZ)V

    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->f:Landroid/widget/Button;

    invoke-direct {p0, v0, v2, v2}, Lcom/alipay/android/app/template/YearMonthPicker;->a(Landroid/widget/Button;ZZ)V

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->p:I

    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->p:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    add-int/lit8 v1, v0, -0x64

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->h:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->g:I

    .line 74
    return-void
.end method

.method public setCurrentDate()V
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 92
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/template/YearMonthPicker;->setYearMonth(II)V

    .line 95
    return-void
.end method

.method public setMaxYear(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->g:I

    .line 121
    return-void
.end method

.method public setMinYear(I)V
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->k:Z

    if-nez v0, :cond_0

    .line 113
    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->p:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->h:I

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iput p1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->h:I

    goto :goto_0
.end method

.method public setYearMonth(II)V
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->g:I

    iget v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->h:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/alipay/android/app/template/YearMonthPicker;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/android/app/template/YearMonthPicker;->d:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/alipay/android/app/template/YearMonthPicker;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method
