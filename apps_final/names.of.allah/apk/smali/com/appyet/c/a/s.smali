.class final Lcom/appyet/c/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/c/a/r;


# direct methods
.method constructor <init>(Lcom/appyet/c/a/r;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/s;->a:Lcom/appyet/c/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/c/a/s;->a:Lcom/appyet/c/a/r;

    invoke-static {v0, p3}, Lcom/appyet/c/a/r;->a(Lcom/appyet/c/a/r;I)V

    return-void
.end method
