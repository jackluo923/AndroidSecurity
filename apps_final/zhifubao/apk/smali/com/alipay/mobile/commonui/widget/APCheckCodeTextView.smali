.class public Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

.field private d:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

.field private e:Landroid/os/Handler;

.field private f:I

.field private g:Ljava/util/Timer;

.field private h:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$SendButtonEnableChecker;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->e:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->e:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->i:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_checkcode_text_view:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/16 v0, 0x3c

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->f:I

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)Lcom/alipay/mobile/commonui/widget/OnSendCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->c:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->i:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)Lcom/alipay/mobile/commonui/widget/SendResultCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->d:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)V
    .locals 1

    const/16 v0, 0x3c

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->f:I

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->f:I

    return v0
.end method

.method static synthetic access$810(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->f:I

    return v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public currentSecond2Zero()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->f:I

    return-void
.end method

.method public getCurrentSecond()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->f:I

    return v0
.end method

.method public getSendResultCallback()Lcom/alipay/mobile/commonui/widget/SendResultCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->d:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->releaseTimer()V

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onFinishInflate()V

    sget v0, Lcom/alipay/mobile/ui/R$id;->checkCodeTextView:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->timeAfter_type2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->a:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$CheckCodeSendResultCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$CheckCodeSendResultCallback;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->d:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public releaseTimer()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->g:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public scheduleTimer()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->i:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->updateSendButtonEnableStatus()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->g:Ljava/util/Timer;

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->g:Ljava/util/Timer;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->g:Ljava/util/Timer;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$2;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public setCurrentSecond(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->f:I

    return-void
.end method

.method public setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->c:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    :cond_0
    return-void
.end method

.method public setSendButtonEnableChecker(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$SendButtonEnableChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->h:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$SendButtonEnableChecker;

    return-void
.end method

.method public updateSendButtonEnableStatus()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->h:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$SendButtonEnableChecker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->h:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$SendButtonEnableChecker;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$SendButtonEnableChecker;->checkIsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->i:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setEnabled(Z)V

    goto :goto_0
.end method
