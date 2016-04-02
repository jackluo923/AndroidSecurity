.class public Lcom/actionbarsherlock/internal/widget/CollapsibleActionViewWrapper;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/CollapsibleActionView;


# instance fields
.field private final child:Lcom/actionbarsherlock/view/CollapsibleActionView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    check-cast v0, Lcom/actionbarsherlock/view/CollapsibleActionView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/CollapsibleActionViewWrapper;->child:Lcom/actionbarsherlock/view/CollapsibleActionView;

    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/internal/widget/CollapsibleActionViewWrapper;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onActionViewCollapsed()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/CollapsibleActionViewWrapper;->child:Lcom/actionbarsherlock/view/CollapsibleActionView;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/CollapsibleActionView;->onActionViewCollapsed()V

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/CollapsibleActionViewWrapper;->child:Lcom/actionbarsherlock/view/CollapsibleActionView;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/CollapsibleActionView;->onActionViewExpanded()V

    return-void
.end method

.method public unwrap()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/widget/CollapsibleActionViewWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
