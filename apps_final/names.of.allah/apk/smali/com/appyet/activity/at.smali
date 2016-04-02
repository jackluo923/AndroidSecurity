.class final Lcom/appyet/activity/at;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/appyet/data/Module;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/activity/WidgetConfigureActivity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/appyet/activity/WidgetConfigureActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appyet/activity/at;->a:Lcom/appyet/activity/WidgetConfigureActivity;

    const v0, 0x7f030029

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/appyet/activity/at;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/appyet/activity/at;->b:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f030029

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/appyet/activity/at;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appyet/data/Module;

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    iget-object v4, p0, Lcom/appyet/activity/at;->a:Lcom/appyet/activity/WidgetConfigureActivity;

    invoke-static {v4}, Lcom/appyet/activity/WidgetConfigureActivity;->b(Lcom/appyet/activity/WidgetConfigureActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v4

    invoke-virtual {v1}, Lcom/appyet/data/Module;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/appyet/f/w;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v3

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    move-object v3, p2

    goto :goto_0
.end method
