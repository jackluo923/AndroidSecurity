.class Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$2;
.super Ljava/lang/Object;
.source "SearchBoxComponent.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$2;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent$2;->this$0:Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/SearchBoxComponent;->style:Lorg/json/JSONObject;

    const-string v1, "focus"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method
