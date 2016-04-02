.class public Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView$OnItemClickListener;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView$OnItemClickListener;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/PopupWindow;

.field choose:I

.field private d:Landroid/widget/TextView;

.field dismissRunnable:Ljava/lang/Runnable;

.field private e:Landroid/os/Handler;

.field private f:I

.field private g:I

.field private h:Landroid/content/Context;

.field paint:Landroid/graphics/Paint;

.field showBkg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->choose:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->paint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->showBkg:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->e:Landroid/os/Handler;

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->f:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->g:I

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/a;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->dismissRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->h:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->choose:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->paint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->showBkg:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->e:Landroid/os/Handler;

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->f:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->g:I

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/a;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->dismissRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->h:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->choose:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->paint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->showBkg:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->e:Landroid/os/Handler;

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->f:I

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->g:I

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/widget/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/widget/a;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->dismissRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->h:Landroid/content/Context;

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->a:Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->a:Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView$OnItemClickListener;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView$OnItemClickListener;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->c:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->choose:I

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->g:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->f:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->c:Landroid/widget/PopupWindow;

    const/16 v4, 0x11

    invoke-virtual {v0, p0, v4, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return v6

    :pswitch_0
    iput-boolean v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->showBkg:Z

    if-eq v2, v3, :cond_1

    if-ltz v3, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-direct {p0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->a(I)V

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->choose:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->invalidate()V

    goto :goto_0

    :pswitch_1
    if-eq v2, v3, :cond_1

    if-ltz v3, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-direct {p0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->a(I)V

    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->choose:I

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->invalidate()V

    goto :goto_0

    :pswitch_2
    iput-boolean v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->showBkg:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->choose:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->dismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->invalidate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->showBkg:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->c:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "mini_letter_popupwindow"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->getHeight()I

    move-result v2

    const/16 v0, 0x64

    const/16 v3, 0x384

    if-le v2, v3, :cond_1

    const/16 v0, 0xa0

    :cond_1
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->c:Landroid/widget/PopupWindow;

    const-string/jumbo v0, "letterText"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->getHeight()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v0, 0x1a

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->f:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1a

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->f:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->g:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->f:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->paint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->choose:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->paint:Landroid/graphics/Paint;

    const-string/jumbo v3, "#3399ff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    div-int/lit8 v0, v2, 0x2

    int-to-float v3, v0

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->g:I

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->f:I

    mul-int/2addr v4, v1

    add-int/2addr v0, v4

    iget v4, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->f:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setLetter(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public setOnItemClickListener(Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView;->a:Lcom/alipay/android/app/ui/quickpay/widget/AUBladeView$OnItemClickListener;

    return-void
.end method
