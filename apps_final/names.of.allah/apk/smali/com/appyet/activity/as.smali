.class final Lcom/appyet/activity/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/WidgetConfigureActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/WidgetConfigureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/as;->a:Lcom/appyet/activity/WidgetConfigureActivity;

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

    :try_start_0
    iget-object v0, p0, Lcom/appyet/activity/as;->a:Lcom/appyet/activity/WidgetConfigureActivity;

    invoke-static {v0}, Lcom/appyet/activity/WidgetConfigureActivity;->a(Lcom/appyet/activity/WidgetConfigureActivity;)Lcom/appyet/activity/at;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/appyet/activity/at;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Module;

    new-instance v1, Lcom/appyet/data/Widget;

    invoke-direct {v1}, Lcom/appyet/data/Widget;-><init>()V

    iget-object v2, p0, Lcom/appyet/activity/as;->a:Lcom/appyet/activity/WidgetConfigureActivity;

    iget v2, v2, Lcom/appyet/activity/WidgetConfigureActivity;->a:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appyet/data/Widget;->setWidgetId(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getModuleId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/data/Widget;->setModuleId(Ljava/lang/Long;)V

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/appyet/data/Widget;->setPosition(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/appyet/activity/as;->a:Lcom/appyet/activity/WidgetConfigureActivity;

    invoke-static {v0}, Lcom/appyet/activity/WidgetConfigureActivity;->b(Lcom/appyet/activity/WidgetConfigureActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/d;->a(Lcom/appyet/data/Widget;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget-object v2, p0, Lcom/appyet/activity/as;->a:Lcom/appyet/activity/WidgetConfigureActivity;

    iget v2, v2, Lcom/appyet/activity/WidgetConfigureActivity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/as;->a:Lcom/appyet/activity/WidgetConfigureActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/appyet/activity/WidgetConfigureActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/appyet/activity/as;->a:Lcom/appyet/activity/WidgetConfigureActivity;

    invoke-static {v0}, Lcom/appyet/activity/WidgetConfigureActivity;->b(Lcom/appyet/activity/WidgetConfigureActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/as;->a:Lcom/appyet/activity/WidgetConfigureActivity;

    invoke-static {v1}, Lcom/appyet/activity/WidgetConfigureActivity;->b(Lcom/appyet/activity/WidgetConfigureActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/activity/as;->a:Lcom/appyet/activity/WidgetConfigureActivity;

    iget v2, v2, Lcom/appyet/activity/WidgetConfigureActivity;->a:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/appyet/provider/WidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V

    iget-object v0, p0, Lcom/appyet/activity/as;->a:Lcom/appyet/activity/WidgetConfigureActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/WidgetConfigureActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/appyet/activity/as;->a:Lcom/appyet/activity/WidgetConfigureActivity;

    invoke-static {v0}, Lcom/appyet/activity/WidgetConfigureActivity;->b(Lcom/appyet/activity/WidgetConfigureActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    const v1, 0x7f080046

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
