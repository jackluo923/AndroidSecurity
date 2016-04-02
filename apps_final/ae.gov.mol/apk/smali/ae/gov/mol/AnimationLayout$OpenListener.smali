.class Lae/gov/mol/AnimationLayout$OpenListener;
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
    name = "OpenListener"
.end annotation


# instance fields
.field iContent:Landroid/view/View;

.field iSidebar:Landroid/view/View;

.field final synthetic this$0:Lae/gov/mol/AnimationLayout;


# direct methods
.method constructor <init>(Lae/gov/mol/AnimationLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p2, "sidebar"    # Landroid/view/View;
    .param p3, "content"    # Landroid/view/View;

    .prologue
    .line 223
    iput-object p1, p0, Lae/gov/mol/AnimationLayout$OpenListener;->this$0:Lae/gov/mol/AnimationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lae/gov/mol/AnimationLayout$OpenListener;->iSidebar:Landroid/view/View;

    .line 225
    iput-object p3, p0, Lae/gov/mol/AnimationLayout$OpenListener;->iContent:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lae/gov/mol/AnimationLayout$OpenListener;->iSidebar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 238
    iget-object v0, p0, Lae/gov/mol/AnimationLayout$OpenListener;->iContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 239
    iget-object v1, p0, Lae/gov/mol/AnimationLayout$OpenListener;->this$0:Lae/gov/mol/AnimationLayout;

    iget-object v0, p0, Lae/gov/mol/AnimationLayout$OpenListener;->this$0:Lae/gov/mol/AnimationLayout;

    iget-boolean v0, v0, Lae/gov/mol/AnimationLayout;->mOpened:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lae/gov/mol/AnimationLayout;->mOpened:Z

    .line 240
    iget-object v0, p0, Lae/gov/mol/AnimationLayout$OpenListener;->this$0:Lae/gov/mol/AnimationLayout;

    invoke-virtual {v0}, Lae/gov/mol/AnimationLayout;->requestLayout()V

    .line 241
    iget-object v0, p0, Lae/gov/mol/AnimationLayout$OpenListener;->this$0:Lae/gov/mol/AnimationLayout;

    iget-object v0, v0, Lae/gov/mol/AnimationLayout;->mListener:Lae/gov/mol/AnimationLayout$Listener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lae/gov/mol/AnimationLayout$OpenListener;->this$0:Lae/gov/mol/AnimationLayout;

    iget-object v0, v0, Lae/gov/mol/AnimationLayout;->mListener:Lae/gov/mol/AnimationLayout$Listener;

    invoke-interface {v0}, Lae/gov/mol/AnimationLayout$Listener;->onSidebarOpened()V

    .line 244
    :cond_0
    return-void

    .line 239
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 231
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 234
    iget-object v0, p0, Lae/gov/mol/AnimationLayout$OpenListener;->iSidebar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    return-void
.end method
