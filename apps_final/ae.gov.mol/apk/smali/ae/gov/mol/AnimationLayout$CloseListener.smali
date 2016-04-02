.class Lae/gov/mol/AnimationLayout$CloseListener;
.super Ljava/lang/Object;
.source "AnimationLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/AnimationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CloseListener"
.end annotation


# instance fields
.field iContent:Landroid/view/View;

.field iSidebar:Landroid/view/View;

.field final synthetic this$0:Lae/gov/mol/AnimationLayout;


# direct methods
.method constructor <init>(Lae/gov/mol/AnimationLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p2, "sidebar"    # Landroid/view/View;
    .param p3, "content"    # Landroid/view/View;

    .prologue
    .line 256
    iput-object p1, p0, Lae/gov/mol/AnimationLayout$CloseListener;->this$0:Lae/gov/mol/AnimationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p2, p0, Lae/gov/mol/AnimationLayout$CloseListener;->iSidebar:Landroid/view/View;

    .line 258
    iput-object p3, p0, Lae/gov/mol/AnimationLayout$CloseListener;->iContent:Landroid/view/View;

    .line 259
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 267
    iget-object v0, p0, Lae/gov/mol/AnimationLayout$CloseListener;->iContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 268
    iget-object v0, p0, Lae/gov/mol/AnimationLayout$CloseListener;->iSidebar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v1, p0, Lae/gov/mol/AnimationLayout$CloseListener;->this$0:Lae/gov/mol/AnimationLayout;

    iget-object v0, p0, Lae/gov/mol/AnimationLayout$CloseListener;->this$0:Lae/gov/mol/AnimationLayout;

    iget-boolean v0, v0, Lae/gov/mol/AnimationLayout;->mOpened:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lae/gov/mol/AnimationLayout;->mOpened:Z

    .line 270
    iget-object v0, p0, Lae/gov/mol/AnimationLayout$CloseListener;->this$0:Lae/gov/mol/AnimationLayout;

    invoke-virtual {v0}, Lae/gov/mol/AnimationLayout;->requestLayout()V

    .line 271
    iget-object v0, p0, Lae/gov/mol/AnimationLayout$CloseListener;->this$0:Lae/gov/mol/AnimationLayout;

    iget-object v0, v0, Lae/gov/mol/AnimationLayout;->mListener:Lae/gov/mol/AnimationLayout$Listener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lae/gov/mol/AnimationLayout$CloseListener;->this$0:Lae/gov/mol/AnimationLayout;

    iget-object v0, v0, Lae/gov/mol/AnimationLayout;->mListener:Lae/gov/mol/AnimationLayout$Listener;

    invoke-interface {v0}, Lae/gov/mol/AnimationLayout$Listener;->onSidebarClosed()V

    .line 274
    :cond_0
    return-void

    .line 269
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 262
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 264
    return-void
.end method
