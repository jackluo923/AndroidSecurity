.class public Lmobi/monaca/framework/plugin/MonacaTransitPlugin;
.super Lorg/apache/cordova/api/Plugin;
.source "MonacaTransitPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected buildTransitUrl(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 5
    .param p1, "args"    # Lorg/json/JSONArray;

    .prologue
    const/4 v4, 0x2

    .line 161
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, "transitUrl":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 167
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "queryParamsJson":Lorg/json/JSONObject;
    invoke-static {v2, v1}, Lmobi/monaca/framework/MonacaURI;->buildUrlWithQuery(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 175
    .end local v1    # "queryParamsJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected clearPageStack(Z)V
    .locals 6
    .param p1, "clearAll"    # Z

    .prologue
    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lmobi/monaca/framework/MonacaApplication;->getPages()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 184
    .local v2, "pages":Ljava/util/List;, "Ljava/util/List<Lmobi/monaca/framework/MonacaPageActivity;>;"
    if-eqz p1, :cond_0

    .line 185
    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 186
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 188
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/monaca/framework/MonacaPageActivity;

    .line 189
    .local v1, "page":Lmobi/monaca/framework/MonacaPageActivity;
    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->finish()V

    goto :goto_0

    .line 192
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "page":Lmobi/monaca/framework/MonacaPageActivity;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 193
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/monaca/framework/MonacaPageActivity;

    .line 194
    .local v3, "previousPage":Lmobi/monaca/framework/MonacaPageActivity;
    invoke-virtual {v3}, Lmobi/monaca/framework/MonacaPageActivity;->finish()V

    .line 197
    .end local v3    # "previousPage":Lmobi/monaca/framework/MonacaPageActivity;
    :cond_1
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 43
    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_slide:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_anim_slideleft:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v4

    invoke-virtual {p0, p2}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->buildTransitUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->transition_anim_slideleft:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmobi/monaca/framework/transition/TransitionParams;->from(Lorg/json/JSONObject;Ljava/lang/String;)Lmobi/monaca/framework/transition/TransitionParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmobi/monaca/framework/MonacaPageActivity;->pushPageAsync(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V

    .line 46
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 134
    :goto_0
    return-object v4

    .line 51
    :cond_1
    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_push:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 52
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 53
    .local v3, "options":Lorg/json/JSONObject;
    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_animation:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->transition_slide:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_animation:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->transition_anim_slideleft:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    :cond_2
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v4

    invoke-virtual {p0, p2}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->buildTransitUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->transition_anim_slideleft:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmobi/monaca/framework/transition/TransitionParams;->from(Lorg/json/JSONObject;Ljava/lang/String;)Lmobi/monaca/framework/transition/TransitionParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmobi/monaca/framework/MonacaPageActivity;->pushPageAsync(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V

    .line 57
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0

    .line 58
    :cond_3
    if-eqz v3, :cond_5

    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_animation:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 59
    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_animation:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 60
    .local v0, "animation":Z
    if-nez v0, :cond_4

    .line 61
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v4

    invoke-virtual {p0, p2}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->buildTransitUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->transition_anim_none:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmobi/monaca/framework/transition/TransitionParams;->from(Lorg/json/JSONObject;Ljava/lang/String;)Lmobi/monaca/framework/transition/TransitionParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmobi/monaca/framework/MonacaPageActivity;->pushPageAsync(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V

    .line 63
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 65
    :cond_4
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v4

    invoke-virtual {p0, p2}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->buildTransitUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->transition_anim_slideleft:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmobi/monaca/framework/transition/TransitionParams;->from(Lorg/json/JSONObject;Ljava/lang/String;)Lmobi/monaca/framework/transition/TransitionParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmobi/monaca/framework/MonacaPageActivity;->pushPageAsync(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V

    .line 67
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 70
    .end local v0    # "animation":Z
    :cond_5
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v4

    invoke-virtual {p0, p2}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->buildTransitUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->transition_anim_slideleft:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmobi/monaca/framework/transition/TransitionParams;->from(Lorg/json/JSONObject;Ljava/lang/String;)Lmobi/monaca/framework/transition/TransitionParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmobi/monaca/framework/MonacaPageActivity;->pushPageAsync(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V

    .line 72
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 76
    .end local v3    # "options":Lorg/json/JSONObject;
    :cond_6
    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_anim_slideright:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 77
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v4

    invoke-virtual {p0, p2}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->buildTransitUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->transition_anim_slideright:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmobi/monaca/framework/transition/TransitionParams;->from(Lorg/json/JSONObject;Ljava/lang/String;)Lmobi/monaca/framework/transition/TransitionParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmobi/monaca/framework/MonacaPageActivity;->pushPageAsync(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V

    .line 79
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 83
    :cond_7
    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_anim_modal:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 84
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v4

    invoke-virtual {p0, p2}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->buildTransitUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->transition_anim_modal:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmobi/monaca/framework/transition/TransitionParams;->from(Lorg/json/JSONObject;Ljava/lang/String;)Lmobi/monaca/framework/transition/TransitionParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lmobi/monaca/framework/MonacaPageActivity;->pushPageAsync(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V

    .line 86
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 90
    :cond_8
    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_link:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 91
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 92
    .local v2, "obj":Lorg/json/JSONObject;
    if-eqz v2, :cond_9

    .line 93
    :goto_1
    invoke-virtual {p0, p2}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->buildTransitUrl(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->loadRelativePathAsync(Ljava/lang/String;)V

    .line 94
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 92
    :cond_9
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "obj":Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    .line 97
    :cond_a
    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_anim_pop:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 98
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sget v6, Lmobi/monaca/framework/psedo/R$string;->transition_anim_pop:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmobi/monaca/framework/transition/TransitionParams;->from(Lorg/json/JSONObject;Ljava/lang/String;)Lmobi/monaca/framework/transition/TransitionParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmobi/monaca/framework/MonacaPageActivity;->popPageAsync(Lmobi/monaca/framework/transition/TransitionParams;)V

    .line 100
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 103
    :cond_b
    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_dismiss:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 104
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sget v6, Lmobi/monaca/framework/psedo/R$string;->transition_dismiss:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmobi/monaca/framework/transition/TransitionParams;->from(Lorg/json/JSONObject;Ljava/lang/String;)Lmobi/monaca/framework/transition/TransitionParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmobi/monaca/framework/MonacaPageActivity;->popPageAsync(Lmobi/monaca/framework/transition/TransitionParams;)V

    .line 106
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 110
    :cond_c
    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_browse:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 111
    iget-object v4, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->handler:Landroid/os/Handler;

    new-instance v5, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$1;

    invoke-direct {v5, p0, p2}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$1;-><init>(Lmobi/monaca/framework/plugin/MonacaTransitPlugin;Lorg/json/JSONArray;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 123
    :cond_d
    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_home:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 124
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v4

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmobi/monaca/framework/MonacaPageActivity;->goHomeAsync(Lorg/json/JSONObject;)V

    .line 125
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 128
    :cond_e
    sget v4, Lmobi/monaca/framework/psedo/R$string;->transition_clearstack:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 129
    invoke-virtual {p2, v5, v5}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v1

    .line 130
    .local v1, "clearAll":Z
    invoke-virtual {p0, v1}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->clearPageStack(Z)V

    .line 131
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 134
    .end local v1    # "clearAll":Z
    :cond_f
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0
.end method

.method protected getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/MonacaPageActivity;

    return-object v0
.end method

.method public loadRelativePathAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->relative_parent_path:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "newUri":Ljava/lang/String;
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v1

    new-instance v2, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$2;

    invoke-direct {v2, p0, v0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin$2;-><init>(Lmobi/monaca/framework/plugin/MonacaTransitPlugin;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method protected pushPage(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lmobi/monaca/framework/transition/TransitionParams;

    .prologue
    .line 179
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaTransitPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmobi/monaca/framework/MonacaPageActivity;->pushPageAsync(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V

    .line 180
    return-void
.end method
