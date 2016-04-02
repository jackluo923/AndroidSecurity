.class public Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;
.super Lcom/alipay/android/phone/businesscommon/globalsearch/ui/a;
.source "MoreDataFragment.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "search_more_fragment"
.end annotation


# instance fields
.field protected d:Landroid/widget/ListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "list"
    .end annotation
.end field

.field protected e:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "notFound"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "not_found_desc"
    .end annotation
.end field

.field protected g:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loading"
    .end annotation
.end field

.field private h:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

.field private i:Lcom/alipay/android/phone/globalsearch/a/b;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/view/View;

.field private m:Z

.field private n:Landroid/os/Handler;

.field private o:Landroid/widget/AbsListView$OnScrollListener;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/alipay/android/phone/globalsearch/a/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/a;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->m:Z

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->n:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->o:Landroid/widget/AbsListView$OnScrollListener;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->p:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->q:Lcom/alipay/android/phone/globalsearch/a/i;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Lcom/alipay/android/phone/globalsearch/a/b;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 240
    packed-switch p1, :pswitch_data_0

    .line 248
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :goto_0
    return-void

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->m:Z

    return v0
.end method

.method static synthetic g(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Ljava/util/List;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->p:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "groupId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->k:Ljava/lang/String;

    .line 133
    const-string/jumbo v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->j:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/globalsearch/a/n;->a(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    .line 135
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->q:Lcom/alipay/android/phone/globalsearch/a/i;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Lcom/alipay/android/phone/globalsearch/a/i;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->j:I

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 141
    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->x:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->l:Landroid/view/View;

    .line 142
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->l:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->o:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 147
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->h:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    .line 148
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->h:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->h:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    invoke-direct {p0, v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(I)V

    .line 151
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "MoreDataFragment afterView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    instance-of v0, v0, Lcom/alipay/android/phone/globalsearch/a/k;

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->p:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->b(Ljava/util/List;)V

    .line 157
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/l;->a()Lcom/alipay/android/phone/globalsearch/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/l;->b()V

    .line 158
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "afterView , clearSearchParams"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/l;->a()Lcom/alipay/android/phone/globalsearch/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/phone/globalsearch/a/l;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 235
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->j:Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(I)V

    .line 237
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/a;->a(Ljava/util/List;)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->b(Ljava/util/List;)V

    .line 190
    return-void
.end method

.method protected a(Z)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->l:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_0
    return-void

    .line 195
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v0, v1, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->a(Lcom/alipay/android/phone/globalsearch/a/i;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/b;->b()V

    .line 175
    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    .line 178
    :cond_0
    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(I)V

    .line 205
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/h;->a:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->j:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->h:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->h:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 215
    :cond_1
    return-void

    .line 210
    :cond_2
    invoke-direct {p0, v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->i:Lcom/alipay/android/phone/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->b(Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 218
    iput-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->m:Z

    .line 219
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->h:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->h:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a()V

    .line 222
    :cond_0
    invoke-direct {p0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(I)V

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(Z)V

    .line 224
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->m:Z

    .line 228
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->k:Ljava/lang/String;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/a;->onAttach(Landroid/app/Activity;)V

    .line 127
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/a;->onDetach()V

    .line 166
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "MoreDataFragment onDetach"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->b()V

    .line 169
    return-void
.end method
