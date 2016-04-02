.class Lmobi/monaca/framework/nativeui/container/ToolbarContainer$1;
.super Ljava/lang/Object;
.source "ToolbarContainer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/nativeui/container/ToolbarContainer;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/nativeui/container/ToolbarContainer;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer$1;->this$0:Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer$1;->this$0:Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    iget-object v2, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer$1;->this$0:Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    # getter for: Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;
    invoke-static {v0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->access$000(Lmobi/monaca/framework/nativeui/container/ToolbarContainer;)Lorg/json/JSONObject;

    move-result-object v0

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer$1;->this$0:Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    const/4 v2, 0x0

    iput-object v2, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->animation:Landroid/view/animation/AlphaAnimation;

    .line 187
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer$1;->this$0:Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    # getter for: Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->shadowView:Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;
    invoke-static {v0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->access$200(Lmobi/monaca/framework/nativeui/container/ToolbarContainer;)Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;

    move-result-object v0

    iget-object v2, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer$1;->this$0:Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    # getter for: Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->style:Lorg/json/JSONObject;
    invoke-static {v2}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->access$100(Lmobi/monaca/framework/nativeui/container/ToolbarContainer;)Lorg/json/JSONObject;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->nc_style_visibility:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;->setVisibility(I)V

    .line 188
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 187
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 181
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 177
    return-void
.end method
