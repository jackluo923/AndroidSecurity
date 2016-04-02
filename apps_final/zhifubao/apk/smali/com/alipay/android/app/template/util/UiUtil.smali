.class public Lcom/alipay/android/app/template/util/UiUtil;
.super Ljava/lang/Object;
.source "UiUtil.java"


# static fields
.field public static final DEFAULT_TEXT_SIZE:I = 0x10

.field public static DP:F

.field public static NAVIGATION_BAR_HEIGHT:I

.field public static SCREEN_HEIGHT:I

.field public static SCREEN_WIDTH:I

.field public static STATUS_BAR_HEIGHT:I

.field private static a:Z

.field private static synthetic b:[I

.field private static synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 67
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    .line 68
    sput v1, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    .line 69
    sput v1, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    .line 70
    sput v1, Lcom/alipay/android/app/template/util/UiUtil;->STATUS_BAR_HEIGHT:I

    .line 71
    sput v2, Lcom/alipay/android/app/template/util/UiUtil;->NAVIGATION_BAR_HEIGHT:I

    .line 73
    sput-boolean v2, Lcom/alipay/android/app/template/util/UiUtil;->a:Z

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/alipay/android/app/template/util/UiUtil;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/view/AlignType;->values()[Lcom/alipay/android/app/template/view/AlignType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->baseline:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->center:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->center_horizontal:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->center_vertical:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->end:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->left:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->right:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->start:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/alipay/android/app/template/util/UiUtil;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)[I
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 219
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 220
    const/16 v0, 0xff

    aput v0, v1, v5

    .line 221
    const-string/jumbo v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 222
    const-string/jumbo v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 221
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 224
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 232
    return-object v1

    .line 225
    :cond_0
    if-ne v0, v5, :cond_1

    .line 226
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 227
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v0

    .line 224
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    goto :goto_1
.end method

.method private static synthetic b()[I
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/alipay/android/app/template/util/UiUtil;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/view/ViewType;->values()[Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->a:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1b

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1a

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->button:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_19

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->checkbox:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_18

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->dialog:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_17

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->div:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_16

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->dragList:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_15

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->form:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_14

    :goto_8
    :try_start_8
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->iframe:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_13

    :goto_9
    :try_start_9
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->img:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_12

    :goto_a
    :try_start_a
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->input:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_11

    :goto_b
    :try_start_b
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->label:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_10

    :goto_c
    :try_start_c
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->marquee:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_f

    :goto_d
    :try_start_d
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->money:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_e

    :goto_e
    :try_start_e
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->month:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_d

    :goto_f
    :try_start_f
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->nav:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_c

    :goto_10
    :try_start_10
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->num:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_b

    :goto_11
    :try_start_11
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->option:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_a

    :goto_12
    :try_start_12
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->p:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_9

    :goto_13
    :try_start_13
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->password:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_8

    :goto_14
    :try_start_14
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->payword:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_7

    :goto_15
    :try_start_15
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->progresswheel:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_6

    :goto_16
    :try_start_16
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->radio:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_5

    :goto_17
    :try_start_17
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->rtlabel:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_4

    :goto_18
    :try_start_18
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->select:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_3

    :goto_19
    :try_start_19
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->span:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_2

    :goto_1a
    :try_start_1a
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->templatelist:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1

    :goto_1b
    :try_start_1b
    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->text:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_0

    :goto_1c
    sput-object v0, Lcom/alipay/android/app/template/util/UiUtil;->c:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1c

    :catch_1
    move-exception v1

    goto :goto_1b

    :catch_2
    move-exception v1

    goto :goto_1a

    :catch_3
    move-exception v1

    goto :goto_19

    :catch_4
    move-exception v1

    goto :goto_18

    :catch_5
    move-exception v1

    goto :goto_17

    :catch_6
    move-exception v1

    goto :goto_16

    :catch_7
    move-exception v1

    goto :goto_15

    :catch_8
    move-exception v1

    goto :goto_14

    :catch_9
    move-exception v1

    goto :goto_13

    :catch_a
    move-exception v1

    goto :goto_12

    :catch_b
    move-exception v1

    goto/16 :goto_11

    :catch_c
    move-exception v1

    goto/16 :goto_10

    :catch_d
    move-exception v1

    goto/16 :goto_f

    :catch_e
    move-exception v1

    goto/16 :goto_e

    :catch_f
    move-exception v1

    goto/16 :goto_d

    :catch_10
    move-exception v1

    goto/16 :goto_c

    :catch_11
    move-exception v1

    goto/16 :goto_b

    :catch_12
    move-exception v1

    goto/16 :goto_a

    :catch_13
    move-exception v1

    goto/16 :goto_9

    :catch_14
    move-exception v1

    goto/16 :goto_8

    :catch_15
    move-exception v1

    goto/16 :goto_7

    :catch_16
    move-exception v1

    goto/16 :goto_6

    :catch_17
    move-exception v1

    goto/16 :goto_5

    :catch_18
    move-exception v1

    goto/16 :goto_4

    :catch_19
    move-exception v1

    goto/16 :goto_3

    :catch_1a
    move-exception v1

    goto/16 :goto_2

    :catch_1b
    move-exception v1

    goto/16 :goto_1
.end method

.method public static blur(Landroid/graphics/Bitmap;Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 568
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 572
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 573
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 570
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 574
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 576
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 577
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 578
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 579
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 580
    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/alipay/android/app/template/util/UiUtil;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 582
    return-object v0
.end method

.method public static changeWidthHeight(I)V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    if-ge v0, v1, :cond_1

    .line 87
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    .line 88
    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    sput v1, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    .line 89
    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    if-le v0, v1, :cond_0

    .line 91
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    .line 92
    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    sput v1, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    .line 93
    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    goto :goto_0
.end method

.method public static checkSoCopy()V
    .locals 3

    .prologue
    .line 1186
    :try_start_0
    const-string/jumbo v0, "jscore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1188
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 1189
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1191
    const-string/jumbo v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1193
    :try_start_1
    invoke-static {v1}, Lcom/alipay/android/app/template/util/UiUtil;->copyLibs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1194
    const-string/jumbo v1, "app_plugins"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1195
    if-eqz v0, :cond_0

    .line 1196
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->copyLibs(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static convertPxToDp(I)I
    .locals 2

    .prologue
    .line 293
    invoke-static {p0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v1

    .line 294
    invoke-static {p0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v0

    .line 295
    if-nez v1, :cond_0

    .line 296
    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 298
    :cond_0
    return v0
.end method

.method public static convertUnit(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static convertUnit(Ljava/lang/String;Z)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 264
    const-string/jumbo v1, "auto"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const/high16 v1, -0x40000000    # -2.0f

    .line 267
    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->makeUnitSpec(II)I

    move-result v0

    .line 289
    :goto_0
    return v0

    .line 269
    :cond_0
    const-string/jumbo v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    const/high16 v0, 0x40000000    # 2.0f

    .line 280
    :cond_1
    :goto_1
    const-string/jumbo v1, "%"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "px"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    const/4 v1, 0x0

    .line 282
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 284
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 289
    :cond_2
    :goto_2
    float-to-int v1, v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->makeUnitSpec(II)I

    move-result v0

    goto :goto_0

    .line 271
    :cond_3
    const-string/jumbo v1, "px"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    if-eqz p1, :cond_1

    .line 275
    const/high16 v0, 0x20000000

    goto :goto_1

    .line 285
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method

.method public static copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 1281
    const/4 v1, 0x0

    .line 1283
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1284
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 1286
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    const/16 v1, 0x2000

    :try_start_1
    new-array v1, v1, [B

    .line 1289
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_2

    .line 1292
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1295
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1297
    :cond_1
    return-void

    .line 1290
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1295
    :goto_2
    if-eqz v0, :cond_1

    goto :goto_1

    .line 1294
    :catchall_0
    move-exception v0

    .line 1295
    :goto_3
    if-eqz v1, :cond_3

    .line 1296
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1297
    :cond_3
    throw v0

    .line 1294
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public static copyLibs(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1215
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1240
    :goto_0
    return v0

    .line 1220
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1221
    if-eqz v3, :cond_1

    .line 1224
    array-length v4, v3

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_2

    :cond_1
    move v0, v1

    .line 1240
    goto :goto_0

    .line 1224
    :cond_2
    aget-object v0, v3, v2

    .line 1225
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android-phone-businesscommon-templatemanager"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1226
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 1227
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 1229
    :cond_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1224
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1230
    :cond_5
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 1231
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "libjscore.so"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1232
    const-string/jumbo v1, "libjscore.so"

    invoke-static {v5, v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->copySoFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V

    .line 1233
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static copySoFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1244
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1245
    const-string/jumbo v1, "plugins_lib"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1247
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 1250
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 1251
    :cond_0
    const/4 v1, 0x0

    .line 1253
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 1254
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 1253
    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    :try_start_1
    invoke-static {v0, v3}, Lcom/alipay/android/app/template/util/UiUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V

    .line 1256
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v3

    .line 1256
    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    .line 1258
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1263
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1265
    :cond_1
    return-void

    .line 1260
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1263
    if-eqz v0, :cond_1

    goto :goto_0

    .line 1262
    :catchall_0
    move-exception v0

    .line 1263
    :goto_2
    if-eqz v1, :cond_2

    .line 1264
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1265
    :cond_2
    throw v0

    .line 1262
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 1260
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static defaultScale(IILandroid/graphics/drawable/BitmapDrawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 975
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 977
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v2, v0

    .line 978
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v3, v0

    .line 979
    int-to-float v0, p0

    div-float/2addr v0, v2

    int-to-float v4, p1

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 981
    int-to-float v0, p1

    div-float/2addr v0, v3

    .line 985
    :goto_0
    mul-float v4, v2, v0

    float-to-int v4, v4

    .line 986
    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 987
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 988
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 989
    new-instance v7, Landroid/graphics/Rect;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-direct {v7, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 990
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 991
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 992
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 993
    invoke-virtual {v6, v1, v7, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 994
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 983
    :cond_0
    int-to-float v0, p0

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method public static doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 34

    .prologue
    .line 589
    if-nez p2, :cond_d

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 595
    :goto_0
    if-gtz p1, :cond_0

    .line 596
    const/4 v2, 0x0

    .line 790
    :goto_1
    return-object v2

    .line 599
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 600
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 602
    mul-int v3, v5, v9

    new-array v3, v3, [I

    .line 603
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 605
    add-int/lit8 v21, v5, -0x1

    .line 606
    add-int/lit8 v22, v9, -0x1

    .line 607
    mul-int v4, v5, v9

    .line 608
    add-int v6, p1, p1

    add-int/lit8 v23, v6, 0x1

    .line 610
    new-array v0, v4, [I

    move-object/from16 v24, v0

    .line 611
    new-array v0, v4, [I

    move-object/from16 v25, v0

    .line 612
    new-array v0, v4, [I

    move-object/from16 v26, v0

    .line 614
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 616
    add-int/lit8 v4, v23, 0x1

    shr-int/lit8 v4, v4, 0x1

    .line 617
    mul-int v6, v4, v4

    .line 618
    mul-int/lit16 v4, v6, 0x100

    new-array v0, v4, [I

    move-object/from16 v28, v0

    .line 619
    const/4 v4, 0x0

    :goto_2
    mul-int/lit16 v7, v6, 0x100

    if-lt v4, v7, :cond_1

    .line 623
    const/4 v6, 0x0

    .line 625
    const/4 v4, 0x3

    move/from16 v0, v23

    filled-new-array {v0, v4}, [I

    move-result-object v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 630
    add-int/lit8 v29, p1, 0x1

    .line 634
    const/4 v7, 0x0

    move/from16 v19, v6

    move v13, v6

    move/from16 v20, v7

    :goto_3
    move/from16 v0, v20

    if-lt v0, v9, :cond_2

    .line 707
    const/4 v14, 0x0

    :goto_4
    if-lt v14, v5, :cond_7

    .line 789
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_1

    .line 620
    :cond_1
    div-int v7, v4, v6

    aput v7, v28, v4

    .line 619
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 635
    :cond_2
    const/4 v6, 0x0

    .line 636
    move/from16 v0, p1

    neg-int v7, v0

    move v8, v6

    move v10, v6

    move v11, v6

    move v12, v6

    move v14, v7

    move v15, v6

    move/from16 v16, v6

    move/from16 v17, v6

    move v7, v6

    :goto_5
    move/from16 v0, p1

    if-le v14, v0, :cond_3

    .line 658
    const/4 v14, 0x0

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v14

    move/from16 v14, p1

    :goto_6
    if-lt v15, v5, :cond_5

    .line 705
    add-int v6, v19, v5

    .line 634
    add-int/lit8 v7, v20, 0x1

    move/from16 v19, v6

    move/from16 v20, v7

    goto :goto_3

    .line 637
    :cond_3
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v18, v18, v13

    aget v18, v3, v18

    .line 638
    add-int v30, v14, p1

    aget-object v30, v4, v30

    .line 639
    const/16 v31, 0x0

    const/high16 v32, 0xff0000

    and-int v32, v32, v18

    shr-int/lit8 v32, v32, 0x10

    aput v32, v30, v31

    .line 640
    const/16 v31, 0x1

    const v32, 0xff00

    and-int v32, v32, v18

    shr-int/lit8 v32, v32, 0x8

    aput v32, v30, v31

    .line 641
    const/16 v31, 0x2

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aput v18, v30, v31

    .line 642
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v18

    sub-int v18, v29, v18

    .line 643
    const/16 v31, 0x0

    aget v31, v30, v31

    mul-int v31, v31, v18

    add-int v17, v17, v31

    .line 644
    const/16 v31, 0x1

    aget v31, v30, v31

    mul-int v31, v31, v18

    add-int v16, v16, v31

    .line 645
    const/16 v31, 0x2

    aget v31, v30, v31

    mul-int v18, v18, v31

    add-int v15, v15, v18

    .line 646
    if-lez v14, :cond_4

    .line 647
    const/16 v18, 0x0

    aget v18, v30, v18

    add-int v8, v8, v18

    .line 648
    const/16 v18, 0x1

    aget v18, v30, v18

    add-int v7, v7, v18

    .line 649
    const/16 v18, 0x2

    aget v18, v30, v18

    add-int v6, v6, v18

    .line 636
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 651
    :cond_4
    const/16 v18, 0x0

    aget v18, v30, v18

    add-int v12, v12, v18

    .line 652
    const/16 v18, 0x1

    aget v18, v30, v18

    add-int v11, v11, v18

    .line 653
    const/16 v18, 0x2

    aget v18, v30, v18

    add-int v10, v10, v18

    goto :goto_7

    .line 660
    :cond_5
    aget v30, v28, v18

    aput v30, v24, v13

    .line 661
    aget v30, v28, v17

    aput v30, v25, v13

    .line 662
    aget v30, v28, v16

    aput v30, v26, v13

    .line 664
    sub-int v18, v18, v12

    .line 665
    sub-int v17, v17, v11

    .line 666
    sub-int v16, v16, v10

    .line 668
    sub-int v30, v14, p1

    add-int v30, v30, v23

    .line 669
    rem-int v30, v30, v23

    aget-object v30, v4, v30

    .line 671
    const/16 v31, 0x0

    aget v31, v30, v31

    sub-int v12, v12, v31

    .line 672
    const/16 v31, 0x1

    aget v31, v30, v31

    sub-int v11, v11, v31

    .line 673
    const/16 v31, 0x2

    aget v31, v30, v31

    sub-int v10, v10, v31

    .line 675
    if-nez v20, :cond_6

    .line 676
    add-int v31, v15, p1

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    aput v31, v27, v15

    .line 678
    :cond_6
    aget v31, v27, v15

    add-int v31, v31, v19

    aget v31, v3, v31

    .line 680
    const/16 v32, 0x0

    const/high16 v33, 0xff0000

    and-int v33, v33, v31

    shr-int/lit8 v33, v33, 0x10

    aput v33, v30, v32

    .line 681
    const/16 v32, 0x1

    const v33, 0xff00

    and-int v33, v33, v31

    shr-int/lit8 v33, v33, 0x8

    aput v33, v30, v32

    .line 682
    const/16 v32, 0x2

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    aput v31, v30, v32

    .line 684
    const/16 v31, 0x0

    aget v31, v30, v31

    add-int v8, v8, v31

    .line 685
    const/16 v31, 0x1

    aget v31, v30, v31

    add-int v7, v7, v31

    .line 686
    const/16 v31, 0x2

    aget v30, v30, v31

    add-int v6, v6, v30

    .line 688
    add-int v18, v18, v8

    .line 689
    add-int v17, v17, v7

    .line 690
    add-int v16, v16, v6

    .line 692
    add-int/lit8 v14, v14, 0x1

    rem-int v14, v14, v23

    .line 693
    rem-int v30, v14, v23

    aget-object v30, v4, v30

    .line 695
    const/16 v31, 0x0

    aget v31, v30, v31

    add-int v12, v12, v31

    .line 696
    const/16 v31, 0x1

    aget v31, v30, v31

    add-int v11, v11, v31

    .line 697
    const/16 v31, 0x2

    aget v31, v30, v31

    add-int v10, v10, v31

    .line 699
    const/16 v31, 0x0

    aget v31, v30, v31

    sub-int v8, v8, v31

    .line 700
    const/16 v31, 0x1

    aget v31, v30, v31

    sub-int v7, v7, v31

    .line 701
    const/16 v31, 0x2

    aget v30, v30, v31

    sub-int v6, v6, v30

    .line 703
    add-int/lit8 v13, v13, 0x1

    .line 658
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 708
    :cond_7
    const/4 v7, 0x0

    .line 709
    move/from16 v0, p1

    neg-int v6, v0

    mul-int v8, v6, v5

    .line 710
    move/from16 v0, p1

    neg-int v6, v0

    move v10, v7

    move v11, v7

    move v12, v7

    move v13, v7

    move/from16 v18, v6

    move v15, v7

    move/from16 v16, v7

    move/from16 v17, v7

    move v6, v8

    move v8, v7

    :goto_8
    move/from16 v0, v18

    move/from16 v1, p1

    if-le v0, v1, :cond_8

    .line 741
    const/4 v6, 0x0

    move/from16 v18, v16

    move/from16 v19, v17

    move/from16 v16, v6

    move/from16 v17, v15

    move/from16 v15, p1

    move v6, v7

    move v7, v8

    move v8, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    :goto_9
    move/from16 v0, v16

    if-lt v0, v9, :cond_b

    .line 707
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 711
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int v20, v19, v14

    .line 713
    add-int v19, v18, p1

    aget-object v21, v4, v19

    .line 715
    const/16 v19, 0x0

    aget v30, v24, v20

    aput v30, v21, v19

    .line 716
    const/16 v19, 0x1

    aget v30, v25, v20

    aput v30, v21, v19

    .line 717
    const/16 v19, 0x2

    aget v30, v26, v20

    aput v30, v21, v19

    .line 719
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v19

    sub-int v30, v29, v19

    .line 721
    aget v19, v24, v20

    mul-int v19, v19, v30

    add-int v19, v19, v17

    .line 722
    aget v17, v25, v20

    mul-int v17, v17, v30

    add-int v17, v17, v16

    .line 723
    aget v16, v26, v20

    mul-int v16, v16, v30

    add-int v16, v16, v15

    .line 725
    if-lez v18, :cond_a

    .line 726
    const/4 v15, 0x0

    aget v15, v21, v15

    add-int/2addr v10, v15

    .line 727
    const/4 v15, 0x1

    aget v15, v21, v15

    add-int/2addr v8, v15

    .line 728
    const/4 v15, 0x2

    aget v15, v21, v15

    add-int/2addr v7, v15

    .line 735
    :goto_a
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 736
    add-int/2addr v6, v5

    .line 710
    :cond_9
    add-int/lit8 v15, v18, 0x1

    move/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v19

    goto :goto_8

    .line 730
    :cond_a
    const/4 v15, 0x0

    aget v15, v21, v15

    add-int/2addr v13, v15

    .line 731
    const/4 v15, 0x1

    aget v15, v21, v15

    add-int/2addr v12, v15

    .line 732
    const/4 v15, 0x2

    aget v15, v21, v15

    add-int/2addr v11, v15

    goto :goto_a

    .line 743
    :cond_b
    const/high16 v20, -0x1000000

    aget v21, v3, v13

    and-int v20, v20, v21

    aget v21, v28, v19

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    .line 744
    aget v21, v28, v18

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    aget v21, v28, v17

    or-int v20, v20, v21

    .line 743
    aput v20, v3, v13

    .line 746
    sub-int v19, v19, v12

    .line 747
    sub-int v18, v18, v11

    .line 748
    sub-int v17, v17, v10

    .line 750
    sub-int v20, v15, p1

    add-int v20, v20, v23

    .line 751
    rem-int v20, v20, v23

    aget-object v20, v4, v20

    .line 753
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v12, v12, v21

    .line 754
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v11, v11, v21

    .line 755
    const/16 v21, 0x2

    aget v21, v20, v21

    sub-int v10, v10, v21

    .line 757
    if-nez v14, :cond_c

    .line 758
    add-int v21, v16, v29

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    mul-int v21, v21, v5

    aput v21, v27, v16

    .line 760
    :cond_c
    aget v21, v27, v16

    add-int v21, v21, v14

    .line 762
    const/16 v30, 0x0

    aget v31, v24, v21

    aput v31, v20, v30

    .line 763
    const/16 v30, 0x1

    aget v31, v25, v21

    aput v31, v20, v30

    .line 764
    const/16 v30, 0x2

    aget v21, v26, v21

    aput v21, v20, v30

    .line 766
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v8, v8, v21

    .line 767
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v7, v7, v21

    .line 768
    const/16 v21, 0x2

    aget v20, v20, v21

    add-int v6, v6, v20

    .line 770
    add-int v19, v19, v8

    .line 771
    add-int v18, v18, v7

    .line 772
    add-int v17, v17, v6

    .line 774
    add-int/lit8 v15, v15, 0x1

    rem-int v15, v15, v23

    .line 775
    aget-object v20, v4, v15

    .line 777
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v12, v12, v21

    .line 778
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v11, v11, v21

    .line 779
    const/16 v21, 0x2

    aget v21, v20, v21

    add-int v10, v10, v21

    .line 781
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v8, v8, v21

    .line 782
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v7, v7, v21

    .line 783
    const/16 v21, 0x2

    aget v20, v20, v21

    sub-int v6, v6, v20

    .line 785
    add-int/2addr v13, v5

    .line 741
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    :cond_d
    move-object/from16 v2, p0

    goto/16 :goto_0
.end method

.method public static varargs genButtonSelector(Landroid/content/Context;Lcom/alipay/android/app/template/view/ViewType;II[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const v9, 0x101009e

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 867
    .line 868
    if-eqz p4, :cond_a

    array-length v0, p4

    if-lez v0, :cond_a

    .line 869
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move v0, v1

    move v2, v3

    .line 870
    :goto_0
    array-length v6, p4

    if-lt v0, v6, :cond_0

    .line 906
    if-eqz v2, :cond_9

    move-object v0, v4

    .line 908
    :goto_1
    return-object v0

    .line 871
    :cond_0
    aget-object v6, p4, v0

    .line 872
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 873
    invoke-static {v6, p0, p2, p3}, Lcom/alipay/android/app/template/util/UiUtil;->getLocalDrawable(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 877
    sget-object v2, Lcom/alipay/android/app/template/view/ViewType;->checkbox:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/alipay/android/app/template/view/ViewType;->radio:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v2, :cond_2

    move v6, v1

    .line 878
    :goto_2
    if-eqz v6, :cond_3

    const v2, 0x10100a0

    .line 880
    :goto_3
    if-nez v0, :cond_5

    .line 881
    if-eqz v6, :cond_4

    .line 882
    new-array v6, v3, [I

    neg-int v2, v2

    aput v2, v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v2, v1

    .line 870
    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v6, v3

    .line 877
    goto :goto_2

    .line 879
    :cond_3
    const v2, 0x10100a7

    goto :goto_3

    .line 884
    :cond_4
    const/4 v6, 0x3

    new-array v6, v6, [I

    .line 885
    aput v9, v6, v1

    neg-int v2, v2

    aput v2, v6, v3

    .line 886
    const v2, -0x101009c

    aput v2, v6, v8

    .line 884
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v2, v1

    goto :goto_4

    .line 888
    :cond_5
    if-ne v0, v3, :cond_7

    .line 889
    if-eqz v6, :cond_6

    .line 890
    new-array v6, v3, [I

    aput v2, v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v2, v1

    goto :goto_4

    .line 892
    :cond_6
    new-array v6, v8, [I

    .line 893
    aput v9, v6, v1

    aput v2, v6, v3

    .line 892
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 894
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    invoke-virtual {v5, v2, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v2, v1

    goto :goto_4

    .line 898
    :cond_7
    if-ne v0, v8, :cond_8

    .line 899
    if-nez v6, :cond_8

    .line 901
    new-array v2, v3, [I

    const v6, -0x101009e

    aput v6, v2, v1

    .line 900
    invoke-virtual {v5, v2, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_8
    move v2, v1

    goto :goto_4

    :cond_9
    move-object v0, v5

    .line 906
    goto :goto_1

    :cond_a
    move-object v0, v4

    .line 908
    goto :goto_1

    .line 894
    :array_0
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public static genDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    .prologue
    .line 1103
    new-instance v0, Lcom/alipay/android/app/template/util/UiUtil$2;

    invoke-direct {v0}, Lcom/alipay/android/app/template/util/UiUtil$2;-><init>()V

    return-object v0
.end method

.method public static genTextSelector([Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v3, 0x4

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 492
    .line 493
    if-eqz p0, :cond_2

    array-length v0, p0

    if-lez v0, :cond_2

    .line 494
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 496
    new-array v5, v3, [I

    move v1, v2

    move v3, v4

    .line 520
    :goto_0
    array-length v6, p0

    if-lt v1, v6, :cond_0

    .line 526
    if-nez v3, :cond_2

    .line 527
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v1

    .line 531
    :goto_1
    return-object v0

    .line 498
    :cond_0
    aget-object v6, p0, v1

    .line 499
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 504
    packed-switch v1, :pswitch_data_0

    :goto_2
    move v3, v2

    .line 520
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    :pswitch_0
    new-array v3, v4, [I

    const v7, 0x101009e

    aput v7, v3, v2

    aput-object v3, v0, v2

    .line 507
    invoke-static {v6}, Lcom/alipay/android/app/template/util/UiUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v2

    move v3, v2

    .line 508
    goto :goto_3

    .line 510
    :pswitch_1
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v4

    .line 512
    invoke-static {v6}, Lcom/alipay/android/app/template/util/UiUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v4

    .line 513
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    aput-object v3, v0, v8

    .line 515
    invoke-static {v6}, Lcom/alipay/android/app/template/util/UiUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v8

    move v3, v2

    .line 516
    goto :goto_3

    .line 518
    :pswitch_2
    new-array v3, v4, [I

    const v7, -0x101009e

    aput v7, v3, v2

    aput-object v3, v0, v9

    .line 519
    invoke-static {v6}, Lcom/alipay/android/app/template/util/UiUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v9

    goto :goto_2

    .line 531
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 510
    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    .line 513
    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public static generateBackGroundDrawable(FIF[Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    const/high16 v9, 0x437f0000    # 255.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 402
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 403
    if-eqz p3, :cond_d

    .line 404
    aget-object v0, p3, v7

    if-nez v0, :cond_3

    aget-object v0, p3, v8

    if-nez v0, :cond_3

    .line 405
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 406
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 407
    float-to-int v2, p0

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 409
    :cond_0
    aget-object v1, p3, v1

    invoke-static {v1}, Lcom/alipay/android/app/template/util/UiUtil;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 410
    cmpl-float v1, p2, v6

    if-lez v1, :cond_1

    .line 411
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 413
    :cond_1
    cmpl-float v1, p4, v6

    if-lez v1, :cond_2

    .line 414
    mul-float v1, p4, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 475
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    move v0, v1

    .line 418
    :goto_1
    array-length v2, p3

    if-lt v0, v2, :cond_4

    move-object v0, v3

    .line 475
    goto :goto_0

    .line 419
    :cond_4
    aget-object v2, p3, v0

    .line 420
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 421
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 424
    const/4 v5, -0x1

    if-eq p1, v5, :cond_5

    .line 425
    float-to-int v5, p0

    invoke-virtual {v4, v5, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 427
    :cond_5
    if-eqz p3, :cond_6

    .line 428
    invoke-static {v2}, Lcom/alipay/android/app/template/util/UiUtil;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 431
    :cond_6
    cmpl-float v2, p2, v6

    if-lez v2, :cond_7

    .line 432
    invoke-virtual {v4, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 434
    :cond_7
    cmpl-float v2, p4, v6

    if-lez v2, :cond_8

    .line 435
    mul-float v2, p4, v9

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 438
    :cond_8
    if-nez v0, :cond_b

    .line 440
    aget-object v2, p3, v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 441
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 446
    :goto_2
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 418
    :cond_9
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 444
    :cond_a
    new-array v2, v7, [I

    const v5, 0x101009e

    aput v5, v2, v1

    goto :goto_2

    .line 447
    :cond_b
    if-ne v0, v7, :cond_c

    .line 448
    new-array v2, v8, [I

    fill-array-data v2, :array_1

    .line 450
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 451
    :cond_c
    if-ne v0, v8, :cond_9

    .line 452
    new-array v2, v7, [I

    const v5, -0x101009e

    aput v5, v2, v1

    .line 453
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 458
    :cond_d
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 459
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 460
    const/4 v2, -0x1

    if-ne p1, v2, :cond_e

    move p1, v1

    .line 463
    :cond_e
    cmpl-float v2, p0, v6

    if-lez v2, :cond_f

    .line 464
    float-to-int v2, p0

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 466
    :cond_f
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 467
    cmpl-float v1, p2, v6

    if-lez v1, :cond_10

    .line 468
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 470
    :cond_10
    cmpl-float v1, p4, v6

    if-lez v1, :cond_2

    .line 471
    mul-float v1, p4, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    goto/16 :goto_0

    .line 441
    nop

    :array_0
    .array-data 4
        0x101009e
        -0x10100a7
    .end array-data

    .line 448
    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public static getColorByValue(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 207
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const v0, -0x777778

    .line 214
    :goto_0
    return v0

    .line 210
    :cond_0
    const-string/jumbo v0, "rgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 212
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    .line 214
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getGravityByAlign(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 236
    const-string/jumbo v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    const/16 v0, 0x11

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    const-string/jumbo v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    const-string/jumbo v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getKeyboardType(Lcom/alipay/android/app/template/view/ViewType;)Lcom/alipay/android/app/template/KeyboardType;
    .locals 3

    .prologue
    .line 1136
    sget-object v0, Lcom/alipay/android/app/template/KeyboardType;->text:Lcom/alipay/android/app/template/KeyboardType;

    .line 1137
    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->b()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1144
    :goto_0
    :pswitch_0
    return-object v0

    .line 1139
    :pswitch_1
    sget-object v0, Lcom/alipay/android/app/template/KeyboardType;->money:Lcom/alipay/android/app/template/KeyboardType;

    goto :goto_0

    .line 1143
    :pswitch_2
    sget-object v0, Lcom/alipay/android/app/template/KeyboardType;->num:Lcom/alipay/android/app/template/KeyboardType;

    goto :goto_0

    .line 1137
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getLocalDrawable(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 811
    const/4 v7, 0x0

    .line 813
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 814
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 815
    if-lez v2, :cond_0

    .line 816
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 819
    :cond_0
    const-string/jumbo v3, "com.alipay.android.app.template"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 820
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 823
    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 824
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 825
    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 826
    if-lez v3, :cond_2

    .line 827
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 830
    :cond_2
    const-string/jumbo v3, "drawable"

    invoke-static {p1, v2, v3, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 831
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_6

    .line 832
    if-ne p2, v5, :cond_3

    if-eq p3, v5, :cond_5

    .line 834
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 833
    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 835
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 836
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, p3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 838
    if-gtz v3, :cond_4

    if-gtz v2, :cond_4

    .line 839
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 861
    :goto_0
    return-object v0

    .line 842
    :cond_4
    int-to-float v2, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 843
    int-to-float v3, p3

    .line 844
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 843
    div-float/2addr v3, v4

    .line 845
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 846
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 848
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    .line 847
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 850
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 851
    if-eqz v1, :cond_6

    .line 852
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 856
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v7

    goto :goto_0
.end method

.method public static getPaddingDrawable(IILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 795
    const/high16 v0, 0x40c00000    # 6.0f

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 796
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 797
    const/16 v2, 0x140

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 798
    invoke-static {p2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 799
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 800
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 799
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 801
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 802
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 803
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 804
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 806
    return-object v1
.end method

.method public static getPercentFromString(Ljava/lang/String;)F
    .locals 2

    .prologue
    .line 328
    const-string/jumbo v0, "%"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    .line 332
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 333
    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 334
    goto :goto_0
.end method

.method public static getTextSizeByStage(Ljava/lang/String;)F
    .locals 2

    .prologue
    .line 250
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    .line 256
    :goto_0
    return v0

    .line 254
    :catch_0
    move-exception v0

    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_0
.end method

.method public static getValueByPercent(IF)F
    .locals 3

    .prologue
    .line 315
    invoke-static {p0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v0

    .line 316
    invoke-static {p0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v1

    .line 317
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    .line 319
    int-to-float v0, v1

    mul-float/2addr v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 323
    :goto_0
    int-to-float v0, v0

    return v0

    .line 321
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v0

    goto :goto_0
.end method

.method public static hideKeybroad(Landroid/os/IBinder;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 950
    .line 951
    const-string/jumbo v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 950
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 952
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 954
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 98
    sget-boolean v0, Lcom/alipay/android/app/template/util/UiUtil;->a:Z

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/template/util/UiUtil;->a:Z

    .line 102
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    if-gez v0, :cond_2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    .line 103
    :cond_2
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    if-gez v0, :cond_3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    .line 104
    :cond_3
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    .line 105
    :cond_4
    :try_start_0
    const-string/jumbo v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 112
    const-string/jumbo v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->STATUS_BAR_HEIGHT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "config_showNavigationBar"

    const-string/jumbo v2, "bool"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 122
    if-lez v1, :cond_0

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 124
    if-eqz v1, :cond_0

    .line 125
    const-string/jumbo v1, "navigation_bar_height"

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 126
    if-lez v1, :cond_0

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->NAVIGATION_BAR_HEIGHT:I

    goto/16 :goto_0

    .line 115
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    .line 305
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 306
    :goto_1
    if-lt v1, v2, :cond_2

    .line 311
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :cond_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isFullScreen(Lcom/alipay/android/app/template/TemplateWindow;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1043
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateWindow;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    .line 1044
    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v0

    .line 1050
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 1051
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1052
    aget v0, v2, v1

    if-nez v0, :cond_1

    move v0, v1

    .line 1055
    :goto_1
    return v0

    .line 1048
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateWindow;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getElementView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1055
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isGTP8600()Z
    .locals 2

    .prologue
    .line 1177
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    const-string/jumbo v0, "gt-p6800"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1177
    goto :goto_0
.end method

.method public static isOppoDevice()Z
    .locals 2

    .prologue
    .line 76
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "oneplus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "tcl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSamSungS6()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1308
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 1309
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1310
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 1319
    :cond_0
    :goto_0
    return v0

    .line 1314
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "samsung"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sm-g9200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1315
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sm-g9250"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1316
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isUseDefaultKeyboard(Lcom/alipay/android/app/template/view/ViewType;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1131
    sget-object v2, Lcom/alipay/android/app/template/view/ViewType;->money:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/alipay/android/app/template/view/ViewType;->password:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/alipay/android/app/template/view/ViewType;->payword:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p0, v2, :cond_0

    move v2, v0

    .line 1132
    :goto_0
    if-eqz v2, :cond_1

    const-string/jumbo v2, "safe"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1131
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1132
    goto :goto_1
.end method

.method public static isVerifyURL(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 558
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    .line 561
    :cond_0
    const-string/jumbo v0, "^http(s)?://([a-z0-9_\\-]+\\.)*(alipay|taobao|cmbchina|cebbank)\\.(com|net)(:\\d+)?(/.*)?$"

    .line 562
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 563
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static loadAssetsFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 916
    new-instance v2, Ljava/io/BufferedReader;

    .line 917
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 916
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 918
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 920
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-gtz v4, :cond_1

    .line 923
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    if-eqz v0, :cond_0

    .line 926
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 934
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 921
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v1, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 931
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 927
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public static loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;I)V
    .locals 10

    .prologue
    .line 481
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/alipay/android/app/template/util/UiUtil;->loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 482
    return-void
.end method

.method public static loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 487
    invoke-static/range {p0 .. p9}, Lcom/alipay/android/app/template/UiAssistantor;->loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 489
    return-void
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 162
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    const-string/jumbo v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->parseStandarColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    const-string/jumbo v1, "rgb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->parseRgba(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseGravity(Lcom/alipay/android/app/template/view/AlignType;)I
    .locals 3

    .prologue
    .line 368
    const/4 v0, -0x1

    .line 369
    if-eqz p0, :cond_0

    .line 370
    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->a()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 372
    :pswitch_0
    const/4 v0, 0x3

    .line 373
    goto :goto_0

    .line 375
    :pswitch_1
    const/4 v0, 0x5

    .line 376
    goto :goto_0

    .line 378
    :pswitch_2
    const/16 v0, 0x30

    .line 379
    goto :goto_0

    .line 381
    :pswitch_3
    const/16 v0, 0x50

    .line 382
    goto :goto_0

    .line 384
    :pswitch_4
    const/4 v0, 0x1

    .line 385
    goto :goto_0

    .line 387
    :pswitch_5
    const/16 v0, 0x11

    .line 388
    goto :goto_0

    .line 390
    :pswitch_6
    const/16 v0, 0x10

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public static parseRelativGravity(Lcom/alipay/android/app/template/view/AlignType;)I
    .locals 3

    .prologue
    .line 338
    const/4 v0, -0x1

    .line 339
    if-eqz p0, :cond_0

    .line 340
    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->a()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/AlignType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 342
    :pswitch_0
    const/16 v0, 0x9

    .line 343
    goto :goto_0

    .line 345
    :pswitch_1
    const/16 v0, 0xa

    .line 346
    goto :goto_0

    .line 348
    :pswitch_2
    const/16 v0, 0xb

    .line 349
    goto :goto_0

    .line 351
    :pswitch_3
    const/16 v0, 0xc

    .line 352
    goto :goto_0

    .line 354
    :pswitch_4
    const/16 v0, 0xd

    .line 355
    goto :goto_0

    .line 357
    :pswitch_5
    const/16 v0, 0xf

    .line 358
    goto :goto_0

    .line 360
    :pswitch_6
    const/16 v0, 0xe

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static parseRgba(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 202
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 203
    const/4 v1, 0x3

    aget v1, v0, v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static parseStandarColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 184
    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 186
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 198
    :cond_0
    :goto_0
    return-object p0

    .line 187
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 189
    new-array v2, v2, [C

    .line 190
    aget-char v0, v1, v3

    aput-char v0, v2, v3

    .line 191
    const/4 v0, 0x1

    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_2

    .line 195
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 192
    :cond_2
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, -0x1

    aget-char v4, v1, v0

    aput-char v4, v2, v3

    .line 193
    mul-int/lit8 v3, v0, 0x2

    aget-char v4, v1, v0

    aput-char v4, v2, v3

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static reInit(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/template/util/UiUtil;->a:Z

    .line 82
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->init(Landroid/app/Activity;)V

    .line 83
    return-void
.end method

.method public static readAssertFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 538
    new-instance v2, Ljava/io/BufferedReader;

    .line 539
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 538
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 540
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 542
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-gtz v4, :cond_1

    .line 545
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    if-eqz v1, :cond_0

    .line 548
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 554
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 543
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .locals 3

    .prologue
    .line 939
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 940
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 941
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 942
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 943
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 947
    :goto_0
    return-void

    .line 945
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public static setSafeKeyboardSoftInput(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 5

    .prologue
    .line 1153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 1156
    :try_start_0
    const-class v0, Landroid/widget/EditText;

    .line 1157
    const-string/jumbo v1, "setShowSoftInputOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1160
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1165
    :goto_0
    :try_start_1
    const-class v0, Landroid/widget/EditText;

    .line 1166
    const-string/jumbo v1, "setSoftInputShownOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1168
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1169
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1173
    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static showKeybroad(Landroid/widget/EditText;I)V
    .locals 3

    .prologue
    .line 957
    if-nez p0, :cond_0

    .line 971
    :goto_0
    return-void

    .line 959
    :cond_0
    new-instance v0, Lcom/alipay/android/app/template/util/UiUtil$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/util/UiUtil$1;-><init>(Landroid/widget/EditText;)V

    .line 970
    int-to-long v1, p1

    .line 959
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static toCornerBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1070
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 1071
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    .line 1073
    :goto_1
    int-to-float v3, p2

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float v0, v3, v0

    .line 1074
    int-to-float v3, p3

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float v2, v3, v2

    .line 1075
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1076
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1077
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1078
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    .line 1077
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1081
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1084
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1087
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1088
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1089
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1090
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1091
    int-to-float v6, p1

    int-to-float v7, p1

    invoke-virtual {v3, v1, v6, v7, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1094
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1097
    invoke-virtual {v3, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1098
    return-object v2

    .line 1070
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 1071
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_1
.end method

.method public static toRoundBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1006
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 1007
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    .line 1009
    :goto_1
    int-to-float v3, p1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float v0, v3, v0

    .line 1010
    int-to-float v3, p2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float v2, v3, v2

    .line 1011
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1012
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1013
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1014
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    .line 1013
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1015
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1016
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1017
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1019
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 1020
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    .line 1021
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    .line 1022
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v10, p2

    div-int/lit8 v10, v10, 0x2

    .line 1019
    invoke-direct {v9, v0, v2, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1023
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1024
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1025
    invoke-virtual {v7, v1, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1026
    const v0, -0xbdbdbe

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1027
    div-int/lit8 v3, p1, 0x2

    .line 1028
    div-int/lit8 v2, p2, 0x2

    .line 1030
    if-le v3, v2, :cond_2

    move v0, v2

    .line 1033
    :goto_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v1, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1034
    int-to-float v1, v3

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v7, v1, v2, v0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1036
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1037
    invoke-virtual {v7, v4, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1039
    return-object v5

    .line 1006
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto/16 :goto_0

    .line 1007
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto/16 :goto_1

    :cond_2
    move v0, v3

    goto :goto_2
.end method
