.class public Lmobi/monaca/framework/nativeui/component/SegmentComponent;
.super Lmobi/monaca/framework/nativeui/component/ToolbarComponent;
.source "SegmentComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;,
        Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;
    }
.end annotation


# static fields
.field protected static final SEGMENT_VALID_KEYS:[Ljava/lang/String;

.field protected static final STYLE_VALID_KEYS:[Ljava/lang/String;


# instance fields
.field protected backgroundColor:I

.field protected eventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

.field protected pressedBackgroundColor:I

.field protected view:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_component:I

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

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_event:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->SEGMENT_VALID_KEYS:[Ljava/lang/String;

    .line 45
    const/16 v0, 0x8

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

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_style_activetextcolor:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_textcolor:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_texts:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_activeindex:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->STYLE_VALID_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "segmentJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/component/ToolbarComponent;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 35
    const v0, -0xaaaaab

    iput v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->backgroundColor:I

    .line 63
    new-instance v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;

    invoke-direct {v0, p0, p1}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;-><init>(Lmobi/monaca/framework/nativeui/component/SegmentComponent;Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->view:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->style:Lorg/json/JSONObject;

    sget-object v2, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->STYLE_VALID_KEYS:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lmobi/monaca/framework/nativeui/UIValidator;->validateKey(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->buildEventer()V

    .line 67
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->style()V

    .line 68
    return-void
.end method

.method private buildEventer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lmobi/monaca/framework/nativeui/ComponentEventer;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->getComponentJSON()Lorg/json/JSONObject;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_key_event:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmobi/monaca/framework/nativeui/ComponentEventer;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->eventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

    .line 72
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 80
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 81
    return-void
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const-string v0, "Segment"

    return-object v0
.end method

.method public getDefaultStyle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lmobi/monaca/framework/nativeui/DefaultStyleJSON;->segment()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getValidKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->SEGMENT_VALID_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->view:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;

    return-object v0
.end method

.method protected style()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->style:Lorg/json/JSONObject;

    const-string v4, "texts"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 85
    .local v18, "texts":Lorg/json/JSONArray;
    if-nez v18, :cond_0

    .line 86
    new-instance v3, Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->getComponentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_style_texts:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->getComponentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->nc_default_red:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->style:Lorg/json/JSONObject;

    invoke-static {v3, v4, v5, v6, v9}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->backgroundColor:I

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->getComponentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_style_textcolor:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->nc_default_white:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->style:Lorg/json/JSONObject;

    invoke-static {v3, v4, v5, v6, v9}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v7

    .line 94
    .local v7, "textColor":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->getComponentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_style_activetextcolor:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->nc_default_white:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->style:Lorg/json/JSONObject;

    invoke-static {v3, v4, v5, v6, v9}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v8

    .line 97
    .local v8, "activeTextColor":I
    if-eqz v18, :cond_4

    .line 98
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->view:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;

    invoke-virtual {v3}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->removeAllSegmentItemViews()V

    .line 99
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_3

    .line 100
    new-instance v2, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->backgroundColor:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;-><init>(Lmobi/monaca/framework/nativeui/component/SegmentComponent;Lmobi/monaca/framework/nativeui/UIContext;Ljava/lang/String;III)V

    .line 101
    .local v2, "item":Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;
    if-nez v17, :cond_1

    .line 102
    invoke-virtual {v2}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->setAsLeft()V

    .line 108
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->view:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;

    invoke-virtual {v3, v2}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->addSegmentItemView(Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;)V

    .line 99
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_2

    .line 104
    invoke-virtual {v2}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->setAsRight()V

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {v2}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->setAsCenter()V

    goto :goto_1

    .line 110
    .end local v2    # "item":Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;
    :cond_3
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->view:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;

    invoke-virtual {v3}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->setAsSingle()V

    .line 115
    .end local v17    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->view:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->style:Lorg/json/JSONObject;

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4, v3}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->setVisibility(I)V

    .line 116
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->view:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->style:Lorg/json/JSONObject;

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_style_disable:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->setDisable(Z)V

    .line 118
    move-object/from16 v0, p0

    iget-object v9, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->getComponentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_parse_style:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_style_activeindex:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "0"

    move-object/from16 v0, p0

    iget-object v13, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->style:Lorg/json/JSONObject;

    const/4 v14, 0x0

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v15, v3, -0x1

    invoke-static/range {v9 .. v15}, Lmobi/monaca/framework/nativeui/UIValidator;->parseAndValidateInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;II)I

    move-result v16

    .line 119
    .local v16, "activeIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->view:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->setActiveIndex(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->view:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;

    invoke-virtual {v3}, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentComponentView;->updateSegmentItemsWidth()V

    .line 121
    return-void

    .line 115
    .end local v16    # "activeIndex":I
    :cond_5
    const/4 v3, 0x4

    goto :goto_2
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
    .line 254
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->style:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lmobi/monaca/framework/nativeui/UIUtil;->updateJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 255
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/SegmentComponent;->style()V

    .line 256
    return-void
.end method
