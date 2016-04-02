.class final Lcom/appyet/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/CustomizeActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/CustomizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/a;->a:Lcom/appyet/activity/CustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/c;

    iget-object v1, p0, Lcom/appyet/activity/a;->a:Lcom/appyet/activity/CustomizeActivity;

    iget-object v1, v1, Lcom/appyet/activity/CustomizeActivity;->b:Lcom/appyet/activity/MainActivity;

    iget-object v2, v0, Lcom/appyet/activity/c;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/appyet/activity/c;->d:Ljava/lang/Long;

    iget-object v0, v0, Lcom/appyet/activity/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/appyet/activity/MainActivity;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method
