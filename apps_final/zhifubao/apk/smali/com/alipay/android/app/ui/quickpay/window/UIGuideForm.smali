.class public Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;
.super Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;


# instance fields
.field F:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

.field private G:Z


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->G:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "form"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->j:Ljava/lang/String;

    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->G:Z

    :cond_0
    return-void
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/UIGuideForm;->G:Z

    return v0
.end method
