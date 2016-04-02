.class public Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/Object;

.field private static synthetic h:[I


# instance fields
.field private a:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

.field private b:Landroid/widget/EditText;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/alipay/android/app/alikeyboard/AliKeyboardType;",
            "Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alipay$android$app$alikeyboard$AliKeyboardType()[I
    .locals 3

    sget-object v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->h:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->values()[Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    invoke-virtual {v1}, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    invoke-virtual {v1}, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    invoke-virtual {v1}, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    invoke-virtual {v1}, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->h:[I

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

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->a:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->d:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->e:Z

    sget-object v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->None:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->a:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->d:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->e:Z

    sget-object v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->None:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/alipay/android/app/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V
    .locals 3

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->None:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->d:Z

    iput-object p2, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->a:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->a:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    invoke-static {}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->$SWITCH_TABLE$com$alipay$android$app$alikeyboard$AliKeyboardType()[I

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->a:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    invoke-virtual {v2}, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->a()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->setVisibility(I)V

    monitor-exit v1

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->hideKeyboard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->a()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/keyboard/MoneyKeyListener;

    invoke-direct {v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MoneyKeyListener;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$1(Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;)Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->a(Lcom/alipay/android/app/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 2

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->None:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    sget-object v0, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->a:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->setVisibility(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public initializeKeyboard(Landroid/widget/FrameLayout;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    new-instance v2, Lcom/alipay/android/app/alikeyboard/NumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/alipay/android/app/alikeyboard/NumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    new-instance v2, Lcom/alipay/android/app/alikeyboard/MoneyKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/alipay/android/app/alikeyboard/MoneyKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    new-instance v2, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->setOrientation(I)V

    const-string/jumbo v0, "keyboard_shape"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->removeAllViews()V

    return-void
.end method

.method public isShowKeyboard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->d:Z

    return v0
.end method

.method public onDel()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-lez v0, :cond_0

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method public onInput(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v1, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ltz v0, :cond_2

    if-le v0, v2, :cond_3

    :cond_2
    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public onOK()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    return-void
.end method

.method public showKeyboard(Lcom/alipay/android/app/alikeyboard/AliKeyboardType;Landroid/widget/EditText;J)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->e:Z

    const-wide/16 p3, 0xc8

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->a(Lcom/alipay/android/app/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->d:Z

    sget-object v0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->Show:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/android/app/alikeyboard/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/app/alikeyboard/a;-><init>(Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
