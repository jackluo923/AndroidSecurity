.class public Lmobi/monaca/framework/nativeui/component/PageComponent;
.super Lmobi/monaca/framework/nativeui/component/Component;
.source "PageComponent.java"


# static fields
.field private static final BOTTOM_CONTAINER_VALID_VALUES:[Ljava/lang/String;

.field private static final SCREEN_ORIENTATION_VALID_VALUES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TOP_CONTAINER_VALID_VALUES:[Ljava/lang/String;

.field protected static styleValidKeys:[Ljava/lang/String;

.field private static final validBackgroundRepeatValues:[Ljava/lang/String;

.field protected static validKeys:[Ljava/lang/String;


# instance fields
.field protected bottomComponent:Lmobi/monaca/framework/nativeui/component/Component;

.field public eventer:Lmobi/monaca/framework/nativeui/UIEventer;

.field protected mBackButtonEventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

.field private mLayeredBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mScreenOrientation:Lmobi/monaca/framework/nativeui/component/PageOrientation;

.field public menuName:Ljava/lang/String;

.field protected topComponent:Lmobi/monaca/framework/nativeui/component/Component;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    const-class v0, Lmobi/monaca/framework/nativeui/component/PageComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->TAG:Ljava/lang/String;

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_top:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_bottom:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_event:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_style:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_iosstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_androidstyle:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_menu:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_id:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->validKeys:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundimage:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundsize:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundrepeat:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundposition:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_screenorientation:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->styleValidKeys:[Ljava/lang/String;

    .line 120
    new-array v0, v4, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_toolbar:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->TOP_CONTAINER_VALID_VALUES:[Ljava/lang/String;

    .line 121
    new-array v0, v5, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_toolbar:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_tabbar:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->BOTTOM_CONTAINER_VALID_VALUES:[Ljava/lang/String;

    .line 209
    new-array v0, v7, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->orientation_portrait:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->orientation_landscape:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->orientation_inherit:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->orientation_portrait_landscape:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->SCREEN_ORIENTATION_VALID_VALUES:[Ljava/lang/String;

    .line 248
    new-array v0, v6, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_value_repeatx:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_value_repeaty:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_value_repeat:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->validBackgroundRepeatValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "uiContext"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "pageJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/component/Component;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 52
    sget-object v3, Lmobi/monaca/framework/nativeui/component/PageOrientation;->INHERIT:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    iput-object v3, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->mScreenOrientation:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    .line 83
    invoke-virtual {p1, p0}, Lmobi/monaca/framework/nativeui/UIContext;->setPageComponent(Lmobi/monaca/framework/nativeui/component/PageComponent;)V

    .line 84
    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_valid_pagecomponent:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->style:Lorg/json/JSONObject;

    sget-object v5, Lmobi/monaca/framework/nativeui/component/PageComponent;->styleValidKeys:[Ljava/lang/String;

    invoke-static {p1, v3, v4, v5}, Lmobi/monaca/framework/nativeui/UIValidator;->validateKey(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v3

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_key_event:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    .local v1, "event":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 88
    new-instance v3, Lmobi/monaca/framework/nativeui/UIEventer;

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_key_event:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lmobi/monaca/framework/nativeui/UIEventer;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    iput-object v3, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->eventer:Lmobi/monaca/framework/nativeui/UIEventer;

    .line 90
    :cond_0
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v3

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_key_menu:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->menuName:Ljava/lang/String;

    .line 91
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->menuName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    invoke-virtual {p1}, Lmobi/monaca/framework/nativeui/UIContext;->getPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/monaca/framework/MonacaPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/MonacaApplication;

    .line 93
    .local v0, "app":Lmobi/monaca/framework/MonacaApplication;
    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->menuName:Ljava/lang/String;

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->findMenuRepresentation(Ljava/lang/String;)Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;

    move-result-object v2

    .line 94
    .local v2, "menuRepresentation":Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;
    if-nez v2, :cond_1

    .line 95
    new-instance v3, Lmobi/monaca/framework/nativeui/exception/MenuNameNotDefinedInAppMenuFileException;

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getComponentName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->menuName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lmobi/monaca/framework/nativeui/exception/MenuNameNotDefinedInAppMenuFileException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 98
    .end local v0    # "app":Lmobi/monaca/framework/MonacaApplication;
    .end local v2    # "menuRepresentation":Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;
    :cond_1
    invoke-direct {p0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->style()V

    .line 99
    invoke-direct {p0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->buildChildren()V

    .line 100
    return-void
.end method

.method private buildChildren()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_key_top:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 126
    .local v3, "topJSON":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 127
    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_key_container:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "containerType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 129
    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_key_toolbar:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    new-instance v4, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v3, v6}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;Z)V

    iput-object v4, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->topComponent:Lmobi/monaca/framework/nativeui/component/Component;

    .line 142
    .end local v1    # "containerType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_key_bottom:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 143
    .local v0, "bottomJSON":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 144
    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_key_container:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .restart local v1    # "containerType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 146
    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_key_toolbar:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 147
    new-instance v4, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;Z)V

    iput-object v4, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->bottomComponent:Lmobi/monaca/framework/nativeui/component/Component;

    .line 161
    .end local v1    # "containerType":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 132
    .end local v0    # "bottomJSON":Lorg/json/JSONObject;
    .restart local v1    # "containerType":Ljava/lang/String;
    :cond_2
    new-instance v2, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;

    sget v4, Lmobi/monaca/framework/psedo/R$string;->exception_pagetop:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_key_container:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmobi/monaca/framework/nativeui/component/PageComponent;->TOP_CONTAINER_VALID_VALUES:[Ljava/lang/String;

    invoke-direct {v2, v4, v5, v1, v6}, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    .local v2, "exception":Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
    throw v2

    .line 137
    .end local v2    # "exception":Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
    :cond_3
    new-instance v2, Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_key_top:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_key_container:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v2, "exception":Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;
    throw v2

    .line 148
    .end local v2    # "exception":Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;
    .restart local v0    # "bottomJSON":Lorg/json/JSONObject;
    :cond_4
    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_key_tabbar:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 149
    new-instance v4, Lmobi/monaca/framework/nativeui/container/TabbarContainer;

    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v4, v5, v0}, Lmobi/monaca/framework/nativeui/container/TabbarContainer;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    iput-object v4, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->bottomComponent:Lmobi/monaca/framework/nativeui/component/Component;

    goto :goto_0

    .line 151
    :cond_5
    new-instance v2, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;

    sget v4, Lmobi/monaca/framework/psedo/R$string;->exception_pagebottom:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_key_container:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lmobi/monaca/framework/nativeui/component/PageComponent;->BOTTOM_CONTAINER_VALID_VALUES:[Ljava/lang/String;

    invoke-direct {v2, v4, v5, v1, v6}, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    .local v2, "exception":Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v4, v2}, Lmobi/monaca/framework/nativeui/UIValidator;->reportException(Landroid/content/Context;Lmobi/monaca/framework/nativeui/exception/NativeUIException;)V

    goto :goto_0

    .line 156
    .end local v2    # "exception":Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
    :cond_6
    new-instance v2, Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_key_top:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_key_container:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v2, "exception":Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;
    iget-object v4, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v4, v2}, Lmobi/monaca/framework/nativeui/UIValidator;->reportException(Landroid/content/Context;Lmobi/monaca/framework/nativeui/exception/NativeUIException;)V

    goto :goto_0
.end method

.method private getTopDrawable(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "layerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private processBackgroundPosition(Lorg/json/JSONObject;Landroid/graphics/drawable/BitmapDrawable;Z)V
    .locals 10
    .param p1, "pageStyle"    # Lorg/json/JSONObject;
    .param p2, "backgroundImage"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p3, "shouldSkipBackgroundPosition"    # Z

    .prologue
    const/16 v8, 0x11

    .line 437
    if-eqz p3, :cond_0

    .line 490
    :goto_0
    return-void

    .line 442
    :cond_0
    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_key_center:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "horizontalPositionString":Ljava/lang/String;
    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_key_center:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, "verticalPositionString":Ljava/lang/String;
    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundposition:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "backgroundPosition":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 448
    .local v2, "horizontalGravity":Ljava/lang/Integer;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 449
    .local v5, "verticalGravity":Ljava/lang/Integer;
    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 451
    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_key_center:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    .line 452
    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_key_center:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    .line 454
    sget v7, Lmobi/monaca/framework/psedo/R$string;->space:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 457
    sget v7, Lmobi/monaca/framework/psedo/R$string;->space:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v4, "positions":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v3, v4, v7

    .line 459
    const/4 v7, 0x1

    aget-object v6, v4, v7

    .line 467
    .end local v4    # "positions":[Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Lmobi/monaca/framework/nativeui/UIGravity;->hasHorizontalGravity(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 468
    invoke-static {v3}, Lmobi/monaca/framework/nativeui/UIGravity;->getHorizontalGravity(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 469
    if-nez v2, :cond_1

    .line 470
    new-instance v1, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;

    sget v7, Lmobi/monaca/framework/psedo/R$string;->exception_message_pagesstyle:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundposition:I

    invoke-static {v8}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lmobi/monaca/framework/nativeui/UIGravity;->HORIZONTAL_POSITIONS:[Ljava/lang/String;

    invoke-direct {v1, v7, v8, v3, v9}, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 473
    .local v1, "exception":Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
    iget-object v7, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v7, v1}, Lmobi/monaca/framework/nativeui/UIValidator;->reportException(Landroid/content/Context;Lmobi/monaca/framework/nativeui/exception/NativeUIException;)V

    .line 479
    .end local v1    # "exception":Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
    :cond_1
    invoke-static {v6}, Lmobi/monaca/framework/nativeui/UIGravity;->hasVerticalGravity(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 480
    invoke-static {v6}, Lmobi/monaca/framework/nativeui/UIGravity;->getVerticalGravity(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 481
    if-nez v5, :cond_2

    .line 482
    new-instance v1, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;

    sget v7, Lmobi/monaca/framework/psedo/R$string;->exception_message_pagesstyle:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundposition:I

    invoke-static {v8}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lmobi/monaca/framework/nativeui/UIGravity;->VERTICAL_POSITIONS:[Ljava/lang/String;

    invoke-direct {v1, v7, v8, v6, v9}, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 485
    .restart local v1    # "exception":Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
    iget-object v7, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v7, v1}, Lmobi/monaca/framework/nativeui/UIValidator;->reportException(Landroid/content/Context;Lmobi/monaca/framework/nativeui/exception/NativeUIException;)V

    .line 489
    .end local v1    # "exception":Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {p2, v7}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    goto/16 :goto_0

    .line 462
    :cond_3
    move-object v3, v0

    goto :goto_1
.end method

.method private processPageStyleBackgroundColor(Lorg/json/JSONObject;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "pageStyle"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p2, "layerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "backgroundColorString":Ljava/lang/String;
    const/4 v1, -0x1

    .line 291
    .local v1, "color":I
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 293
    sget v5, Lmobi/monaca/framework/psedo/R$string;->sharp:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 309
    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 310
    .local v2, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    return-void

    .line 296
    .end local v2    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :catch_0
    move-exception v3

    .line 297
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 298
    new-instance v4, Lmobi/monaca/framework/nativeui/exception/ConversionException;

    sget v5, Lmobi/monaca/framework/psedo/R$string;->exception_message_pagesstyle:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_color:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v0, v7}, Lmobi/monaca/framework/nativeui/exception/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .local v4, "exception":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v5, v4}, Lmobi/monaca/framework/nativeui/UIValidator;->reportException(Landroid/content/Context;Lmobi/monaca/framework/nativeui/exception/NativeUIException;)V

    goto :goto_0

    .line 303
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "exception":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    :cond_1
    new-instance v4, Lmobi/monaca/framework/nativeui/exception/ConversionException;

    sget v5, Lmobi/monaca/framework/psedo/R$string;->exception_message_pagesstyle:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_color:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v0, v7}, Lmobi/monaca/framework/nativeui/exception/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .restart local v4    # "exception":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v5, v4}, Lmobi/monaca/framework/nativeui/UIValidator;->reportException(Landroid/content/Context;Lmobi/monaca/framework/nativeui/exception/NativeUIException;)V

    goto :goto_0
.end method

.method private processPageStyleBackgroundImage(Lorg/json/JSONObject;Ljava/util/ArrayList;)V
    .locals 31
    .param p1, "pageStyle"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, "layerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    sget v28, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundimage:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "backgroundImageFile":Ljava/lang/String;
    const/16 v23, 0x0

    .line 317
    .local v23, "shouldSkipBackgroundPosition":Z
    const-string v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 320
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lmobi/monaca/framework/nativeui/UIContext;->readScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 321
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lmobi/monaca/framework/nativeui/UIContext;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v3, v0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 322
    .local v3, "backgroundImage":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v8, v0

    .line 324
    .local v8, "bitmapWidth":F
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v7, v0

    .line 325
    .local v7, "bitmapHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lmobi/monaca/framework/nativeui/UIContext;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v10, v0

    .line 326
    .local v10, "deviceWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lmobi/monaca/framework/nativeui/UIContext;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v9, v0

    .line 329
    .local v9, "deviceHeight":F
    sget v28, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundsize:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "backgroundSize":Ljava/lang/String;
    const-string v28, ""

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 331
    sget v28, Lmobi/monaca/framework/psedo/R$string;->nc_background_auto:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    .line 335
    :cond_0
    sget v28, Lmobi/monaca/framework/psedo/R$string;->nc_background_cover:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 336
    const/16 v28, 0x77

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 337
    const/16 v23, 0x1

    .line 425
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getTopDrawable(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    .line 426
    .local v14, "finalDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v14, v2}, Lmobi/monaca/framework/nativeui/component/PageComponent;->processBackgroundPosition(Lorg/json/JSONObject;Landroid/graphics/drawable/BitmapDrawable;Z)V

    .line 434
    .end local v3    # "backgroundImage":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "backgroundSize":Ljava/lang/String;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "bitmapHeight":F
    .end local v8    # "bitmapWidth":F
    .end local v9    # "deviceHeight":F
    .end local v10    # "deviceWidth":F
    .end local v14    # "finalDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    :goto_1
    return-void

    .line 339
    .restart local v3    # "backgroundImage":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "backgroundSize":Ljava/lang/String;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmapHeight":F
    .restart local v8    # "bitmapWidth":F
    .restart local v9    # "deviceHeight":F
    .restart local v10    # "deviceWidth":F
    :cond_2
    sget v28, Lmobi/monaca/framework/psedo/R$string;->nc_background_contain:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 340
    div-float v26, v10, v8

    .line 341
    .local v26, "widthRatio":F
    div-float v16, v9, v7

    .line 343
    .local v16, "heightRatio":F
    cmpg-float v28, v26, v16

    if-gez v28, :cond_3

    move/from16 v21, v26

    .line 344
    .local v21, "safeRatio":F
    :goto_2
    mul-float v28, v7, v21

    invoke-static/range {v28 .. v28}, Landroid/util/FloatMath;->ceil(F)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v22, v0

    .line 346
    .local v22, "scaledHeight":I
    move/from16 v0, v22

    invoke-static {v6, v0}, Lmobi/monaca/framework/nativeui/UIUtil;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 347
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lmobi/monaca/framework/nativeui/UIContext;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v11, v0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 348
    .local v11, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 349
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    .end local v3    # "backgroundImage":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "backgroundSize":Ljava/lang/String;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "bitmapHeight":F
    .end local v8    # "bitmapWidth":F
    .end local v9    # "deviceHeight":F
    .end local v10    # "deviceWidth":F
    .end local v11    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v16    # "heightRatio":F
    .end local v21    # "safeRatio":F
    .end local v22    # "scaledHeight":I
    .end local v26    # "widthRatio":F
    :catch_0
    move-exception v12

    .line 428
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 429
    new-instance v13, Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;

    sget v28, Lmobi/monaca/framework/psedo/R$string;->exception_message_pagesstyle:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    sget v29, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundimage:I

    invoke-static/range {v29 .. v29}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v13, v0, v1, v4, v2}, Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .local v13, "exception":Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v13}, Lmobi/monaca/framework/nativeui/UIValidator;->reportException(Landroid/content/Context;Lmobi/monaca/framework/nativeui/exception/NativeUIException;)V

    goto :goto_1

    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "exception":Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
    .restart local v3    # "backgroundImage":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "backgroundSize":Ljava/lang/String;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bitmapHeight":F
    .restart local v8    # "bitmapWidth":F
    .restart local v9    # "deviceHeight":F
    .restart local v10    # "deviceWidth":F
    .restart local v16    # "heightRatio":F
    .restart local v26    # "widthRatio":F
    :cond_3
    move/from16 v21, v16

    .line 343
    goto :goto_2

    .line 350
    .end local v16    # "heightRatio":F
    .end local v26    # "widthRatio":F
    :cond_4
    :try_start_1
    sget v28, Lmobi/monaca/framework/psedo/R$string;->nc_background_auto:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 351
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    goto/16 :goto_0

    .line 356
    :cond_5
    const/16 v25, 0x0

    .line 357
    .local v25, "width":I
    const/4 v15, 0x0

    .line 359
    .local v15, "height":I
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    sget v29, Lmobi/monaca/framework/psedo/R$string;->comma:I

    invoke-static/range {v29 .. v29}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 360
    sget v28, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundsize:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 361
    .local v24, "sizes":Lorg/json/JSONArray;
    if-eqz v24, :cond_a

    .line 363
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v27

    .line 364
    .local v27, "widthString":Ljava/lang/String;
    sget v28, Lmobi/monaca/framework/psedo/R$string;->percent:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 365
    sget v28, Lmobi/monaca/framework/psedo/R$string;->percent:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 366
    .local v19, "percentageString":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 367
    .local v18, "percentage":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v10

    const/high16 v29, 0x42c80000    # 100.0f

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v25, v0

    .line 378
    .end local v18    # "percentage":I
    .end local v19    # "percentageString":Ljava/lang/String;
    :goto_3
    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v17

    .line 379
    .local v17, "heightString":Ljava/lang/String;
    sget v28, Lmobi/monaca/framework/psedo/R$string;->percent:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 380
    sget v28, Lmobi/monaca/framework/psedo/R$string;->percent:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 381
    .restart local v19    # "percentageString":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 382
    .restart local v18    # "percentage":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v9

    const/high16 v29, 0x42c80000    # 100.0f

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v15, v0

    .line 419
    .end local v17    # "heightString":Ljava/lang/String;
    .end local v18    # "percentage":I
    .end local v19    # "percentageString":Ljava/lang/String;
    .end local v24    # "sizes":Lorg/json/JSONArray;
    .end local v27    # "widthString":Ljava/lang/String;
    :goto_4
    move/from16 v0, v25

    invoke-static {v6, v0, v15}, Lmobi/monaca/framework/nativeui/UIUtil;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 420
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lmobi/monaca/framework/nativeui/UIContext;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v11, v0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 421
    .restart local v11    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 422
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 368
    .end local v11    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v24    # "sizes":Lorg/json/JSONArray;
    .restart local v27    # "widthString":Ljava/lang/String;
    :cond_6
    sget v28, Lmobi/monaca/framework/psedo/R$string;->px:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 369
    sget v28, Lmobi/monaca/framework/psedo/R$string;->px:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 370
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_3

    .line 372
    :cond_7
    sget v28, Lmobi/monaca/framework/psedo/R$string;->dip:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 373
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-static {v0, v1}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v25

    goto/16 :goto_3

    .line 383
    .restart local v17    # "heightString":Ljava/lang/String;
    :cond_8
    sget v28, Lmobi/monaca/framework/psedo/R$string;->px:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 384
    sget v28, Lmobi/monaca/framework/psedo/R$string;->px:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 385
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    goto/16 :goto_4

    .line 387
    :cond_9
    sget v28, Lmobi/monaca/framework/psedo/R$string;->dip:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 388
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-static {v0, v1}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I

    move-result v15

    goto/16 :goto_4

    .line 392
    .end local v17    # "heightString":Ljava/lang/String;
    .end local v27    # "widthString":Ljava/lang/String;
    :cond_a
    new-instance v13, Lmobi/monaca/framework/nativeui/exception/ConversionException;

    sget v28, Lmobi/monaca/framework/psedo/R$string;->exception_message_pagesstyle:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    sget v29, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundsize:I

    invoke-static/range {v29 .. v29}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v29

    sget v30, Lmobi/monaca/framework/psedo/R$string;->nc_size:I

    invoke-static/range {v30 .. v30}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v13, v0, v1, v5, v2}, Lmobi/monaca/framework/nativeui/exception/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v13, "exception":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v13}, Lmobi/monaca/framework/nativeui/UIValidator;->reportException(Landroid/content/Context;Lmobi/monaca/framework/nativeui/exception/NativeUIException;)V

    goto/16 :goto_4

    .line 399
    .end local v13    # "exception":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    .end local v24    # "sizes":Lorg/json/JSONArray;
    :cond_b
    move-object/from16 v27, v5

    .line 400
    .restart local v27    # "widthString":Ljava/lang/String;
    sget v28, Lmobi/monaca/framework/psedo/R$string;->percent:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 401
    sget v28, Lmobi/monaca/framework/psedo/R$string;->percent:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 402
    .restart local v19    # "percentageString":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 403
    .restart local v18    # "percentage":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v10

    const/high16 v29, 0x42c80000    # 100.0f

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v25, v0

    .line 413
    .end local v18    # "percentage":I
    .end local v19    # "percentageString":Ljava/lang/String;
    :goto_5
    div-float v20, v7, v8

    .line 414
    .local v20, "ratio":F
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v20

    move/from16 v0, v28

    float-to-int v15, v0

    goto/16 :goto_4

    .line 404
    .end local v20    # "ratio":F
    :cond_c
    sget v28, Lmobi/monaca/framework/psedo/R$string;->px:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 405
    sget v28, Lmobi/monaca/framework/psedo/R$string;->px:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 406
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    goto :goto_5

    .line 408
    :cond_d
    sget v28, Lmobi/monaca/framework/psedo/R$string;->dip:I

    invoke-static/range {v28 .. v28}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 409
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-static {v0, v1}, Lmobi/monaca/framework/nativeui/UIUtil;->dip2px(Landroid/content/Context;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v25

    goto :goto_5
.end method

.method private processPageStyleBackgroundRepeat(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "layerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v7, 0x0

    .line 254
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->style:Lorg/json/JSONObject;

    sget v6, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundrepeat:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "backgroundRepeatString":Ljava/lang/String;
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->style:Lorg/json/JSONObject;

    sget v6, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundimage:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "backgroundImageString":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 258
    invoke-direct {p0, p1}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getTopDrawable(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 259
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v5, :cond_1

    .line 279
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 263
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-direct {p0, p1}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getTopDrawable(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 264
    .local v2, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_value_repeatx:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 265
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 266
    :cond_2
    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_value_repeaty:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 267
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 268
    :cond_3
    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_value_repeat:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 269
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 270
    :cond_4
    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_value_norepeat:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 271
    invoke-virtual {v2, v7, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 273
    :cond_5
    new-instance v4, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;

    sget v5, Lmobi/monaca/framework/psedo/R$string;->exception_message_pagesstyle:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundrepeat:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lmobi/monaca/framework/nativeui/component/PageComponent;->validBackgroundRepeatValues:[Ljava/lang/String;

    invoke-direct {v4, v5, v6, v1, v7}, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 276
    .local v4, "exception":Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
    iget-object v5, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-static {v5, v4}, Lmobi/monaca/framework/nativeui/UIValidator;->reportException(Landroid/content/Context;Lmobi/monaca/framework/nativeui/exception/NativeUIException;)V

    goto :goto_0
.end method

.method private processScreenOrientation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->style:Lorg/json/JSONObject;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_screenOrientation:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "screenOrientationString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 220
    :cond_0
    sget v1, Lmobi/monaca/framework/psedo/R$string;->comma:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    sget v1, Lmobi/monaca/framework/psedo/R$string;->orientation_portrait:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lmobi/monaca/framework/psedo/R$string;->orientation_landscape:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    sget-object v1, Lmobi/monaca/framework/nativeui/component/PageOrientation;->SENSOR:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->mScreenOrientation:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0, v0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->raiseScreenOrietationInvalidValueException(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_2
    sget v1, Lmobi/monaca/framework/psedo/R$string;->orientation_portrait:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    sget-object v1, Lmobi/monaca/framework/nativeui/component/PageOrientation;->PORTRAIT:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->mScreenOrientation:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    goto :goto_0

    .line 232
    :cond_3
    sget v1, Lmobi/monaca/framework/psedo/R$string;->orientation_landscape:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 233
    sget-object v1, Lmobi/monaca/framework/nativeui/component/PageOrientation;->LANDSCAPE:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->mScreenOrientation:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    goto :goto_0

    .line 234
    :cond_4
    sget v1, Lmobi/monaca/framework/psedo/R$string;->orientation_inherit:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 235
    sget-object v1, Lmobi/monaca/framework/nativeui/component/PageOrientation;->INHERIT:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    iput-object v1, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->mScreenOrientation:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    goto :goto_0

    .line 237
    :cond_5
    invoke-direct {p0, v0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->raiseScreenOrietationInvalidValueException(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private raiseScreenOrietationInvalidValueException(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenOrientationString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_screenOrientation:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmobi/monaca/framework/nativeui/component/PageComponent;->SCREEN_ORIENTATION_VALID_VALUES:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 245
    .local v0, "invalidValueException":Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
    throw v0
.end method

.method private style()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v0, "layerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-direct {p0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->processScreenOrientation()V

    .line 195
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->style:Lorg/json/JSONObject;

    invoke-direct {p0, v2, v0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->processPageStyleBackgroundColor(Lorg/json/JSONObject;Ljava/util/ArrayList;)V

    .line 196
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->style:Lorg/json/JSONObject;

    invoke-direct {p0, v2, v0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->processPageStyleBackgroundImage(Lorg/json/JSONObject;Ljava/util/ArrayList;)V

    .line 197
    invoke-direct {p0, v0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->processPageStyleBackgroundRepeat(Ljava/util/ArrayList;)V

    .line 199
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    .line 200
    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->mLayeredBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 201
    return-void
.end method


# virtual methods
.method protected addIDtoComponentIDsMap()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/DuplicateIDException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/UIContext;->getComponentIDsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 117
    invoke-super {p0}, Lmobi/monaca/framework/nativeui/component/Component;->addIDtoComponentIDsMap()V

    .line 118
    return-void
.end method

.method public getBackButtonEventer()Lmobi/monaca/framework/nativeui/ComponentEventer;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->mBackButtonEventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

    return-object v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->mLayeredBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method public getBottomComponent()Lmobi/monaca/framework/nativeui/component/Component;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->bottomComponent:Lmobi/monaca/framework/nativeui/component/Component;

    return-object v0
.end method

.method public getComponentIDsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmobi/monaca/framework/nativeui/component/Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/UIContext;->getComponentIDsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    sget v0, Lmobi/monaca/framework/psedo/R$string;->nc_name_page:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultStyle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 499
    invoke-static {}, Lmobi/monaca/framework/nativeui/DefaultStyleJSON;->page()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getScreenOrientation()Lmobi/monaca/framework/nativeui/component/PageOrientation;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->mScreenOrientation:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    return-object v0
.end method

.method public getTopComponent()Lmobi/monaca/framework/nativeui/component/Component;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->topComponent:Lmobi/monaca/framework/nativeui/component/Component;

    return-object v0
.end method

.method public getValidKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->validKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackButtonEventer(Lmobi/monaca/framework/nativeui/ComponentEventer;)V
    .locals 0
    .param p1, "mBackButtonEventer"    # Lmobi/monaca/framework/nativeui/ComponentEventer;

    .prologue
    .line 107
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->mBackButtonEventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

    .line 108
    return-void
.end method

.method public updateStyle(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "update"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->style:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->updateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 187
    invoke-direct {p0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->style()V

    .line 188
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/UIContext;->getPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->mScreenOrientation:Lmobi/monaca/framework/nativeui/component/PageOrientation;

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->applyScreenOrientation(Lmobi/monaca/framework/nativeui/component/PageOrientation;)V

    .line 189
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/UIContext;->getPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/PageComponent;->mLayeredBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->setupBackground(Landroid/graphics/drawable/Drawable;)V

    .line 190
    return-void
.end method
