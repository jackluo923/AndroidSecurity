.class public final Lcom/appyet/c/ay;
.super Lcom/actionbarsherlock/app/SherlockListFragment;


# instance fields
.field a:Lcom/appyet/context/ApplicationContext;

.field b:Lcom/appyet/activity/MainActivity;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/Feed;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/appyet/c/ba;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appyet/data/Module;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/c/ay;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/c/ay;->f:Z

    new-instance v0, Lcom/appyet/c/az;

    invoke-direct {v0, p0}, Lcom/appyet/c/az;-><init>(Lcom/appyet/c/ay;)V

    iput-object v0, p0, Lcom/appyet/c/ay;->g:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/appyet/c/ay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/c/ay;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/appyet/c/ay;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/c/ay;->f:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcom/appyet/c/bc;

    invoke-direct {v0, p0}, Lcom/appyet/c/bc;-><init>(Lcom/appyet/c/ay;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/bc;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appyet/c/ay;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataTheme;->LeftMenuBgColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/appyet/c/ay;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    new-instance v0, Lcom/appyet/c/ba;

    invoke-virtual {p0}, Lcom/appyet/c/ay;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appyet/c/ba;-><init>(Lcom/appyet/c/ay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/c/ay;->d:Lcom/appyet/c/ba;

    invoke-virtual {p0}, Lcom/appyet/c/ay;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/appyet/c/ay;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/ay;->g:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/appyet/c/ay;->a()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/appyet/c/ay;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/ay;->a:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {p0}, Lcom/appyet/c/ay;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/appyet/activity/MainActivity;

    iput-object v0, p0, Lcom/appyet/c/ay;->b:Lcom/appyet/activity/MainActivity;

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f030053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onResume()V

    return-void
.end method
