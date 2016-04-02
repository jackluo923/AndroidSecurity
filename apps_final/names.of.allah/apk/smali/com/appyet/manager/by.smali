.class final Lcom/appyet/manager/by;
.super Lcom/appyet/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appyet/f/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/manager/bx;


# direct methods
.method constructor <init>(Lcom/appyet/manager/bx;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/by;->a:Lcom/appyet/manager/bx;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/appyet/manager/by;->a:Lcom/appyet/manager/bx;

    iget-object v2, v2, Lcom/appyet/manager/bx;->a:Lcom/appyet/context/ApplicationContext;

    const-class v3, Lcom/appyet/provider/WidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/appyet/manager/by;->a:Lcom/appyet/manager/bx;

    iget-object v2, v2, Lcom/appyet/manager/bx;->a:Lcom/appyet/context/ApplicationContext;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v1, v0

    iget-object v5, p0, Lcom/appyet/manager/by;->a:Lcom/appyet/manager/bx;

    iget-object v5, v5, Lcom/appyet/manager/bx;->a:Lcom/appyet/context/ApplicationContext;

    const/4 v6, 0x0

    invoke-static {v5, v2, v4, v6}, Lcom/appyet/provider/WidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    invoke-super {p0}, Lcom/appyet/f/a;->a()V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/manager/by;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
