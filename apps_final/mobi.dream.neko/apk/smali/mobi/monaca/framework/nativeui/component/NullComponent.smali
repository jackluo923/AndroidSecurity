.class public Lmobi/monaca/framework/nativeui/component/NullComponent;
.super Lmobi/monaca/framework/nativeui/component/ToolbarComponent;
.source "NullComponent.java"


# instance fields
.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;)V
    .locals 2
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;,
            Lmobi/monaca/framework/nativeui/exception/DuplicateIDException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v0}, Lmobi/monaca/framework/nativeui/component/ToolbarComponent;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 21
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/component/NullComponent;->view:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/NullComponent;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget v0, Lmobi/monaca/framework/psedo/R$string;->nc_name_null:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultStyle()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValidKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/NullComponent;->view:Landroid/view/View;

    return-object v0
.end method

.method public updateStyle(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "style"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    return-void
.end method
