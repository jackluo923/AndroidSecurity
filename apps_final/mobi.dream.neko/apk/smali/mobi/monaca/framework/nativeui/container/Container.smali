.class public abstract Lmobi/monaca/framework/nativeui/container/Container;
.super Lmobi/monaca/framework/nativeui/component/Component;
.source "Container.java"


# direct methods
.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "context"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "componentJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;,
            Lmobi/monaca/framework/nativeui/exception/DuplicateIDException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/component/Component;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 17
    return-void
.end method


# virtual methods
.method public abstract getShadowView()Landroid/view/View;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract isTransparent()Z
.end method
