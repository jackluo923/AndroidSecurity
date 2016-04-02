.class final Lnet/simonvt/menudrawer/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:Lnet/simonvt/menudrawer/MenuDrawer;


# direct methods
.method constructor <init>(Lnet/simonvt/menudrawer/MenuDrawer;)V
    .locals 0

    iput-object p1, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 3

    iget-object v0, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v0, v0, Lnet/simonvt/menudrawer/MenuDrawer;->z:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, v1, Lnet/simonvt/menudrawer/MenuDrawer;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/MenuDrawer;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v0, v0, Lnet/simonvt/menudrawer/MenuDrawer;->z:Landroid/view/View;

    iget-object v1, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-static {v1}, Lnet/simonvt/menudrawer/MenuDrawer;->b(Lnet/simonvt/menudrawer/MenuDrawer;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, v1, Lnet/simonvt/menudrawer/MenuDrawer;->z:Landroid/view/View;

    iget-object v2, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-static {v2}, Lnet/simonvt/menudrawer/MenuDrawer;->b(Lnet/simonvt/menudrawer/MenuDrawer;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/MenuDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-static {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->b(Lnet/simonvt/menudrawer/MenuDrawer;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, v1, Lnet/simonvt/menudrawer/MenuDrawer;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-static {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->b(Lnet/simonvt/menudrawer/MenuDrawer;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, v1, Lnet/simonvt/menudrawer/MenuDrawer;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-static {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->b(Lnet/simonvt/menudrawer/MenuDrawer;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, v1, Lnet/simonvt/menudrawer/MenuDrawer;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-static {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->b(Lnet/simonvt/menudrawer/MenuDrawer;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    iget-object v1, v1, Lnet/simonvt/menudrawer/MenuDrawer;->B:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/m;->a:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/MenuDrawer;->invalidate()V

    :cond_1
    return-void
.end method
