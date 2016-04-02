.class public Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard; = null

.field public static final NUM_KEYBOARD:I = 0x2

.field public static final QWER_KEYBOARD:I = 0x1

.field public static kb:Lcom/alipay/mobile/commonui/widget/keyboard/KeyboardBehavor;


# instance fields
.field private A:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;

.field private B:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

.field private C:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;

.field private D:Landroid/widget/FrameLayout;

.field private E:Landroid/app/Activity;

.field private F:Landroid/widget/PopupWindow;

.field private G:Landroid/widget/PopupWindow;

.field private H:Landroid/view/ViewGroup;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:Landroid/view/WindowManager$LayoutParams;

.field private O:I

.field private P:Landroid/view/ViewGroup;

.field private Q:Landroid/view/ViewGroup;

.field private R:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private S:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private T:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private U:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private V:Landroid/text/method/KeyListener;

.field private W:Landroid/view/View$OnLayoutChangeListener;

.field private X:Z

.field private Y:I

.field private Z:J

.field private a:D

.field private aa:Ljava/lang/Runnable;

.field private ab:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/widget/TextView;

.field private f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field private g:Landroid/widget/TextView;

.field private h:[Landroid/widget/TextView;

.field private i:[Landroid/widget/TextView;

.field private j:[Landroid/widget/TextView;

.field private k:[Landroid/widget/TextView;

.field private l:[Landroid/widget/TextView;

.field private m:[Landroid/widget/TextView;

.field private n:[Landroid/widget/TextView;

.field private o:Landroid/widget/FrameLayout;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/ImageButton;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:[I

.field private x:[I

.field private y:Landroid/os/Handler;

.field private z:Z


# direct methods
.method private constructor <init>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->h:[Landroid/widget/TextView;

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->i:[Landroid/widget/TextView;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->j:[Landroid/widget/TextView;

    new-array v0, v4, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->k:[Landroid/widget/TextView;

    new-array v0, v4, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l:[Landroid/widget/TextView;

    new-array v0, v4, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->m:[Landroid/widget/TextView;

    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->n:[Landroid/widget/TextView;

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->w:[I

    new-array v0, v5, [I

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->x:[I

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->z:Z

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;->abc:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->A:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->Shift_up:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->B:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->J:I

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->K:I

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->L:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->O:I

    iput-object v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->P:Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Q:Landroid/view/ViewGroup;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->V:Landroid/text/method/KeyListener;

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->X:Z

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Z:J

    iput-object v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->aa:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->ab:Z

    invoke-static {}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->isUseSafeKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->ab:Z

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x1

    aget v0, v0, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x405b800000000000L    # 110.0

    iget-wide v4, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->b:I

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->M:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->J:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->J:I

    goto :goto_0
.end method

.method private a(I)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getTextSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$2;-><init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$color;->C_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;)V
    .locals 11

    const/4 v1, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;->abc:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->r:Landroid/widget/TextView;

    const-string/jumbo v2, "123"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    sget v3, Lcom/alipay/mobile/ui/R$string;->keyboard_123:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->Shift_up:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->keyboard_key_shift_up:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/ui/R$array;->keyboard_row1_abc_shift_up:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/ui/R$array;->keyboard_row2_abc_shift_up:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/ui/R$array;->keyboard_row3_abc_shift_up:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_0
    array-length v7, v4

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_3

    iget-object v8, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->h:[Landroid/widget/TextView;

    aget-object v8, v8, v6

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->keyboard_key_shift_down:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/ui/R$array;->keyboard_row1_abc_shift_down:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/ui/R$array;->keyboard_row2_abc_shift_down:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/ui/R$array;->keyboard_row3_abc_shift_down:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->r:Landroid/widget/TextView;

    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    sget v2, Lcom/alipay/mobile/ui/R$string;->keyboard_abc:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->Shift_up:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$array;->keyboard_row1_num_shift_up:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$array;->keyboard_row2_num_shift_up:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$array;->keyboard_row3_num_shift_up:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/ui/R$array;->keyboard_row2_num_shift_up_des:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/alipay/mobile/ui/R$array;->keyboard_row3_num_shift_up_des:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$array;->keyboard_row1_num_shift_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$array;->keyboard_row2_num_shift_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$array;->keyboard_row3_num_shift_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/ui/R$array;->keyboard_row2_num_shift_down_des:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/alipay/mobile/ui/R$array;->keyboard_row3_num_shift_down_des:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    array-length v6, v3

    move v4, v5

    :goto_2
    if-ge v4, v6, :cond_5

    iget-object v7, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->i:[Landroid/widget/TextView;

    aget-object v7, v7, v4

    aget-object v8, v3, v4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_4

    aget-object v7, v2, v4

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->i:[Landroid/widget/TextView;

    aget-object v7, v7, v4

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    array-length v3, v1

    move v2, v5

    :goto_3
    if-ge v2, v3, :cond_7

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->j:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_6

    aget-object v4, v0, v2

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->j:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private static a(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;I)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ltz p1, :cond_2

    if-le p1, v1, :cond_3

    :cond_2
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_3
    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "actionId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " keyevent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->C:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->C:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->K:I

    return v0
.end method

.method static synthetic access$1002(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->K:I

    return p1
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->aa:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->X:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d()V

    return-void
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Z:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Z:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I

    return v0
.end method

.method static synthetic access$708(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a()V

    return-void
.end method

.method static synthetic access$900(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->J:I

    return v0
.end method

.method private b()V
    .locals 13

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->c:I

    int-to-double v0, v0

    const-wide v2, 0x401551eb851eb852L    # 5.33

    iget-wide v4, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    mul-int/lit8 v2, v2, 0x9

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 v3, v0, 0xa

    int-to-double v0, v3

    const-wide v4, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v0, v4

    double-to-int v4, v0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->row1_frame:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->h:[Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v6, v2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->h:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->h:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->h:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    const/4 v6, 0x1

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->h:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, 0x0

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz v2, :cond_0

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->row2_frame:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    iget-wide v7, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->i:[Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v6, v2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->i:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->i:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->i:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    const/4 v6, 0x1

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->i:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, 0x0

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz v2, :cond_2

    iget v6, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->row3_frame:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    int-to-double v1, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int v5, v1, v3

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v2, Lcom/alipay/mobile/ui/R$id;->key_ABC:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->o:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v2, Lcom/alipay/mobile/ui/R$id;->key_del1:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->p:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->o:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->p:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->p:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->c:I

    int-to-double v6, v2

    const-wide v8, 0x401551eb851eb852L    # 5.33

    iget-wide v10, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    mul-int/lit8 v2, v2, 0x8

    int-to-double v8, v2

    sub-double/2addr v6, v8

    mul-int/lit8 v2, v3, 0x7

    int-to-double v8, v2

    sub-double/2addr v6, v8

    int-to-double v8, v5

    sub-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    const/4 v1, 0x1

    move v2, v1

    :goto_2
    add-int/lit8 v1, v7, -0x1

    if-ge v2, v1, :cond_5

    iget-object v8, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->j:[Landroid/widget/TextView;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v9

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->j:[Landroid/widget/TextView;

    add-int/lit8 v8, v2, -0x1

    aget-object v1, v1, v8

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->j:[Landroid/widget/TextView;

    add-int/lit8 v8, v2, -0x1

    aget-object v1, v1, v8

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->j:[Landroid/widget/TextView;

    add-int/lit8 v8, v2, -0x1

    aget-object v1, v1, v8

    const/4 v8, 0x1

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v1, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->j:[Landroid/widget/TextView;

    add-int/lit8 v8, v2, -0x1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v8, 0x0

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-int/lit8 v8, v7, -0x2

    if-ne v2, v8, :cond_4

    iget v8, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    iget v8, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->key_bottom:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    mul-int/lit8 v1, v3, 0x4

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    mul-int/lit8 v2, v2, 0x3

    add-int v8, v1, v2

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v7, :cond_b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/View;->setClickable(Z)V

    if-nez v2, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v9, 0x0

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_6
    :goto_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_7
    const/4 v9, 0x1

    if-ne v2, v9, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v9, 0x0

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v9, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_5

    :cond_8
    const/4 v9, 0x2

    if-ne v2, v9, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v9, 0x0

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v9, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_5

    :cond_9
    const/4 v9, 0x3

    if-ne v2, v9, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v9, 0x0

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v9, 0x33

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget v9, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_5

    :cond_a
    const/4 v9, 0x4

    if-ne v2, v9, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    add-int/2addr v9, v6

    add-int/2addr v9, v3

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v9, 0x0

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v9, 0x5

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_5

    :cond_b
    sget v1, Lcom/alipay/mobile/ui/R$id;->key_123:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->r:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v1, Lcom/alipay/mobile/ui/R$id;->key_enter:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->s:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->key_switch1:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private b(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private c()V
    .locals 14

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const/high16 v11, 0x41c00000    # 24.0f

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->c:I

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    div-int/lit8 v5, v0, 0x3

    int-to-double v0, v5

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v6

    double-to-int v6, v0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->row1_frame_num:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v7, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v7, v12

    double-to-int v2, v7

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    move v2, v4

    :goto_0
    if-ge v2, v7, :cond_0

    iget-object v8, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->k:[Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->k:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->k:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->k:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->k:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v8, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    invoke-virtual {v1, v8, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->row2_frame_num:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v7, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v7, v12

    double-to-int v2, v7

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    move v2, v4

    :goto_1
    if-ge v2, v7, :cond_1

    iget-object v8, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l:[Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v8, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    invoke-virtual {v1, v8, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->row3_frame_num:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v7, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v7, v12

    double-to-int v2, v7

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    move v2, v4

    :goto_2
    if-ge v2, v7, :cond_2

    iget-object v8, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->m:[Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->m:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->m:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->m:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->m:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v8, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    invoke-virtual {v1, v8, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->row4_frame_num:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-wide v7, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v7, v12

    double-to-int v2, v7

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v2, Lcom/alipay/mobile/ui/R$id;->key_num_del1:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->q:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->q:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->q:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->q:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    move v2, v3

    :goto_3
    add-int/lit8 v1, v7, -0x1

    if-ge v2, v1, :cond_3

    iget-object v8, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->n:[Landroid/widget/TextView;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v9

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->n:[Landroid/widget/TextView;

    add-int/lit8 v8, v2, -0x1

    aget-object v1, v1, v8

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->n:[Landroid/widget/TextView;

    add-int/lit8 v8, v2, -0x1

    aget-object v1, v1, v8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->n:[Landroid/widget/TextView;

    add-int/lit8 v8, v2, -0x1

    aget-object v1, v1, v8

    invoke-virtual {v1, v3, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->n:[Landroid/widget/TextView;

    add-int/lit8 v8, v2, -0x1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v8, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    invoke-virtual {v1, v8, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_3
    sget v1, Lcom/alipay/mobile/ui/R$id;->key_num_enter:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->key_switch2:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->W:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->W:Landroid/view/View$OnLayoutChangeListener;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->aa:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->aa:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->aa:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$5;-><init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v0, "hide system called"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "hide first time fail"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const-string/jumbo v0, "hide second try"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->V:Landroid/text/method/KeyListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->N:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->L:I

    :cond_5
    :goto_3
    iput v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->J:I

    iput v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->K:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "popupWindow dissmiss err:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "popupSingle dissmiss err:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "no dialog hide"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "this.parentViewOffset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->K:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method public static declared-synchronized getInstance(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
    .locals 3

    const-class v1, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    if-nez v0, :cond_3

    const-class v2, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-direct {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;-><init>()V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-nez v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->init(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V

    :cond_2
    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_4
    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->hideKeyboard(Z)V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    invoke-static {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->getInstance(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public static isSpecialManuFacturer(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUseSafeKeyboard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->M:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->J:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->K:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->L:I

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->I:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disableOk()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->s:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->b(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->t:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->b(Landroid/widget/TextView;)V

    return-void
.end method

.method public enableOk()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->s:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->t:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method public getIsUseDefaultKeyboard()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public getKeyboardType()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->O:I

    return v0
.end method

.method public getRootView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTv_ok()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_1
    iget-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->z:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(I)V

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized hideAllKeyboard()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$7;-><init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hideKeyboard()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$6;-><init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hideKeyboard(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->hideSafeKeyboardAndDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hideSafeKeyboardAndDestroy()V
    .locals 1

    const-string/jumbo v0, "hide call"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g()V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->destroy()V

    return-void
.end method

.method init(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V
    .locals 12

    const-wide v10, 0x4053800000000000L    # 78.0

    const-wide v8, 0x4050400000000000L    # 65.0

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->ab:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->V:Landroid/text/method/KeyListener;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->b:I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->c:I

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->c:I

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->b:I

    if-le v1, v2, :cond_2

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->b:I

    iget v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->c:I

    iput v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->b:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->c:I

    :cond_2
    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    iget-wide v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->d:I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    if-nez v1, :cond_3

    sget v1, Lcom/alipay/mobile/ui/R$layout;->keyboard:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$id;->keyboard:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    :goto_1
    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->ll_key_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->P:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->ll_key_area_num:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Q:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->b()V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->c()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeKeyboardInputType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->setKeyboardType(I)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->getKeyboardType()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->P:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Q:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    iget v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->b:I

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->c:I

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->measure(II)V

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->getKeyboardType()I

    move-result v3

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v3, Lcom/alipay/mobile/ui/R$id;->ll_key_area_num:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->ll_key_area_num:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->M:I

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->M:I

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5, v5}, Landroid/widget/FrameLayout;->measure(II)V

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->c:I

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->R:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$1;-><init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-wide v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v1, v8

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v2, v10

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-wide v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v1, v10

    double-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-wide v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v1, v8

    double-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->keyborad_show:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->P:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Q:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v3, Lcom/alipay/mobile/ui/R$id;->ll_key_area:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->ll_key_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto/16 :goto_3
.end method

.method l(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->onTouchDown(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/ui/R$id;->key_del1:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/ui/R$id;->key_num_del1:I

    if-ne v0, v1, :cond_1

    :cond_0
    iput-boolean v5, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->z:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/ui/R$id;->key_del1:I

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/ui/R$id;->key_num_del1:I

    if-ne v0, v1, :cond_1

    :cond_4
    iput-boolean v4, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->z:Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public onTouchDown(Landroid/view/View;)V
    .locals 14

    const-wide v12, 0x404f4ccccccccccdL    # 62.6

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSelectionStart()I

    move-result v0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v3, Lcom/alipay/mobile/ui/R$id;->key_del1:I

    if-eq v0, v3, :cond_2

    sget v3, Lcom/alipay/mobile/ui/R$id;->key_num_del1:I

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-direct {p0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(I)V

    goto :goto_0

    :cond_3
    sget v3, Lcom/alipay/mobile/ui/R$id;->key_123:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->A:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;

    sget-object v1, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;->abc:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;->num:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->A:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;

    :goto_2
    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->Shift_up:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->B:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->A:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->B:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;->abc:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->A:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;

    goto :goto_2

    :cond_5
    sget v3, Lcom/alipay/mobile/ui/R$id;->key_space:I

    if-ne v0, v3, :cond_6

    const-string/jumbo v0, " "

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    sget v3, Lcom/alipay/mobile/ui/R$id;->key_ABC:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->B:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    sget-object v1, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->Shift_up:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->Shift_down:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->B:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->A:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->B:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Type;Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->Shift_up:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->B:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    goto :goto_3

    :cond_8
    sget v3, Lcom/alipay/mobile/ui/R$id;->key_enter:I

    if-eq v0, v3, :cond_9

    sget v3, Lcom/alipay/mobile/ui/R$id;->key_num_enter:I

    if-ne v0, v3, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->C:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->C:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;->onOkClicked()V

    :cond_a
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->hideKeyboard()V

    goto :goto_0

    :cond_b
    sget v3, Lcom/alipay/mobile/ui/R$id;->key_switch1:I

    if-eq v0, v3, :cond_c

    sget v3, Lcom/alipay/mobile/ui/R$id;->key_switch2:I

    if-ne v0, v3, :cond_d

    :cond_c
    const-string/jumbo v0, "call open default"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->V:Landroid/text/method/KeyListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "in call open default"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1, v11}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "show sys keyboard first time fail"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0

    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->w:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->w:[I

    new-array v4, v8, [I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->x:[I

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    aget v0, v4, v2

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->h:[Landroid/widget/TextView;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->getKeyboardType()I

    move-result v6

    if-ne v8, v6, :cond_e

    aget v0, v4, v2

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->k:[Landroid/widget/TextView;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    :cond_e
    iget v6, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->b:I

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    iget-wide v9, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aget v4, v4, v11

    sub-int v4, v6, v4

    if-lez v0, :cond_10

    :goto_4
    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    iget-wide v7, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v7, v12

    double-to-int v7, v7

    sub-int/2addr v6, v7

    if-ge v0, v6, :cond_11

    :goto_5
    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    const/high16 v7, 0x420c0000    # 35.0f

    invoke-virtual {v6, v11, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    if-nez v2, :cond_12

    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->g:Landroid/widget/TextView;

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v2, v3, v6, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v11}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    :cond_f
    :goto_6
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    const/16 v5, 0x53

    invoke-virtual {v2, v3, v5, v0, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-wide v6, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v6, v12

    double-to-int v6, v6

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_12
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_f

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->G:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "popupSingle dissmiss err:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_13
    move v1, v2

    goto/16 :goto_1
.end method

.method public setKeyboardType(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->O:I

    return-void
.end method

.method public setOKListener(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->C:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;

    return-void
.end method

.method public setOKText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->key_enter:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->D:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/ui/R$id;->key_num_enter:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOkEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->enableOk()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->disableOk()V

    goto :goto_0
.end method

.method public setTv_ok(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->s:Landroid/widget/TextView;

    return-void
.end method

.method public declared-synchronized showKeyboard()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->ab:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->E:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->N:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->N:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    :cond_2
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->b:I

    if-ge v1, v4, :cond_4

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->L:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "new height:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isDialogOffsetSetted:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->M:I

    add-int/2addr v1, v4

    int-to-double v4, v1

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    iget-wide v8, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->a:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->L:I

    iget-object v4, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->S:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_4
    const/16 v1, 0x50

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->e()V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->isOnShowEnableOk()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->setOkEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getOkButtonIsShowCallback()Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OkButtonIsShowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OkButtonIsShowCallback;->isEnableOkButton()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->setOkEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->F:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->K:I

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->e()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->H:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->X:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->X:Z

    new-instance v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$4;-><init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->aa:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->aa:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    iget v4, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->Y:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->W:Landroid/view/View$OnLayoutChangeListener;

    if-nez v0, :cond_8

    new-instance v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$3;-><init>(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;)V

    :goto_2
    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->W:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->W:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->W:Landroid/view/View$OnLayoutChangeListener;

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "show sys keyboard first time fail"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->l(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->f:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
