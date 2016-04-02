.class Lmobi/monaca/framework/nativeui/container/ToolbarContainer$2;
.super Ljava/lang/Object;
.source "ToolbarContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 280
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer$2;->this$0:Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer$2;->this$0:Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->view:Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;->requestFocus()Z

    .line 284
    return-void
.end method
