.class public Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;
.super Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/window/UIFormToast$1;
    }
.end annotation


# instance fields
.field private F:I

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Z


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->I:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->i:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->s()Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->p:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->h()V

    const-string/jumbo v0, "hidden"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->H:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->I:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->F:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->G:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomToast;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->F:I

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->G:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomToast;->a(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v1, "form"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "visibility"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->H:Ljava/lang/String;

    const-string/jumbo v2, "ajax"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->I:Z

    const-string/jumbo v2, "blocks"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "blocks"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "component"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v1

    if-le v1, v6, :cond_3

    invoke-virtual {v2, v5}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v6}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->G:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v0, "image"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->i:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->F:I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v2, v5}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_0
.end method

.method protected final a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;->getEventType()Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast$1;->a:[I

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->h()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->i()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->dispose()V

    return-void
.end method

.method protected final t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final u()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final v()Z
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->I:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "hidden"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->H:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->G:Ljava/lang/String;

    return-object v0
.end method
