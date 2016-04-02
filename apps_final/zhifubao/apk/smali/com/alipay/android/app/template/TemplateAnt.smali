.class public Lcom/alipay/android/app/template/TemplateAnt;
.super Ljava/lang/Object;
.source "TemplateAnt.java"

# interfaces
.implements Lcom/alipay/android/app/template/TScriptable;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/android/app/template/TemplateDocument;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/template/TemplateAnt;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/template/TemplateDocument;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->c:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateAnt;)Lcom/alipay/android/app/template/TemplateDocument;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    return-object v0
.end method


# virtual methods
.method public actionSheet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 97
    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "btns"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    .line 100
    :goto_0
    array-length v5, v3

    if-lt v0, v5, :cond_0

    .line 104
    const-string/jumbo v0, "cancelBtn"

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x1

    .line 106
    array-length v2, v3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 107
    array-length v5, v3

    invoke-static {v3, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    array-length v1, v3

    const-string/jumbo v3, "cancelBtn"

    invoke-virtual {v4, v3}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v0

    move-object v0, v2

    .line 111
    :goto_1
    array-length v2, v0

    .line 113
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v4}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v4, Lcom/alipay/android/app/template/TemplateAnt$2;

    invoke-direct {v4, p0, v1, v2, p2}, Lcom/alipay/android/app/template/TemplateAnt$2;-><init>(Lcom/alipay/android/app/template/TemplateAnt;ZILjava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 132
    return-void

    .line 101
    :cond_0
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_1
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 145
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    const-string/jumbo v3, "button"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    .line 150
    new-instance v4, Lcom/alipay/android/app/template/TemplateAnt$3;

    invoke-direct {v4, p0, p2}, Lcom/alipay/android/app/template/TemplateAnt$3;-><init>(Lcom/alipay/android/app/template/TemplateAnt;Ljava/lang/String;)V

    move-object v6, v5

    .line 156
    invoke-static/range {v0 .. v6}, Lcom/alipay/android/app/template/SystemDefaultDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    .line 158
    return-void
.end method

.method public asyncSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 220
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_0

    instance-of v1, v1, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v1, :cond_0

    .line 223
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 224
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "loc:auth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplateId()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "QUICKPAY@cashier-pre-confirm"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    const-string/jumbo v1, "confirm"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TemplateDocument;->getElementById(Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, v4}, Lcom/alipay/android/app/template/view/widget/TElement;->setLocalClickFlag(Z)V

    .line 239
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/alipay/android/app/template/TemplateWindow;->hiddenKeyboardService(Landroid/view/View;Z)Z

    .line 241
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/template/TemplateDocument;->asyncSubmit(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void

    .line 233
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->isSamSungS6()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/template/TemplateWindow;->setGlobalClick(ZJ)V

    goto :goto_0
.end method

.method public callOnreload()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateAnt;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public confirm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 162
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    const-string/jumbo v3, "okButton"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    const-string/jumbo v4, "cancelButton"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 167
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    .line 168
    new-instance v4, Lcom/alipay/android/app/template/TemplateAnt$4;

    invoke-direct {v4, p0, p2}, Lcom/alipay/android/app/template/TemplateAnt$4;-><init>(Lcom/alipay/android/app/template/TemplateAnt;Ljava/lang/String;)V

    .line 180
    new-instance v6, Lcom/alipay/android/app/template/TemplateAnt$5;

    invoke-direct {v6, p0, p2}, Lcom/alipay/android/app/template/TemplateAnt$5;-><init>(Lcom/alipay/android/app/template/TemplateAnt;Ljava/lang/String;)V

    .line 193
    invoke-static/range {v0 .. v6}, Lcom/alipay/android/app/template/SystemDefaultDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    .line 194
    return-void
.end method

.method public getJsObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string/jumbo v0, "ant"

    return-object v0
.end method

.method public getOnreload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptConfigJson()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    sget-object v0, Lcom/alipay/android/app/template/TemplateAnt;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getInstance()Lcom/alipay/android/app/template/TScriptConfigHelper;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateAnt;->getJsObjName()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 44
    const-string/jumbo v3, "submit"

    new-array v4, v7, [Ljava/lang/Class;

    .line 45
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    .line 44
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 46
    const-string/jumbo v4, "submit"

    invoke-virtual {v0, v1, v4, v3}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 48
    const-string/jumbo v3, "asyncSubmit"

    new-array v4, v8, [Ljava/lang/Class;

    .line 49
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    .line 48
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 50
    const-string/jumbo v4, "asyncSubmit"

    invoke-virtual {v0, v1, v4, v3}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 52
    const-string/jumbo v3, "confirm"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 53
    const-string/jumbo v4, "confirm"

    invoke-virtual {v0, v1, v4, v3}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 55
    const-string/jumbo v3, "alert"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 56
    const-string/jumbo v4, "alert"

    invoke-virtual {v0, v1, v4, v3}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 58
    const-string/jumbo v3, "actionSheet"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 59
    const-string/jumbo v4, "actionSheet"

    invoke-virtual {v0, v1, v4, v3}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 61
    const-string/jumbo v3, "setOnreload"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 62
    const-string/jumbo v4, "onreload"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 64
    const-string/jumbo v3, "openURL"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 65
    const-string/jumbo v4, "openURL"

    invoke-virtual {v0, v1, v4, v3}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 67
    const-string/jumbo v3, "toast"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 68
    const-string/jumbo v3, "toast"

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getScriptJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/TemplateAnt;->a:Ljava/lang/String;

    .line 72
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/TemplateAnt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowHashCode()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public openURL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateWindow;->open(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public setOnreload(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateAnt;->c:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public submit(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 201
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_1

    instance-of v1, v1, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v1, :cond_1

    .line 204
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 205
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string/jumbo v1, "loc:back"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "loc:exit"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TemplateWindow;->setGlobalClick(Z)V

    .line 210
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/template/TemplateWindow;->hiddenKeyboardService(Landroid/view/View;Z)Z

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateDocument;->submit(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public toast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateAnt;->b:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v1

    .line 80
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/alipay/android/app/template/TemplateAnt$1;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/app/template/TemplateAnt$1;-><init>(Lcom/alipay/android/app/template/TemplateAnt;Ljava/lang/String;)V

    .line 88
    const-wide/16 v2, 0x7d0

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :cond_0
    return-void
.end method
