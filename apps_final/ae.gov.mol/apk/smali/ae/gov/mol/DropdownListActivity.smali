.class public Lae/gov/mol/DropdownListActivity;
.super Landroid/app/ListActivity;
.source "DropdownListActivity.java"


# instance fields
.field private dataMapValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private masterDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lae/gov/mol/vo/MasterDataListVo;",
            ">;"
        }
    .end annotation
.end field

.field private pageTitleTv:Landroid/widget/TextView;

.field private search:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/DropdownListActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lae/gov/mol/DropdownListActivity;->search:Landroid/widget/EditText;

    return-object v0
.end method

.method private getValueCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v1, p0, Lae/gov/mol/DropdownListActivity;->masterDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 76
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/MasterDataListVo;

    .line 77
    .local v0, "row":Lae/gov/mol/vo/MasterDataListVo;
    invoke-virtual {v0}, Lae/gov/mol/vo/MasterDataListVo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v0}, Lae/gov/mol/vo/MasterDataListVo;->getCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lae/gov/mol/DropdownListActivity;->requestWindowFeature(I)Z

    .line 32
    const v3, 0x7f030018

    invoke-virtual {p0, v3}, Lae/gov/mol/DropdownListActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lae/gov/mol/DropdownListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "DATA_MAP"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lae/gov/mol/DropdownListActivity;->masterDataList:Ljava/util/List;

    .line 35
    invoke-virtual {p0}, Lae/gov/mol/DropdownListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "PAGE_TITLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "pageTitle":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lae/gov/mol/DropdownListActivity;->dataMapValues:Ljava/util/List;

    .line 38
    iget-object v3, p0, Lae/gov/mol/DropdownListActivity;->masterDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 43
    const v3, 0x7f03002a

    iget-object v4, p0, Lae/gov/mol/DropdownListActivity;->dataMapValues:Ljava/util/List;

    .line 42
    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 44
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lae/gov/mol/DropdownListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    const v3, 0x7f060048

    invoke-virtual {p0, v3}, Lae/gov/mol/DropdownListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lae/gov/mol/DropdownListActivity;->search:Landroid/widget/EditText;

    .line 47
    const v3, 0x7f060047

    invoke-virtual {p0, v3}, Lae/gov/mol/DropdownListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lae/gov/mol/DropdownListActivity;->pageTitleTv:Landroid/widget/TextView;

    .line 50
    iget-object v3, p0, Lae/gov/mol/DropdownListActivity;->search:Landroid/widget/EditText;

    new-instance v4, Lae/gov/mol/DropdownListActivity$1;

    invoke-direct {v4, p0, v0}, Lae/gov/mol/DropdownListActivity$1;-><init>(Lae/gov/mol/DropdownListActivity;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    iget-object v3, p0, Lae/gov/mol/DropdownListActivity;->pageTitleTv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void

    .line 38
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/MasterDataListVo;

    .line 39
    .local v2, "row":Lae/gov/mol/vo/MasterDataListVo;
    iget-object v4, p0, Lae/gov/mol/DropdownListActivity;->dataMapValues:Ljava/util/List;

    invoke-virtual {v2}, Lae/gov/mol/vo/MasterDataListVo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 91
    invoke-virtual {p0}, Lae/gov/mol/DropdownListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 65
    invoke-virtual {p0}, Lae/gov/mol/DropdownListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    .local v2, "item":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "SELECTED_VALUE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-direct {p0, v2}, Lae/gov/mol/DropdownListActivity;->getValueCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "code":Ljava/lang/String;
    const-string v3, "SELECTED_CODE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lae/gov/mol/DropdownListActivity;->setResult(ILandroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lae/gov/mol/DropdownListActivity;->finish()V

    .line 72
    return-void
.end method
