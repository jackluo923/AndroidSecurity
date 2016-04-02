.class public Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;
.super Landroid/widget/RelativeLayout;
.source "ChatInputer.java"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

.field private c:I

.field private d:Ljava/lang/String;

.field irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

.field isClicked:Z

.field iskeyBoardShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    .line 34
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->iskeyBoardShown:Z

    .line 35
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->isClicked:Z

    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    .line 34
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->iskeyBoardShown:Z

    .line 35
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->isClicked:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    .line 34
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->iskeyBoardShown:Z

    .line 35
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->isClicked:Z

    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 63
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)V

    .line 84
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;->setProcessor(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver$ReceiverProcessor;)V

    .line 85
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$layout;->chat_inputer:I

    invoke-static {p1, v0, p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 86
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->input_edit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 88
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->exp_pan:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 89
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->input_more_type:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 90
    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->sendBtn:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 91
    sget v3, Lcom/alipay/mobile/publicsvc/common/R$id;->input_edit_container:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    .line 92
    sget v3, Lcom/alipay/mobile/publicsvc/common/R$id;->chat_msg_edit_seprator:I

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APView;

    .line 95
    new-instance v6, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;

    invoke-direct {v6, p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$2;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v6, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;

    invoke-direct {v6, p0, v0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$3;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v6, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;

    invoke-direct {v6, p0, v0, v3}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$4;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;Lcom/alipay/mobile/commonui/widget/APView;)V

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    new-instance v3, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$5;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$5;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    sget v3, Lcom/alipay/mobile/publicsvc/common/R$drawable;->chat_add_media_selector:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    new-instance v3, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;

    invoke-direct {v3, p0, v2, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$6;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$7;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$7;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)V

    .line 206
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->switch_input:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->img_btn_select_image:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->img_btn_take_picture:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$8;

    invoke-direct {v1, p0, v5, v4}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$8;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 220
    return-void
.end method

.method private a(Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 292
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->iskeyBoardShown:Z

    .line 293
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 294
    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 293
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 295
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    invoke-virtual {v0, p1, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 296
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a(Lcom/alipay/mobile/commonui/widget/APEditText;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->c:I

    return v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->c:I

    return-void
.end method

.method public static findEmojiCutPos(Ljava/lang/String;I)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 235
    if-nez p0, :cond_1

    .line 236
    const/4 p1, 0x0

    .line 254
    :cond_0
    :goto_0
    return p1

    .line 238
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    .line 242
    :cond_2
    const-string/jumbo v0, "[/emoji]"

    add-int/lit8 v1, p1, -0x7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 243
    if-eq v0, v2, :cond_0

    .line 246
    const-string/jumbo v1, "[emoji]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 247
    if-eq v1, v2, :cond_0

    .line 251
    sub-int/2addr v0, v1

    const/16 v2, 0x37

    if-gt v0, v2, :cond_0

    .line 254
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method public clearText()V
    .locals 2

    .prologue
    .line 267
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->input_edit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 268
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    return-void
.end method

.method public closeExpandPan()V
    .locals 2

    .prologue
    .line 272
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->exp_pan:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 273
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    return-void
.end method

.method public closeInputBoard()V
    .locals 4

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 278
    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 277
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 280
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->input_edit:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    .line 280
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->iskeyBoardShown:Z

    .line 283
    return-void
.end method

.method public getBaseHeight()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->c:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getTalkChooseMoreVisibility()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->exp_pan:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hideSwitchButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 258
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->switch_input:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->switch_input_devider:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ChatInputer"

    const-string/jumbo v2, "remove ImmInputResultReceiver Process"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->irr:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;->removeProcessor()V

    .line 229
    :cond_0
    return-void
.end method

.method public openInputBoard()V
    .locals 1

    .prologue
    .line 286
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->input_edit:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 287
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    .line 288
    invoke-direct {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a(Lcom/alipay/mobile/commonui/widget/APEditText;)V

    .line 289
    return-void
.end method

.method public setChatInputerCallback(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->b:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;

    .line 305
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->d:Ljava/lang/String;

    .line 301
    return-void
.end method
