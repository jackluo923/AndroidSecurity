.class public abstract Lmobi/monaca/framework/nativeui/component/Component;
.super Ljava/lang/Object;
.source "Component.java"


# static fields
.field public static final BIG_TITLE_TEXT_DIP:I = 0x12

.field public static final BUTTON_TEXT_DIP:I = 0xe

.field public static final LABEL_TEXT_DIP:I = 0xe

.field public static final SEGMENT_TEXT_DIP:I = 0xe

.field public static final SPINNER_TEXT_DIP:I = 0xa

.field public static final SUBTITLE_TEXT_DIP:I = 0xc

.field public static final TAB_BADGE_TEXT_DIP:I = 0x9

.field public static final TAB_TEXT_DIP:I = 0xe

.field public static final TITLE_TEXT_DIP:I = 0x12


# instance fields
.field protected componentJSON:Lorg/json/JSONObject;

.field protected style:Lorg/json/JSONObject;

.field protected uiContext:Lmobi/monaca/framework/nativeui/UIContext;


# direct methods
.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "uiContext"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "componentJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;,
            Lmobi/monaca/framework/nativeui/exception/DuplicateIDException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/Component;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    .line 28
    if-nez p2, :cond_0

    .line 29
    new-instance p2, Lorg/json/JSONObject;

    .end local p2    # "componentJSON":Lorg/json/JSONObject;
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .restart local p2    # "componentJSON":Lorg/json/JSONObject;
    :cond_0
    iput-object p2, p0, Lmobi/monaca/framework/nativeui/component/Component;->componentJSON:Lorg/json/JSONObject;

    .line 32
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/Component;->addIDtoComponentIDsMap()V

    .line 33
    invoke-direct {p0}, Lmobi/monaca/framework/nativeui/component/Component;->mixStyleWithDefault()V

    .line 34
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/Component;->validate()V

    .line 35
    return-void
.end method

.method private mixStyleWithDefault()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/Component;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->nc_key_style:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, p0, Lmobi/monaca/framework/nativeui/component/Component;->style:Lorg/json/JSONObject;

    .line 71
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/Component;->style:Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/Component;->style:Lorg/json/JSONObject;

    :goto_0
    iput-object v5, p0, Lmobi/monaca/framework/nativeui/component/Component;->style:Lorg/json/JSONObject;

    .line 73
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/Component;->getDefaultStyle()Lorg/json/JSONObject;

    move-result-object v4

    .line 75
    .local v4, "mixed":Lorg/json/JSONObject;
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/Component;->style:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 76
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/Component;->style:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 71
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "mixed":Lorg/json/JSONObject;
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 85
    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "mixed":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/Component;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->nc_key_androidstyle:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 86
    .local v0, "androidStyle":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 88
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 94
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    iput-object v4, p0, Lmobi/monaca/framework/nativeui/component/Component;->style:Lorg/json/JSONObject;

    .line 95
    return-void
.end method

.method private validateKeyNotValid()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/Component;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/Component;->getComponentName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/Component;->componentJSON:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/Component;->getValidKeys()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lmobi/monaca/framework/nativeui/UIValidator;->validateKey(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected addIDtoComponentIDsMap()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/DuplicateIDException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/Component;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v4}, Lmobi/monaca/framework/nativeui/UIContext;->getComponentIDsMap()Ljava/util/Map;

    move-result-object v0

    .line 39
    .local v0, "componentIDsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmobi/monaca/framework/nativeui/component/Component;>;"
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/Component;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_key_id:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "id":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 41
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 42
    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    return-void

    .line 44
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/monaca/framework/nativeui/component/Component;

    invoke-virtual {v4}, Lmobi/monaca/framework/nativeui/component/Component;->getComponentName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/Component;->getComponentName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 45
    .local v1, "components":[Ljava/lang/String;
    new-instance v2, Lmobi/monaca/framework/nativeui/exception/DuplicateIDException;

    invoke-direct {v2, v3, v1}, Lmobi/monaca/framework/nativeui/exception/DuplicateIDException;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 46
    .local v2, "exception":Lmobi/monaca/framework/nativeui/exception/DuplicateIDException;
    throw v2
.end method

.method public getComponentJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/Component;->componentJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method public abstract getComponentName()Ljava/lang/String;
.end method

.method public abstract getDefaultStyle()Lorg/json/JSONObject;
.end method

.method public getStyle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/Component;->style:Lorg/json/JSONObject;

    return-object v0
.end method

.method public abstract getValidKeys()[Ljava/lang/String;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract updateStyle(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation
.end method

.method public validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lmobi/monaca/framework/nativeui/component/Component;->validateKeyNotValid()V

    .line 99
    return-void
.end method
