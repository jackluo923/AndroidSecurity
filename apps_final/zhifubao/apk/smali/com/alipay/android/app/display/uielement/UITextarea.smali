.class public Lcom/alipay/android/app/display/uielement/UITextarea;
.super Lcom/alipay/android/app/display/uielement/BaseEditElement;


# instance fields
.field private c:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->Textarea:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 0

    check-cast p2, Lcom/alipay/android/app/widget/CustomEditText;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/display/uielement/UITextarea;->a(Landroid/content/Context;Lcom/alipay/android/app/widget/CustomEditText;Lcom/alipay/android/app/display/uielement/ElementStyle;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Lcom/alipay/android/app/widget/CustomEditText;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Landroid/content/Context;Lcom/alipay/android/app/widget/CustomEditText;Lcom/alipay/android/app/display/uielement/ElementStyle;)V

    iget v0, p0, Lcom/alipay/android/app/display/uielement/UITextarea;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/display/uielement/UITextarea;->c:I

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/widget/CustomEditText;->setMaxLines(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "rows"

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UITextarea;->c:I

    return-void
.end method

.method protected final o()I
    .locals 1

    const-string/jumbo v0, "msp_ui_edit_text"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
