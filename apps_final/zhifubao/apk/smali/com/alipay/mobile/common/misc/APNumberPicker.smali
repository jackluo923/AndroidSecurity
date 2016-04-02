.class public Lcom/alipay/mobile/common/misc/APNumberPicker;
.super Landroid/widget/RelativeLayout;


# instance fields
.field protected final REP_DELAY:I

.field private a:Z

.field private b:Z

.field private c:I

.field private d:Lcom/alipay/mobile/common/misc/APNumberPicker$NumberDisplayRenderer;

.field protected downBtn:Landroid/widget/Button;

.field protected maxNumber:I

.field protected minNumber:I

.field protected rptUpdateHandler:Landroid/os/Handler;

.field protected showText:Landroid/widget/TextView;

.field protected upBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->maxNumber:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->minNumber:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->REP_DELAY:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->rptUpdateHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->a:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->b:Z

    iput v1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    new-instance v0, Lcom/alipay/mobile/common/misc/APNumberPicker$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/misc/APNumberPicker$1;-><init>(Lcom/alipay/mobile/common/misc/APNumberPicker;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->d:Lcom/alipay/mobile/common/misc/APNumberPicker$NumberDisplayRenderer;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/misc/APNumberPicker;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->maxNumber:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->minNumber:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->REP_DELAY:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->rptUpdateHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->a:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->b:Z

    iput v1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    new-instance v0, Lcom/alipay/mobile/common/misc/APNumberPicker$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/misc/APNumberPicker$1;-><init>(Lcom/alipay/mobile/common/misc/APNumberPicker;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->d:Lcom/alipay/mobile/common/misc/APNumberPicker$NumberDisplayRenderer;

    if-ge p3, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p3, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->maxNumber:I

    iput p2, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->minNumber:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->maxNumber:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->minNumber:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->REP_DELAY:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->rptUpdateHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->a:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->b:Z

    iput v1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    new-instance v0, Lcom/alipay/mobile/common/misc/APNumberPicker$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/misc/APNumberPicker$1;-><init>(Lcom/alipay/mobile/common/misc/APNumberPicker;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->d:Lcom/alipay/mobile/common/misc/APNumberPicker$NumberDisplayRenderer;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/misc/APNumberPicker;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$layout;->ext_number_picker:I

    invoke-static {p1, v0, p0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/misc/APNumberPicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->a:Z

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/misc/APNumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->a:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/misc/APNumberPicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->b:Z

    return v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/common/misc/APNumberPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->b:Z

    return p1
.end method


# virtual methods
.method protected decrement()V
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->minNumber:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->maxNumber:I

    :cond_0
    iput v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->renderShowText(I)V

    return-void
.end method

.method public getSelectValue()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    return v0
.end method

.method protected increment()V
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->maxNumber:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->minNumber:I

    :cond_0
    iput v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->renderShowText(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget v0, Lcom/alipay/mobile/ui/R$id;->upBtn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->upBtn:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/ui/R$id;->downBtn:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->downBtn:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/ui/R$id;->showText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->showText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->upBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/misc/APNumberPicker;->setButtonAction(Landroid/widget/Button;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->downBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/misc/APNumberPicker;->setButtonAction(Landroid/widget/Button;Z)V

    return-void
.end method

.method protected renderShowText(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->d:Lcom/alipay/mobile/common/misc/APNumberPicker$NumberDisplayRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->showText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->d:Lcom/alipay/mobile/common/misc/APNumberPicker$NumberDisplayRenderer;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/common/misc/APNumberPicker$NumberDisplayRenderer;->render(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->showText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setButtonAction(Landroid/widget/Button;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/misc/APNumberPicker$2;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/common/misc/APNumberPicker$2;-><init>(Lcom/alipay/mobile/common/misc/APNumberPicker;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alipay/mobile/common/misc/APNumberPicker$3;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/common/misc/APNumberPicker$3;-><init>(Lcom/alipay/mobile/common/misc/APNumberPicker;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Lcom/alipay/mobile/common/misc/APNumberPicker$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/misc/APNumberPicker$4;-><init>(Lcom/alipay/mobile/common/misc/APNumberPicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setCurrentValue(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    iget v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->renderShowText(I)V

    return-void
.end method

.method public setNumberLimit(II)V
    .locals 1

    if-ge p2, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p2, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->maxNumber:I

    iput p1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->minNumber:I

    iget v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    if-le v0, p2, :cond_1

    iput p2, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    if-ge v0, p1, :cond_2

    iput p1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    :cond_2
    iget v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->renderShowText(I)V

    return-void
.end method

.method public setRenderer(Lcom/alipay/mobile/common/misc/APNumberPicker$NumberDisplayRenderer;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->d:Lcom/alipay/mobile/common/misc/APNumberPicker$NumberDisplayRenderer;

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/misc/APNumberPicker;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/misc/APNumberPicker;->renderShowText(I)V

    return-void
.end method
