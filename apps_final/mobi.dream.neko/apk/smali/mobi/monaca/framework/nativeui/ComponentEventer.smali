.class public Lmobi/monaca/framework/nativeui/ComponentEventer;
.super Lmobi/monaca/framework/nativeui/component/Component;
.source "ComponentEventer.java"


# static fields
.field protected static final VALID_KEYS:[Ljava/lang/String;


# instance fields
.field protected context:Lmobi/monaca/framework/nativeui/UIContext;

.field protected event:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_ontap:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_onsearch:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_onchange:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/ComponentEventer;->VALID_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "event"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/component/Component;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 26
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/ComponentEventer;->context:Lmobi/monaca/framework/nativeui/UIContext;

    .line 27
    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    .end local p2    # "event":Lorg/json/JSONObject;
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    iput-object p2, p0, Lmobi/monaca/framework/nativeui/ComponentEventer;->event:Lorg/json/JSONObject;

    .line 28
    return-void
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lmobi/monaca/framework/nativeui/ComponentEventer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultStyle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValidKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lmobi/monaca/framework/nativeui/ComponentEventer;->VALID_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public onChange()V
    .locals 4

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/ComponentEventer;->context:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lmobi/monaca/framework/psedo/R$string;->js_scheme:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/ComponentEventer;->event:Lorg/json/JSONObject;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_key_onchange:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->react(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSearch(Landroid/view/View;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 46
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/ComponentEventer;->context:Lmobi/monaca/framework/nativeui/UIContext;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lmobi/monaca/framework/nativeui/UIContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 48
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 50
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v1, "js":Lorg/json/JSONObject;
    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_word:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/ComponentEventer;->context:Lmobi/monaca/framework/nativeui/UIContext;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_script_onsearch_insert:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmobi/monaca/framework/nativeui/UIContext;->react(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/ComponentEventer;->context:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lmobi/monaca/framework/psedo/R$string;->js_scheme:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/ComponentEventer;->event:Lorg/json/JSONObject;

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_key_onsearch:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmobi/monaca/framework/nativeui/UIContext;->react(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1    # "js":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onTap()V
    .locals 4

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/ComponentEventer;->context:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lmobi/monaca/framework/psedo/R$string;->js_scheme:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/ComponentEventer;->event:Lorg/json/JSONObject;

    const-string v3, "onTap"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->react(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateStyle(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "update"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    .line 78
    return-void
.end method
