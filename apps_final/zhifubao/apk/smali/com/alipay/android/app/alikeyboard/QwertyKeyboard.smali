.class public Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;
.super Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;,
        Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;
    }
.end annotation


# instance fields
.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;

.field private f:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

.field private g:[Landroid/widget/TextView;

.field private h:[Landroid/widget/TextView;

.field private i:[Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private final k:[Ljava/lang/String;

.field private final l:[Ljava/lang/String;

.field private final m:[Ljava/lang/String;

.field private final n:[Ljava/lang/String;

.field private final o:[Ljava/lang/String;

.field private final p:[Ljava/lang/String;

.field private final q:[Ljava/lang/String;

.field private final r:[Ljava/lang/String;

.field private final s:[Ljava/lang/String;

.field private final t:[Ljava/lang/String;

.field private final u:[Ljava/lang/String;

.field private final v:[Ljava/lang/String;

.field private w:Landroid/widget/FrameLayout;

.field private x:D

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;)V
    .locals 19

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/alikeyboard/AbstractKeyboard;-><init>()V

    sget-object v2, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->e:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;

    sget-object v2, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->f:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

    const/16 v2, 0xa

    new-array v2, v2, [Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->g:[Landroid/widget/TextView;

    const/16 v2, 0x9

    new-array v2, v2, [Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->h:[Landroid/widget/TextView;

    const/4 v2, 0x7

    new-array v2, v2, [Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->i:[Landroid/widget/TextView;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "q"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "w"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "r"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "t"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "u"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "i"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "o"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "p"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->k:[Ljava/lang/String;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "s"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "d"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "f"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "g"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "h"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "j"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "k"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "l"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->l:[Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "z"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "x"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "c"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "v"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "b"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "m"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->m:[Ljava/lang/String;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Q"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "W"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "E"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "R"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "T"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Y"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "U"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "I"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "O"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "P"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->n:[Ljava/lang/String;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "A"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "S"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "D"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "F"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "G"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "H"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "J"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "K"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "L"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->o:[Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Z"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "X"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "C"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "V"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "B"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "N"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "M"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->p:[Ljava/lang/String;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->q:[Ljava/lang/String;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "~"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "!"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "#"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "%"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "\'"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "&"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "*"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "?"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->r:[Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "("

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "-"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "_"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ":"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, ";"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "/"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->s:[Ljava/lang/String;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "3"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "4"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "5"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "6"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "7"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "8"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "9"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->t:[Ljava/lang/String;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "<"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ">"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "+"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "="

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "\u00f7"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "`"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "]"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->u:[Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "\\"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "|"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "\""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "$"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "\uffe5"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "{"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "}"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->v:[Ljava/lang/String;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->x:D

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->b:Lcom/alipay/android/app/alikeyboard/OnKeyboardListener;

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string/jumbo v3, "keyboard_qwerty"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->a:Landroid/view/ViewGroup;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->w:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->x:D

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v2, :cond_d

    :goto_0
    int-to-double v3, v2

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v5, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v9

    sub-double/2addr v3, v5

    double-to-int v3, v3

    div-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iput v3, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4012000000000000L    # 4.5

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v5, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v9

    sub-double/2addr v3, v5

    const-wide v5, 0x3ff7333333333333L    # 1.45

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v5, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v9

    add-double/2addr v3, v5

    double-to-int v9, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v2, v2

    div-int/lit8 v10, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    mul-int/lit8 v11, v2, 0x4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    add-int v12, v2, v10

    const/4 v2, 0x0

    move v7, v2

    :goto_1
    if-lt v7, v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const-wide v5, 0x4050400000000000L    # 65.0

    mul-double/2addr v5, v2

    double-to-int v5, v5

    const-wide v6, 0x4053800000000000L    # 78.0

    mul-double/2addr v6, v2

    double-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v5, 0x33

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    mul-double/2addr v2, v6

    double-to-int v2, v2

    sub-int v2, v5, v2

    mul-int/lit8 v2, v2, 0x2

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    const-string/jumbo v3, "keyborad_show"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->w:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->w:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-nez v7, :cond_4

    new-array v3, v13, [Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->g:[Landroid/widget/TextView;

    const/4 v3, 0x0

    move v5, v3

    :goto_2
    if-lt v5, v13, :cond_3

    :cond_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    mul-double v14, v14, v16

    double-to-float v14, v14

    invoke-virtual {v4, v6, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->g:[Landroid/widget/TextView;

    aput-object v4, v3, v5

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    if-ne v7, v3, :cond_5

    new-array v3, v13, [Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->h:[Landroid/widget/TextView;

    const/4 v3, 0x0

    move v5, v3

    :goto_3
    if-ge v5, v13, :cond_2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, 0x0

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    mul-double v14, v14, v16

    double-to-float v14, v14

    invoke-virtual {v4, v6, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->h:[Landroid/widget/TextView;

    aput-object v4, v3, v5

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    :cond_5
    const/4 v3, 0x2

    if-ne v7, v3, :cond_8

    add-int/lit8 v3, v13, -0x2

    new-array v3, v3, [Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->i:[Landroid/widget/TextView;

    const/4 v3, 0x0

    move v6, v3

    :goto_4
    if-ge v6, v13, :cond_2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v6, :cond_6

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    :goto_5
    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v13, -0x1

    if-ne v6, v5, :cond_7

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    int-to-double v15, v15

    const-wide/high16 v17, 0x3fe8000000000000L    # 0.75

    mul-double v15, v15, v17

    double-to-float v15, v15

    invoke-virtual {v5, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->i:[Landroid/widget/TextView;

    add-int/lit8 v15, v6, -0x1

    aput-object v5, v14, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    move v6, v3

    :goto_6
    if-ge v6, v13, :cond_2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v6, :cond_9

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v4, v5

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->d:Landroid/widget/TextView;

    :goto_7
    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_6

    :cond_9
    const/4 v4, 0x1

    if-ne v6, v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_7

    :cond_a
    const/4 v4, 0x2

    if-ne v6, v4, :cond_b

    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_7

    :cond_b
    const/4 v4, 0x3

    if-ne v6, v4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->y:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_7

    :cond_c
    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_7

    :cond_d
    move v2, v3

    goto/16 :goto_0
.end method

.method private a(Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;)V
    .locals 7

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string/jumbo v1, "keyboard_key_shift_up"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->k:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->l:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->m:[Ljava/lang/String;

    :goto_0
    move v3, v4

    :goto_1
    iget-object v5, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->g:[Landroid/widget/TextView;

    array-length v5, v5

    if-lt v3, v5, :cond_3

    move v2, v4

    :goto_2
    iget-object v3, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->h:[Landroid/widget/TextView;

    array-length v3, v3

    if-lt v2, v3, :cond_4

    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->i:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v4, v1, :cond_5

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string/jumbo v1, "keyboard_key_shift_down"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->n:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->o:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->p:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->d:Landroid/widget/TextView;

    const-string/jumbo v1, "abc"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "123"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->q:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->r:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->s:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "#+="

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->t:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->u:[Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->v:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->g:[Landroid/widget/TextView;

    aget-object v5, v5, v3

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->h:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    aget-object v5, v1, v2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->i:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "key_del1"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->b()V

    :cond_0
    :goto_0
    return v8

    :cond_1
    const-string/jumbo v1, "key_enter"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "key_space"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "key_ABC"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->f:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

    sget-object v1, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;->down:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

    :goto_1
    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->f:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->e:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;

    iget-object v1, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->f:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->a(Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "key_123"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->e:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;

    sget-object v1, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;->num:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;

    :goto_2
    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->e:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;

    sget-object v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;->up:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

    iput-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->f:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->e:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;

    iget-object v1, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->f:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->a(Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$ShiftType;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/alikeyboard/QwertyKeyboard$QwertType;

    goto :goto_2

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->w:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, p1}, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    iget-wide v6, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v2, v4

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    iget-wide v6, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->x:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int/2addr v2, v4

    invoke-virtual {v0, v3, v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "key_enter"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->c()V

    :cond_9
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/QwertyKeyboard;->j:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
