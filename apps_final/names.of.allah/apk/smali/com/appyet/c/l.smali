.class final Lcom/appyet/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/appyet/c/k;


# direct methods
.method constructor <init>(Lcom/appyet/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/l;->a:Lcom/appyet/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/l;->a:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->a(Lcom/appyet/c/k;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/l;->a:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->a(Lcom/appyet/c/k;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
