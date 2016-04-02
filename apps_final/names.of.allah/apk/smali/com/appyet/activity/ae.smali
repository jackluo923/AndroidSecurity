.class final Lcom/appyet/activity/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/TranslateActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/TranslateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/ae;->a:Lcom/appyet/activity/TranslateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/activity/ae;->a:Lcom/appyet/activity/TranslateActivity;

    iget-object v1, p0, Lcom/appyet/activity/ae;->a:Lcom/appyet/activity/TranslateActivity;

    invoke-virtual {v1}, Lcom/appyet/activity/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/appyet/activity/TranslateActivity;->a(Lcom/appyet/activity/TranslateActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/activity/ae;->a:Lcom/appyet/activity/TranslateActivity;

    invoke-static {v0}, Lcom/appyet/activity/TranslateActivity;->a(Lcom/appyet/activity/TranslateActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0, p3}, Lcom/appyet/manager/bp;->e(I)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
