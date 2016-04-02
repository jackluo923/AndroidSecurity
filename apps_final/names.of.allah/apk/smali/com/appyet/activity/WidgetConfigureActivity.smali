.class public Lcom/appyet/activity/WidgetConfigureActivity;
.super Landroid/app/ListActivity;


# instance fields
.field a:I

.field private b:Lcom/appyet/activity/at;

.field private c:Lcom/appyet/context/ApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/activity/WidgetConfigureActivity;->a:I

    return-void
.end method

.method static synthetic a(Lcom/appyet/activity/WidgetConfigureActivity;)Lcom/appyet/activity/at;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/WidgetConfigureActivity;->b:Lcom/appyet/activity/at;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/activity/WidgetConfigureActivity;)Lcom/appyet/context/ApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/WidgetConfigureActivity;->c:Lcom/appyet/context/ApplicationContext;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WidgetConfigureActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WidgetConfigureActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/activity/WidgetConfigureActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/WidgetConfigureActivity;->c:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {p0}, Lcom/appyet/activity/WidgetConfigureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/appyet/activity/WidgetConfigureActivity;->a:I

    :cond_0
    iget v0, p0, Lcom/appyet/activity/WidgetConfigureActivity;->a:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/appyet/activity/WidgetConfigureActivity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/appyet/activity/WidgetConfigureActivity;->c:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->g()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/Module;

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Feed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FeedQuery"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    invoke-virtual {v0}, Lcom/appyet/data/Module;->getIsHidden()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/appyet/activity/WidgetConfigureActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/appyet/activity/as;

    invoke-direct {v2, p0}, Lcom/appyet/activity/as;-><init>(Lcom/appyet/activity/WidgetConfigureActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/appyet/activity/at;

    invoke-direct {v0, p0, p0, v1}, Lcom/appyet/activity/at;-><init>(Lcom/appyet/activity/WidgetConfigureActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/appyet/activity/WidgetConfigureActivity;->b:Lcom/appyet/activity/at;

    iget-object v0, p0, Lcom/appyet/activity/WidgetConfigureActivity;->b:Lcom/appyet/activity/at;

    invoke-virtual {p0, v0}, Lcom/appyet/activity/WidgetConfigureActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-static {p0}, Lcom/appyet/manager/ar;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
