.class final Luk/co/senab/photoview/c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Luk/co/senab/photoview/b;


# direct methods
.method constructor <init>(Luk/co/senab/photoview/b;)V
    .locals 0

    iput-object p1, p0, Luk/co/senab/photoview/c;->a:Luk/co/senab/photoview/b;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Luk/co/senab/photoview/c;->a:Luk/co/senab/photoview/b;

    invoke-static {v0}, Luk/co/senab/photoview/b;->a(Luk/co/senab/photoview/b;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/c;->a:Luk/co/senab/photoview/b;

    invoke-static {v0}, Luk/co/senab/photoview/b;->a(Luk/co/senab/photoview/b;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    iget-object v0, p0, Luk/co/senab/photoview/c;->a:Luk/co/senab/photoview/b;

    invoke-static {v0}, Luk/co/senab/photoview/b;->b(Luk/co/senab/photoview/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
