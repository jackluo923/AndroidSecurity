.class public Lmobi/monaca/framework/nativeui/UIEventer;
.super Lmobi/monaca/framework/nativeui/component/Component;
.source "UIEventer.java"


# static fields
.field protected static final validKeys:[Ljava/lang/String;


# instance fields
.field protected event:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_ontapbackbutton:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_ontap:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lmobi/monaca/framework/nativeui/UIEventer;->validKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "event"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;,
            Lmobi/monaca/framework/nativeui/exception/DuplicateIDException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/component/Component;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 22
    iput-object p2, p0, Lmobi/monaca/framework/nativeui/UIEventer;->event:Lorg/json/JSONObject;

    .line 23
    return-void
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget v0, Lmobi/monaca/framework/psedo/R$string;->nc_key_event:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultStyle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValidKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lmobi/monaca/framework/nativeui/UIEventer;->validKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasOnTapBackButtonAction()Z
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/UIEventer;->event:Lorg/json/JSONObject;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_ontapbackbutton:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTapBackButton()V
    .locals 4

    .prologue
    .line 30
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/UIEventer;->event:Lorg/json/JSONObject;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->nc_key_ontapbackbutton:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "code":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    iget-object v1, p0, Lmobi/monaca/framework/nativeui/UIEventer;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lmobi/monaca/framework/psedo/R$string;->js_scheme:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/nativeui/UIContext;->react(Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public updateStyle(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "update"    # Lorg/json/JSONObject;

    .prologue
    .line 55
    return-void
.end method
