.class public Lmobi/monaca/framework/nativeui/component/BackButtonComponent;
.super Lmobi/monaca/framework/nativeui/component/ButtonComponent;
.source "BackButtonComponent.java"


# static fields
.field protected static final STYLE_VALID_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_disable:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_opacity:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_backgroundcolor:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_activetextcolor:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_textcolor:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_image:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_innerImage:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_text:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_forcevisibility:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/component/BackButtonComponent;->STYLE_VALID_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "buttonJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 28
    :try_start_0
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/BackButtonComponent;->style:Lorg/json/JSONObject;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmobi/monaca/framework/nativeui/component/BackButtonComponent;->style:Lorg/json/JSONObject;

    sget v4, Lmobi/monaca/framework/psedo/R$string;->nc_style_forcevisibility:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    invoke-virtual {p0}, Lmobi/monaca/framework/nativeui/component/BackButtonComponent;->style()V

    .line 34
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/BackButtonComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/UIContext;->getPageComponent()Lmobi/monaca/framework/nativeui/component/PageComponent;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/component/BackButtonComponent;->eventer:Lmobi/monaca/framework/nativeui/ComponentEventer;

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/nativeui/component/PageComponent;->setBackButtonEventer(Lmobi/monaca/framework/nativeui/ComponentEventer;)V

    .line 35
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget v0, Lmobi/monaca/framework/psedo/R$string;->nc_name_backbutton:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultStyle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lmobi/monaca/framework/nativeui/DefaultStyleJSON;->backButton()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected getStyleValidKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lmobi/monaca/framework/nativeui/component/BackButtonComponent;->STYLE_VALID_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method protected style()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/NativeUIException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->style()V

    .line 55
    return-void
.end method
