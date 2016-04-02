.class public Lmobi/monaca/framework/nativeui/container/ToolbarContainer;
.super Lmobi/monaca/framework/nativeui/container/Container;
.source "ToolbarContainer.java"


# static fields
.field protected static leftValidComponents:[Ljava/lang/String;

.field protected static styleValidKeys:[Ljava/lang/String;

.field protected static toolbarValidKeys:[Ljava/lang/String;

.field protected static validComponents:[Ljava/lang/String;


# instance fields
.field protected animation:Landroid/view/animation/AlphaAnimation;

.field private shadowView:Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;

.field protected view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_container:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_style:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_iosstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_androidstyle:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_id:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_left:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_center:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_right:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->toolbarValidKeys:[Ljava/lang/String;

    .line 53
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_disable:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_shadowopacity:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lmobi/monaca/framework/psedo/R$string;->key_title:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_subtitle:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_titlecolor:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_subtitlecolor:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_titlefontscale:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_subtitlefontscale:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_titleimage:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_iosbarstyle:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->styleValidKeys:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_backbutton:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_button:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_searchbox:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_label:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_segment:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->leftValidComponents:[Ljava/lang/String;

    .line 59
    new-array v0, v7, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_button:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_searchbox:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_label:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_segment:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->validComponents:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;Z)V
    .locals 3
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "toolbarJSON"    # Lorg/json/JSONObject;
    .param p3, "isTop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;,
            Lmobi/monaca/framework/nativeui/exception/DuplicateIDException;,
            Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;,
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/container/Container;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->animation:Landroid/view/animation/AlphaAnimation;

    .line 64
    sget v0, Lmobi/monaca/framework/psedo/R$string;->nc_valid_toolbar:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    sget-object v2, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->styleValidKeys:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lmobi/monaca/framework/nativeui/UIValidator;->validateKey(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 66
    new-instance v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    invoke-direct {v0, p1, p3}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Z)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    .line 67
    new-instance v0, Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;

    invoke-direct {v0, p1, p3}, Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Z)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->shadowView:Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;

    .line 68
    invoke-direct {p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->buildChildren()V

    .line 69
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lmobi/monaca/framework/nativeui/container/ToolbarContainer;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    .prologue
    .line 46
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/monaca/framework/nativeui/container/ToolbarContainer;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    .prologue
    .line 46
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$200(Lmobi/monaca/framework/nativeui/container/ToolbarContainer;)Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    .prologue
    .line 46
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->shadowView:Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;

    return-object v0
.end method

.method private buildChildren()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v7

    sget v8, Lmobi/monaca/framework/psedo/R$string;->nc_key_left:I

    invoke-static {v8}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 74
    .local v2, "left":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 75
    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_key_left:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v2}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->buildComponents(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .line 76
    .local v3, "leftComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobi/monaca/framework/nativeui/component/ToolbarComponent;>;"
    iget-object v7, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    invoke-virtual {v7, v3}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setLeftView(Ljava/util/List;)V

    .line 78
    .end local v3    # "leftComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobi/monaca/framework/nativeui/component/ToolbarComponent;>;"
    :cond_0
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v7

    sget v8, Lmobi/monaca/framework/psedo/R$string;->nc_key_right:I

    invoke-static {v8}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 79
    .local v4, "right":Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    .line 80
    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_key_right:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v4}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->buildComponents(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 81
    .local v5, "rightComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobi/monaca/framework/nativeui/component/ToolbarComponent;>;"
    iget-object v7, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    invoke-virtual {v7, v5}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setRightView(Ljava/util/List;)V

    .line 84
    .end local v5    # "rightComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobi/monaca/framework/nativeui/component/ToolbarComponent;>;"
    :cond_1
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v7

    sget v8, Lmobi/monaca/framework/psedo/R$string;->nc_key_center:I

    invoke-static {v8}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 85
    .local v0, "center":Lorg/json/JSONArray;
    if-eqz v0, :cond_7

    .line 86
    sget v7, Lmobi/monaca/framework/psedo/R$string;->nc_key_center:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->buildComponents(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 87
    .local v1, "centerComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobi/monaca/framework/nativeui/component/ToolbarComponent;>;"
    const/4 v6, 0x0

    .line 88
    .local v6, "shouldExpandItemWidth":Z
    if-nez v2, :cond_2

    if-eqz v4, :cond_5

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_6

    .line 90
    :cond_5
    const/4 v6, 0x1

    .line 92
    :cond_6
    iget-object v7, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    invoke-virtual {v7, v1, v6}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setCenterView(Ljava/util/List;Z)V

    .line 94
    .end local v1    # "centerComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobi/monaca/framework/nativeui/component/ToolbarComponent;>;"
    .end local v6    # "shouldExpandItemWidth":Z
    :cond_7
    return-void
.end method

.method private buildComponent(Ljava/lang/String;Lorg/json/JSONObject;)Lmobi/monaca/framework/nativeui/component/ToolbarComponent;
    .locals 5
    .param p1, "position"    # Ljava/lang/String;
    .param p2, "childJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 109
    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_component:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "componentType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 111
    new-instance v2, Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_key_component:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_backbutton:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_left:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    if-eq p1, v2, :cond_1

    .line 115
    new-instance v1, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_name_toolbar:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_key_component:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->validComponents:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0, v4}, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    .local v1, "exception":Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
    throw v1

    .line 118
    .end local v1    # "exception":Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
    :cond_1
    new-instance v2, Lmobi/monaca/framework/nativeui/component/BackButtonComponent;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v2, v3, p2}, Lmobi/monaca/framework/nativeui/component/BackButtonComponent;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 127
    :goto_0
    return-object v2

    .line 120
    :cond_2
    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_button:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    new-instance v2, Lmobi/monaca/framework/nativeui/component/ButtonComponent;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v2, v3, p2}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 122
    :cond_3
    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_searchbox:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 123
    new-instance v2, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v2, v3, p2}, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 124
    :cond_4
    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_label:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 125
    new-instance v2, Lmobi/monaca/framework/nativeui/component/LabelComponent;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v2, v3, p2}, Lmobi/monaca/framework/nativeui/component/LabelComponent;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 126
    :cond_5
    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_name_value_segment:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 127
    new-instance v2, Lmobi/monaca/framework/nativeui/component/SegmentComponent;

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v2, v3, p2}, Lmobi/monaca/framework/nativeui/component/SegmentComponent;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 129
    :cond_6
    new-instance v1, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_name_toolbar:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_key_component:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->leftValidComponents:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0, v4}, Lmobi/monaca/framework/nativeui/exception/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    .restart local v1    # "exception":Lmobi/monaca/framework/nativeui/exception/InvalidValueException;
    throw v1
.end method

.method private buildComponents(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "position"    # Ljava/lang/String;
    .param p2, "componentsJSONArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmobi/monaca/framework/nativeui/component/ToolbarComponent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v3, "leftComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobi/monaca/framework/nativeui/component/ToolbarComponent;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 101
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 102
    .local v1, "componentJSON":Lorg/json/JSONObject;
    invoke-direct {p0, p1, v1}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->buildComponent(Ljava/lang/String;Lorg/json/JSONObject;)Lmobi/monaca/framework/nativeui/component/ToolbarComponent;

    move-result-object v0

    .line 103
    .local v0, "component":Lmobi/monaca/framework/nativeui/component/ToolbarComponent;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "component":Lmobi/monaca/framework/nativeui/component/ToolbarComponent;
    .end local v1    # "componentJSON":Lorg/json/JSONObject;
    :cond_0
    return-object v3
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 290
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 291
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :cond_0
    return-void
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    sget v0, Lmobi/monaca/framework/psedo/R$string;->nc_name_toolbar:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultStyle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lmobi/monaca/framework/nativeui/DefaultStyleJSON;->toolbar()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getShadowView()Landroid/view/View;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->shadowView:Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;

    return-object v0
.end method

.method public getValidKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->toolbarValidKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    return-object v0
.end method

.method public isTransparent()Z
    .locals 6

    .prologue
    .line 297
    iget-object v2, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 298
    .local v0, "opacity":D
    const-wide v2, 0x3feff7ced916872bL    # 0.999

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected style()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    .line 153
    sget v24, Lmobi/monaca/framework/psedo/R$string;->nc_float_one:I

    invoke-static/range {v24 .. v24}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v23

    .line 154
    .local v23, "toolbarOpacityString":Ljava/lang/String;
    const/high16 v22, 0x3f800000    # 1.0f

    .line 155
    .local v22, "toolbarOpacity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 159
    :cond_0
    :try_start_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v22

    .line 160
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-ltz v24, :cond_1

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_2

    .line 161
    :cond_1
    new-instance v24, Lmobi/monaca/framework/nativeui/exception/ValueNotInRangeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_key_style:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    sget v27, Lmobi/monaca/framework/psedo/R$string;->nc_valid_opacity_range:I

    invoke-static/range {v27 .. v27}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v23

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lmobi/monaca/framework/nativeui/exception/ValueNotInRangeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v24
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :catch_0
    move-exception v7

    .line 164
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lmobi/monaca/framework/nativeui/exception/ConversionException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_float:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    invoke-direct {v6, v0, v1, v2, v3}, Lmobi/monaca/framework/nativeui/exception/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v6, "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    throw v6

    .line 168
    .end local v6    # "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->isTransparent()Z

    move-result v24

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->getVisibility()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_6

    const/16 v24, 0x0

    :goto_0
    move/from16 v0, v25

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->animation:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 173
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_7

    new-instance v24, Landroid/view/animation/AlphaAnimation;

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-direct/range {v24 .. v26}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_1
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->animation:Landroid/view/animation/AlphaAnimation;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->animation:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v24, v0

    new-instance v25, Lmobi/monaca/framework/nativeui/container/ToolbarContainer$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer$1;-><init>(Lmobi/monaca/framework/nativeui/container/ToolbarContainer;)V

    invoke-virtual/range {v24 .. v25}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->animation:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v24, v0

    new-instance v25, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v25 .. v25}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual/range {v24 .. v25}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->animation:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v24, v0

    const-wide/16 v25, 0xc8

    invoke-virtual/range {v24 .. v26}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 194
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->animation:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 203
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_titlecolor:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_default_white:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 205
    .local v17, "titleColorString":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setTitleColor(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_subtitlecolor:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_default_white:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 214
    .local v15, "subtitleColorString":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setSubtitleColor(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_titlefontscale:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 223
    .local v18, "titleFontScaleString":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setTitleFontScale(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_subtitlefontscale:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 232
    .local v16, "subtitleFontScaleString":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setSubitleFontScale(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_titleimage:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 241
    .local v20, "titleImagePath":Ljava/lang/String;
    :try_start_5
    const-string v24, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v19, 0x0

    .line 242
    .local v19, "titleImage":Landroid/graphics/Bitmap;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v25, v0

    sget v26, Lmobi/monaca/framework/psedo/R$string;->key_title:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    sget v27, Lmobi/monaca/framework/psedo/R$string;->nc_style_subtitle:I

    invoke-static/range {v27 .. v27}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setTitleSubtitle(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_default_black:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, "backgroundColorString":Ljava/lang/String;
    :try_start_6
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v5}, Lmobi/monaca/framework/nativeui/UIUtil;->buildColor(Ljava/lang/String;)I

    move-result v24

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v9, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 251
    .local v9, "filter":Landroid/graphics/ColorFilter;
    new-instance v21, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lmobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable;-><init>(Landroid/content/Context;)V

    .line 252
    .local v21, "toolbarBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v24 .. v27}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lmobi/monaca/framework/nativeui/UIUtil;->buildOpacity(D)I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->getContentView()Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7

    .line 260
    sget v24, Lmobi/monaca/framework/psedo/R$string;->nc_default_shadow_opacity:I

    invoke-static/range {v24 .. v24}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v14

    .line 261
    .local v14, "shadowOpacityString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_shadowopacity:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_shadowopacity:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 265
    :cond_4
    :try_start_7
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move/from16 v0, v24

    float-to-double v12, v0

    .line 266
    .local v12, "shadowOpacity":D
    const-wide/16 v24, 0x0

    cmpg-double v24, v12, v24

    if-ltz v24, :cond_5

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v24, v12, v24

    if-lez v24, :cond_c

    .line 267
    :cond_5
    new-instance v24, Lmobi/monaca/framework/nativeui/exception/ValueNotInRangeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_style_shadowopacity:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    sget v27, Lmobi/monaca/framework/psedo/R$string;->nc_valid_opacity_range:I

    invoke-static/range {v27 .. v27}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v14, v3}, Lmobi/monaca/framework/nativeui/exception/ValueNotInRangeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v24
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1

    .line 271
    .end local v12    # "shadowOpacity":D
    :catch_1
    move-exception v7

    .line 272
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lmobi/monaca/framework/nativeui/exception/ConversionException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_shadowopacity:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_float:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v6, v0, v1, v14, v2}, Lmobi/monaca/framework/nativeui/exception/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .restart local v6    # "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    throw v6

    .line 168
    .end local v5    # "backgroundColorString":Ljava/lang/String;
    .end local v6    # "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "filter":Landroid/graphics/ColorFilter;
    .end local v14    # "shadowOpacityString":Ljava/lang/String;
    .end local v15    # "subtitleColorString":Ljava/lang/String;
    .end local v16    # "subtitleFontScaleString":Ljava/lang/String;
    .end local v17    # "titleColorString":Ljava/lang/String;
    .end local v18    # "titleFontScaleString":Ljava/lang/String;
    .end local v19    # "titleImage":Landroid/graphics/Bitmap;
    .end local v20    # "titleImagePath":Ljava/lang/String;
    .end local v21    # "toolbarBackground":Landroid/graphics/drawable/Drawable;
    :cond_6
    const/16 v24, 0x4

    goto/16 :goto_0

    .line 173
    :cond_7
    new-instance v24, Landroid/view/animation/AlphaAnimation;

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    invoke-direct/range {v24 .. v26}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto/16 :goto_1

    .line 198
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_9

    const/16 v24, 0x0

    :goto_4
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setVisibility(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->shadowView:Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_a

    const/16 v24, 0x0

    :goto_5
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;->setVisibility(I)V

    goto/16 :goto_2

    .line 198
    :cond_9
    const/16 v24, 0x8

    goto :goto_4

    .line 199
    :cond_a
    const/16 v24, 0x8

    goto :goto_5

    .line 206
    .restart local v17    # "titleColorString":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 207
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Lmobi/monaca/framework/nativeui/exception/ConversionException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_titlecolor:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_color:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    move-object/from16 v3, v26

    invoke-direct {v6, v0, v1, v2, v3}, Lmobi/monaca/framework/nativeui/exception/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .restart local v6    # "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    throw v6

    .line 215
    .end local v6    # "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v15    # "subtitleColorString":Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 216
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Lmobi/monaca/framework/nativeui/exception/ConversionException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_subtitlecolor:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_color:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v6, v0, v1, v15, v2}, Lmobi/monaca/framework/nativeui/exception/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .restart local v6    # "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    throw v6

    .line 224
    .end local v6    # "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v18    # "titleFontScaleString":Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 225
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lmobi/monaca/framework/nativeui/exception/ConversionException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_titlefontscale:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_float:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    invoke-direct {v6, v0, v1, v2, v3}, Lmobi/monaca/framework/nativeui/exception/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .restart local v6    # "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    throw v6

    .line 233
    .end local v6    # "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "subtitleFontScaleString":Ljava/lang/String;
    :catch_5
    move-exception v7

    .line 234
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lmobi/monaca/framework/nativeui/exception/ConversionException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_subtitlefontscale:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_float:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    move-object/from16 v3, v26

    invoke-direct {v6, v0, v1, v2, v3}, Lmobi/monaca/framework/nativeui/exception/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .restart local v6    # "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    throw v6

    .line 241
    .end local v6    # "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v20    # "titleImagePath":Ljava/lang/String;
    :cond_b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->readScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    move-result-object v19

    goto/16 :goto_3

    .line 243
    :catch_6
    move-exception v7

    .line 244
    .local v7, "e":Ljava/io/IOException;
    new-instance v8, Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_titleimage:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    move-object/from16 v3, v26

    invoke-direct {v8, v0, v1, v2, v3}, Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v8, "exception":Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
    throw v8

    .line 255
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "exception":Lmobi/monaca/framework/nativeui/exception/NativeUIIOException;
    .restart local v5    # "backgroundColorString":Ljava/lang/String;
    .restart local v19    # "titleImage":Landroid/graphics/Bitmap;
    :catch_7
    move-exception v7

    .line 256
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Lmobi/monaca/framework/nativeui/exception/ConversionException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getComponentName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static/range {v25 .. v25}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v25

    sget v26, Lmobi/monaca/framework/psedo/R$string;->nc_color:I

    invoke-static/range {v26 .. v26}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v6, v0, v1, v5, v2}, Lmobi/monaca/framework/nativeui/exception/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .restart local v6    # "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    throw v6

    .line 269
    .end local v6    # "conversionException":Lmobi/monaca/framework/nativeui/exception/ConversionException;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "filter":Landroid/graphics/ColorFilter;
    .restart local v12    # "shadowOpacity":D
    .restart local v14    # "shadowOpacityString":Ljava/lang/String;
    .restart local v21    # "toolbarBackground":Landroid/graphics/drawable/Drawable;
    :cond_c
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v10, v24, v12

    .line 270
    .local v10, "relativeShadowOpacity":D
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->shadowView:Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v24

    invoke-static {v10, v11}, Lmobi/monaca/framework/nativeui/UIUtil;->buildOpacity(D)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_1

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setBackgroundColor(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    move-object/from16 v24, v0

    new-instance v25, Lmobi/monaca/framework/nativeui/container/ToolbarContainer$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer$2;-><init>(Lmobi/monaca/framework/nativeui/container/ToolbarContainer;)V

    invoke-virtual/range {v24 .. v25}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method

.method public updateStyle(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "update"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->updateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 136
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style()V

    .line 137
    return-void
.end method
