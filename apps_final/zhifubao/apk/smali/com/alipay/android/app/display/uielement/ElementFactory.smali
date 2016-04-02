.class public final Lcom/alipay/android/app/display/uielement/ElementFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/display/uielement/ElementFactory$1;
    }
.end annotation


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/app/display/uielement/ElementFactory;->a:I

    return-void
.end method

.method public static a(Lcom/alipay/android/app/display/uielement/ElementType;)Lcom/alipay/android/app/display/uielement/IUIElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alipay/android/app/display/uielement/IUIElement;",
            ">(",
            "Lcom/alipay/android/app/display/uielement/ElementType;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/alipay/android/app/display/uielement/ElementFactory$1;->a:[I

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/ElementType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/alipay/android/app/display/uielement/UIButton;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UIButton;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/alipay/android/app/display/uielement/UICheckBox;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/alipay/android/app/display/uielement/UIDatePicker;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UIDatePicker;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/alipay/android/app/display/uielement/UIImage;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UIImage;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/alipay/android/app/display/uielement/UILabel;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UILabel;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/alipay/android/app/display/uielement/UILink;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UILink;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/alipay/android/app/display/uielement/UIPanel;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UIPanel;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/alipay/android/app/display/uielement/UIPane;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UIPane;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/alipay/android/app/display/uielement/UIPassword;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UIPassword;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/alipay/android/app/display/uielement/UIProgress;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UIProgress;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/alipay/android/app/display/uielement/bm;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/bm;-><init>()V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;-><init>()V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lcom/alipay/android/app/display/uielement/UISwitcher;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UISwitcher;-><init>()V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lcom/alipay/android/app/display/uielement/UITextarea;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UITextarea;-><init>()V

    goto :goto_0

    :pswitch_f
    new-instance v0, Lcom/alipay/android/app/display/uielement/UITextField;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UITextField;-><init>()V

    goto :goto_0

    :pswitch_10
    new-instance v0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;-><init>()V

    goto :goto_0

    :pswitch_11
    new-instance v0, Lcom/alipay/android/app/display/uielement/bi;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/bi;-><init>()V

    goto :goto_0

    :pswitch_12
    new-instance v0, Lcom/alipay/android/app/display/uielement/UINavigator;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UINavigator;-><init>()V

    goto :goto_0

    :pswitch_13
    new-instance v0, Lcom/alipay/android/app/display/uielement/UIList;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UIList;-><init>()V

    goto :goto_0

    :pswitch_14
    new-instance v0, Lcom/alipay/android/app/display/uielement/UIHr;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UIHr;-><init>()V

    goto :goto_0

    :pswitch_15
    new-instance v0, Lcom/alipay/android/app/display/uielement/UIButtonGroup;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UIButtonGroup;-><init>()V

    goto/16 :goto_0

    :pswitch_16
    new-instance v0, Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/UILayoutPopup;-><init>()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public static a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/display/uielement/IUIElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alipay/android/app/display/uielement/IUIElement;",
            ">(",
            "Lcom/alipay/android/app/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/ElementType;->a(Ljava/lang/String;)Lcom/alipay/android/app/display/uielement/ElementType;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Lcom/alipay/android/app/display/uielement/ElementType;)Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/alipay/android/app/display/uielement/ElementFactory;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    sget v0, Lcom/alipay/android/app/display/uielement/ElementFactory;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/android/app/display/uielement/ElementFactory;->a:I

    goto :goto_0
.end method
