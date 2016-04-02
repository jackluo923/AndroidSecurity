.class public Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APInputBox;

.field private b:Lcom/alipay/mobile/commonui/widget/APButton;

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

.field private e:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

.field private f:Landroid/os/Handler;

.field private g:I

.field private h:Z

.field private i:Ljava/util/Timer;

.field private j:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$SendButtonEnableChecker;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$TimerHanlder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$TimerHanlder;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->f:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->h:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$TimerHanlder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$TimerHanlder;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->f:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->h:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->k:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_checkcode_sender_horizontal_view:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->checkcode_sender:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->h:Z

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->l:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->m:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->g:I

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)Lcom/alipay/mobile/commonui/widget/OnSendCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->d:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->k:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)Lcom/alipay/mobile/commonui/widget/SendResultCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->e:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)V
    .locals 1

    const/16 v0, 0x3c

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->g:I

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->g:I

    return v0
.end method

.method static synthetic access$810(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->g:I

    return v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public currentSecond2Zero()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->g:I

    return-void
.end method

.method public getCurrentSecond()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->g:I

    return v0
.end method

.method public getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    return-object v0
.end method

.method public getSendCodeButton()Lcom/alipay/mobile/commonui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    return-object v0
.end method

.method public getSendResultCallback()Lcom/alipay/mobile/commonui/widget/SendResultCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->e:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->releaseTimer()V

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onFinishInflate()V

    sget v0, Lcom/alipay/mobile/ui/R$id;->checkCodeSendInputBox:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/ui/R$id;->checkCodeSendButton:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->timeAfter:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->c:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$CheckCodeSendResultCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$CheckCodeSendResultCallback;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->e:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->h:Z

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->l:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputName(Ljava/lang/String;I)V

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setHint(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public releaseTimer()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->i:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->i:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public scheduleTimer()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->k:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->updateSendButtonEnableStatus()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->i:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->i:Ljava/util/Timer;

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->i:Ljava/util/Timer;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->i:Ljava/util/Timer;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$2;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public setCurrentSecond(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->g:I

    return-void
.end method

.method public setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->d:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    :cond_0
    return-void
.end method

.method public setSendButtonEnableChecker(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$SendButtonEnableChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$SendButtonEnableChecker;

    return-void
.end method

.method public updateSendButtonEnableStatus()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$SendButtonEnableChecker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$SendButtonEnableChecker;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$SendButtonEnableChecker;->checkIsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->k:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0
.end method
