.class public Lcom/alipay/asset/common/ui/NumberKeyboardView;
.super Landroid/widget/LinearLayout;
.source "NumberKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field private b:J

.field protected digitkeypad_0:Landroid/widget/Button;

.field protected digitkeypad_1:Landroid/widget/Button;

.field protected digitkeypad_2:Landroid/widget/Button;

.field protected digitkeypad_3:Landroid/widget/Button;

.field protected digitkeypad_4:Landroid/widget/Button;

.field protected digitkeypad_5:Landroid/widget/Button;

.field protected digitkeypad_6:Landroid/widget/Button;

.field protected digitkeypad_7:Landroid/widget/Button;

.field protected digitkeypad_8:Landroid/widget/Button;

.field protected digitkeypad_9:Landroid/widget/Button;

.field protected digitkeypad_c:Landroid/widget/Button;

.field protected digitkeypad_decimal:Landroid/widget/Button;

.field protected keypadLayout1:Landroid/widget/LinearLayout;

.field protected keypadLayout2:Landroid/widget/LinearLayout;

.field protected keypadLayout3:Landroid/widget/LinearLayout;

.field public mActionClickListener:Lcom/alipay/asset/common/ui/NumberKeyboardView$OnActionClickListener;

.field protected mButtonOK:Landroid/widget/Button;

.field protected mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a:Z

    .line 148
    const-wide/32 v0, 0x5f5e100

    iput-wide v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->b:J

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-boolean v2, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a:Z

    .line 148
    const-wide/32 v0, 0x5f5e100

    iput-wide v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->b:J

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/common/R$layout;->number_key_layout:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->setOrientation(I)V

    .line 75
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 350
    iget-boolean v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a:Z

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    .line 353
    const/4 v1, 0x2

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setTextSize(IF)V

    .line 354
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    .line 359
    :cond_1
    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getClearButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    goto :goto_0

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getClearButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getSelectionStart()I

    move-result v0

    .line 374
    iget-object v2, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    iget-boolean v3, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a:Z

    if-eqz v3, :cond_0

    .line 376
    const-string/jumbo v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "."

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 377
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 378
    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move v0, v1

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 383
    iget-object v3, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    :try_start_0
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->b:J

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 386
    iget-object v3, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v2, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 398
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a()V

    .line 400
    return-void

    .line 391
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 394
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/asset/common/ui/NumberKeyboardView;)V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a()V

    return-void
.end method


# virtual methods
.method public AttachInputBox(Lcom/alipay/mobile/commonui/widget/APInputBox;)V
    .locals 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    .line 110
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setLongClickable(Z)V

    .line 112
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->focusVisibility(Landroid/widget/EditText;)V

    .line 113
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v1, Lcom/alipay/asset/common/ui/NumberKeyboardView$1;

    invoke-direct {v1, p0}, Lcom/alipay/asset/common/ui/NumberKeyboardView$1;-><init>(Lcom/alipay/asset/common/ui/NumberKeyboardView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setCleanButtonListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-direct {p0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a()V

    .line 128
    return-void
.end method

.method public focusVisibility(Landroid/widget/EditText;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 255
    const-class v0, Landroid/widget/EditText;

    .line 258
    :try_start_0
    const-string/jumbo v1, "setShowSoftInputOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 257
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 259
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 260
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .line 264
    :try_start_1
    const-string/jumbo v1, "setSoftInputShownOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 263
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 266
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 268
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    goto :goto_0

    .line 270
    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    goto :goto_0

    .line 272
    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    goto :goto_0

    .line 274
    :catch_4
    move-exception v0

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    goto :goto_0
.end method

.method public getMax_input_money()J
    .locals 2

    .prologue
    .line 419
    iget-wide v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->b:J

    return-wide v0
.end method

.method public isUseZeroAsDefault()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 282
    iget-object v1, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    if-nez v1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "You didn\'t attach an InputBox with this Keyboard!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->OK:I

    if-ne v0, v1, :cond_2

    .line 286
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mActionClickListener:Lcom/alipay/asset/common/ui/NumberKeyboardView$OnActionClickListener;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mActionClickListener:Lcom/alipay/asset/common/ui/NumberKeyboardView$OnActionClickListener;

    invoke-interface {v0, p1}, Lcom/alipay/asset/common/ui/NumberKeyboardView$OnActionClickListener;->onActionDone(Landroid/view/View;)V

    .line 342
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_1:I

    if-ne v0, v1, :cond_3

    .line 291
    const-string/jumbo v1, "1"

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a(Ljava/lang/String;)V

    .line 293
    :cond_3
    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_2:I

    if-ne v0, v1, :cond_4

    .line 294
    const-string/jumbo v1, "2"

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a(Ljava/lang/String;)V

    .line 296
    :cond_4
    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_3:I

    if-ne v0, v1, :cond_5

    .line 297
    const-string/jumbo v1, "3"

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a(Ljava/lang/String;)V

    .line 299
    :cond_5
    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_4:I

    if-ne v0, v1, :cond_6

    .line 300
    const-string/jumbo v1, "4"

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a(Ljava/lang/String;)V

    .line 302
    :cond_6
    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_5:I

    if-ne v0, v1, :cond_7

    .line 303
    const-string/jumbo v1, "5"

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a(Ljava/lang/String;)V

    .line 305
    :cond_7
    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_6:I

    if-ne v0, v1, :cond_8

    .line 306
    const-string/jumbo v1, "6"

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a(Ljava/lang/String;)V

    .line 308
    :cond_8
    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_7:I

    if-ne v0, v1, :cond_9

    .line 309
    const-string/jumbo v1, "7"

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a(Ljava/lang/String;)V

    .line 311
    :cond_9
    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_8:I

    if-ne v0, v1, :cond_a

    .line 312
    const-string/jumbo v1, "8"

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a(Ljava/lang/String;)V

    .line 314
    :cond_a
    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_9:I

    if-ne v0, v1, :cond_b

    .line 315
    const-string/jumbo v1, "9"

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a(Ljava/lang/String;)V

    .line 317
    :cond_b
    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_0:I

    if-ne v0, v1, :cond_c

    .line 318
    const-string/jumbo v1, "0"

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a(Ljava/lang/String;)V

    .line 320
    :cond_c
    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_decimal:I

    if-ne v0, v1, :cond_e

    .line 321
    iget-object v1, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 323
    iget-object v1, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    .line 324
    const-string/jumbo v1, "0"

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a(Ljava/lang/String;)V

    .line 325
    :cond_d
    const-string/jumbo v1, "."

    invoke-direct {p0, v1}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a(Ljava/lang/String;)V

    .line 328
    :cond_e
    sget v1, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_c:I

    if-ne v0, v1, :cond_f

    .line 330
    iget-object v1, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getSelectionStart()I

    move-result v1

    .line 331
    if-lez v1, :cond_f

    .line 332
    iget-object v2, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mInputBox:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 333
    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 335
    invoke-direct {p0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a()V

    .line 340
    :cond_f
    iget-object v1, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mActionClickListener:Lcom/alipay/asset/common/ui/NumberKeyboardView$OnActionClickListener;

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mActionClickListener:Lcom/alipay/asset/common/ui/NumberKeyboardView$OnActionClickListener;

    invoke-interface {v1, p1, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView$OnActionClickListener;->onActionClick(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 80
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_1:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_1:Landroid/widget/Button;

    .line 81
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_2:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_2:Landroid/widget/Button;

    .line 82
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_3:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_3:Landroid/widget/Button;

    .line 83
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_4:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_4:Landroid/widget/Button;

    .line 84
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_5:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_5:Landroid/widget/Button;

    .line 85
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_6:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_6:Landroid/widget/Button;

    .line 86
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_7:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_7:Landroid/widget/Button;

    .line 87
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_8:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_8:Landroid/widget/Button;

    .line 88
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_9:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_9:Landroid/widget/Button;

    .line 89
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_decimal:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_decimal:Landroid/widget/Button;

    .line 90
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_0:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_0:Landroid/widget/Button;

    .line 91
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->digitkeypad_c:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_c:Landroid/widget/Button;

    .line 92
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->keypadLayout1:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->keypadLayout1:Landroid/widget/LinearLayout;

    .line 93
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->keypadLayout2:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->keypadLayout2:Landroid/widget/LinearLayout;

    .line 94
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->keypadLayout3:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->keypadLayout3:Landroid/widget/LinearLayout;

    .line 95
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->OK:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mButtonOK:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mButtonOK:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_4:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_5:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_6:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_7:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_8:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_9:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_decimal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_0:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x384

    if-ge v0, v1, :cond_0

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v0, 0xf

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x78

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x3c

    move v5, v0

    move v4, v1

    move v6, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_1:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_0:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_c:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v3, v4, 0x2

    add-int/2addr v3, v5

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->keypadLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v7, v6, v7, v6}, Lcom/alipay/asset/common/ui/NumberKeyboardView;->setPadding(IIII)V

    iget-object v5, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_1:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_2:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_3:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_4:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_5:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_6:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_7:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_8:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_9:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_decimal:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_0:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->digitkeypad_c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->keypadLayout1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->keypadLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->keypadLayout3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    return-void

    .line 96
    :cond_0
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3fc020c5    # 1.501f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v0, 0xf

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x78

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x3c

    move v5, v0

    move v4, v1

    move v6, v2

    goto/16 :goto_0

    :cond_1
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v0, 0xc

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x64

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2a

    move v5, v0

    move v4, v1

    move v6, v2

    goto/16 :goto_0
.end method

.method public setMax_input_money(J)V
    .locals 0

    .prologue
    .line 415
    iput-wide p1, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->b:J

    .line 416
    return-void
.end method

.method public setOKBtnEnable(Z)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mButtonOK:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 404
    return-void
.end method

.method public setOnActionClickListener(Lcom/alipay/asset/common/ui/NumberKeyboardView$OnActionClickListener;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->mActionClickListener:Lcom/alipay/asset/common/ui/NumberKeyboardView$OnActionClickListener;

    .line 152
    return-void
.end method

.method public setUseZeroAsDefault(Z)V
    .locals 0

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/alipay/asset/common/ui/NumberKeyboardView;->a:Z

    .line 408
    return-void
.end method
