.class public Lcom/alipay/mobile/common/misc/YearMonthPicker;
.super Landroid/widget/RelativeLayout;


# instance fields
.field protected final REP_DELAY:I

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field protected maxYear:I

.field protected minYear:I

.field protected monthDownBtn:Landroid/widget/Button;

.field protected monthEditText:Landroid/widget/TextView;

.field protected monthUpBtn:Landroid/widget/Button;

.field protected rptUpdateHandler:Landroid/os/Handler;

.field protected yearDownBtn:Landroid/widget/Button;

.field protected yearEditText:Landroid/widget/TextView;

.field protected yearUpBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->REP_DELAY:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->a:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->b:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->c:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->d:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->REP_DELAY:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->a:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->b:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->c:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->d:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->e:Z

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->yearMonthPicker:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$layout;->ext_year_month_picker_year_first:I

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$layout;->ext_year_month_picker:I

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

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

.method static synthetic access$000(Lcom/alipay/mobile/common/misc/YearMonthPicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->d:Z

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/misc/YearMonthPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->d:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/misc/YearMonthPicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->e:Z

    return v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/common/misc/YearMonthPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->e:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/misc/YearMonthPicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->b:Z

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/common/misc/YearMonthPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->b:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/misc/YearMonthPicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->c:Z

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/common/misc/YearMonthPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->c:Z

    return p1
.end method


# virtual methods
.method public decrement(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->decrementYear()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->decrementMonth()V

    goto :goto_0
.end method

.method protected decrementMonth()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    const/16 v0, 0xc

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected decrementYear()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->minYear:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->minYear:I

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public disableBeforeYear()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->a:Z

    iget v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->minYear:I

    iget v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->f:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->f:I

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->minYear:I

    return-void

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->minYear:I

    goto :goto_0
.end method

.method public enableBeforeYear()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->a:Z

    return-void
.end method

.method public getMonth()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getYear()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

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

.method protected increment(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->incrementYear()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->incrementMonth()V

    goto :goto_0
.end method

.method protected incrementMonth()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected incrementYear()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->maxYear:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->maxYear:I

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget v0, Lcom/alipay/mobile/ui/R$id;->year_up_btn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->yearUpBtn:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/ui/R$id;->year_down_btn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->yearDownBtn:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/ui/R$id;->year_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->month_up_btn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->monthUpBtn:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/ui/R$id;->month_down_btn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->monthDownBtn:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/ui/R$id;->month_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->yearUpBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2, v2}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->yearDownBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->monthUpBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->monthDownBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1, v1}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->setButtonAction(Landroid/widget/Button;ZZ)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->setDefaultYearLimit()V

    return-void
.end method

.method protected setButtonAction(Landroid/widget/Button;ZZ)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/misc/YearMonthPicker$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/alipay/mobile/common/misc/YearMonthPicker$1;-><init>(Lcom/alipay/mobile/common/misc/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/alipay/mobile/common/misc/YearMonthPicker$2;-><init>(Lcom/alipay/mobile/common/misc/YearMonthPicker;ZZ)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Lcom/alipay/mobile/common/misc/YearMonthPicker$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/misc/YearMonthPicker$3;-><init>(Lcom/alipay/mobile/common/misc/YearMonthPicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setCurrentDate()V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->setYearMonth(II)V

    return-void
.end method

.method protected setDefaultYearLimit()V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->f:I

    iget v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->f:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->minYear:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->maxYear:I

    return-void
.end method

.method public setMaxYear(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->maxYear:I

    return-void
.end method

.method public setMinYear(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->f:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->minYear:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->minYear:I

    goto :goto_0
.end method

.method public setYearMonth(II)V
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->maxYear:I

    iget v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->minYear:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->yearEditText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/YearMonthPicker;->monthEditText:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/alipay/mobile/common/misc/YearMonthPicker;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
