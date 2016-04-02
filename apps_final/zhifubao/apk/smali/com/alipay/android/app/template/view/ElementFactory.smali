.class public Lcom/alipay/android/app/template/view/ElementFactory;
.super Ljava/lang/Object;
.source "ElementFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ElementFactory"

.field private static synthetic a:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/alipay/android/app/template/view/ElementFactory;->a:[I

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
    sput-object v0, Lcom/alipay/android/app/template/view/ElementFactory;->a:[I

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

.method public static createElement(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {}, Lcom/alipay/android/app/template/view/ElementFactory;->a()[I

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 108
    :goto_0
    :pswitch_0
    return-object v0

    .line 37
    :pswitch_1
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TButton;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TButton;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto :goto_0

    .line 40
    :pswitch_2
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TImageView;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TImageView;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto :goto_0

    .line 45
    :pswitch_3
    invoke-static {p0, p1}, Lcom/alipay/android/app/template/TemplateUiParser;->parseFontFamily(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 47
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_1
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->fontFamily:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TIconFontLabel;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto :goto_0

    .line 59
    :cond_2
    :pswitch_4
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TLabel;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TLabel;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto :goto_0

    .line 62
    :pswitch_5
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TLink;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TLink;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto :goto_0

    .line 69
    :pswitch_6
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TEditText;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto :goto_0

    .line 72
    :pswitch_7
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TCheckBox;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TCheckBox;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto :goto_0

    .line 75
    :pswitch_8
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TSimplePassword;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto :goto_0

    .line 78
    :pswitch_9
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TPassword;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TPassword;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto :goto_0

    .line 81
    :pswitch_a
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TDialog;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TDialog;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto :goto_0

    .line 86
    :pswitch_b
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto :goto_0

    .line 89
    :pswitch_c
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TRadioButton;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TRadioButton;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto :goto_0

    .line 92
    :pswitch_d
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TWebView;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TWebView;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto :goto_0

    .line 95
    :pswitch_e
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TSelector;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TSelector;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto/16 :goto_0

    .line 98
    :pswitch_f
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TOption;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TOption;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto/16 :goto_0

    .line 101
    :pswitch_10
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TemplateDragList;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto/16 :goto_0

    .line 104
    :pswitch_11
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto/16 :goto_0

    .line 107
    :pswitch_12
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    goto/16 :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_4
        :pswitch_8
        :pswitch_e
        :pswitch_6
        :pswitch_6
        :pswitch_f
        :pswitch_6
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
