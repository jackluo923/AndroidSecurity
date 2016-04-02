.class public abstract Lmobi/monaca/framework/nativeui/component/ToolbarComponent;
.super Lmobi/monaca/framework/nativeui/component/Component;
.source "ToolbarComponent.java"


# direct methods
.method public constructor <init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "uiContext"    # Lmobi/monaca/framework/nativeui/UIContext;
    .param p2, "compoJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;,
            Lmobi/monaca/framework/nativeui/exception/DuplicateIDException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/component/Component;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    .line 14
    return-void
.end method
