.class public Lcom/alipay/android/app/display/uielement/UITextField;
.super Lcom/alipay/android/app/display/uielement/BaseEditElement;


# instance fields
.field private c:I

.field private d:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->TextField:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 0

    check-cast p2, Lcom/alipay/android/app/widget/CustomEditText;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/display/uielement/UITextField;->a(Landroid/content/Context;Lcom/alipay/android/app/widget/CustomEditText;Lcom/alipay/android/app/display/uielement/ElementStyle;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Lcom/alipay/android/app/widget/CustomEditText;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Landroid/content/Context;Lcom/alipay/android/app/widget/CustomEditText;Lcom/alipay/android/app/display/uielement/ElementStyle;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UITextField;->e()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/display/uielement/UITextField;->d:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UITextField;->a:Lcom/alipay/android/app/widget/CustomEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/widget/CustomEditText;->setInputType(I)V

    :goto_0
    iget v1, p0, Lcom/alipay/android/app/display/uielement/UITextField;->c:I

    if-lez v1, :cond_0

    new-instance v1, Lcom/alipay/android/app/widget/FormatBankcard;

    invoke-direct {v1}, Lcom/alipay/android/app/widget/FormatBankcard;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UITextField;->b:Lcom/alipay/android/app/widget/FormatBankcard;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UITextField;->b:Lcom/alipay/android/app/widget/FormatBankcard;

    iget v2, p0, Lcom/alipay/android/app/display/uielement/UITextField;->c:I

    invoke-virtual {v1, p2, v2}, Lcom/alipay/android/app/widget/FormatBankcard;->a(Landroid/widget/EditText;I)V

    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/alipay/android/app/display/uielement/UITextField;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UITextField;->a:Lcom/alipay/android/app/widget/CustomEditText;

    const/16 v2, 0x2002

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/widget/CustomEditText;->setInputType(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "split"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UITextField;->c:I

    const-string/jumbo v0, "keyboard"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "decimal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UITextField;->d:I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "digit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UITextField;->d:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UITextField;->d:I

    goto :goto_0
.end method

.method protected final o()I
    .locals 1

    const-string/jumbo v0, "msp_ui_edit_text"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
