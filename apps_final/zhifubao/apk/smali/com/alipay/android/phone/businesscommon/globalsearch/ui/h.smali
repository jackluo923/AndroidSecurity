.class public Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;
.super Lcom/alipay/android/phone/businesscommon/globalsearch/ui/a;
.source "MainSearchFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "global_search_fragment"
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

.field protected f:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "main_page"
    .end annotation
.end field

.field protected g:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gift_view"
    .end annotation
.end field

.field protected h:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gift_bg"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "not_found_desc"
    .end annotation
.end field

.field protected j:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loading"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gift_name"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gift_icon"
    .end annotation
.end field

.field protected m:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "gift_button"
    .end annotation
.end field

.field private n:Landroid/animation/LayoutTransition;

.field private o:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field private p:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private final s:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

.field private t:Lcom/alipay/android/phone/globalsearch/b/a;

.field private u:Landroid/widget/AbsListView$OnScrollListener;

.field private v:Landroid/view/View$OnClickListener;

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/a;-><init>()V

    .line 92
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->s:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

    .line 109
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/j;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->t:Lcom/alipay/android/phone/globalsearch/b/a;

    .line 131
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->u:Landroid/widget/AbsListView$OnScrollListener;

    .line 155
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/l;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/l;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->v:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->r:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 308
    packed-switch p1, :pswitch_data_0

    .line 317
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :goto_0
    return-void

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 323
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 329
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;I)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->q:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 192
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    .line 193
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->n:Landroid/animation/LayoutTransition;

    .line 194
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->n:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 195
    const-string/jumbo v0, "rotationX"

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v5, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->n:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v3}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->n:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v3, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/m;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/m;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string/jumbo v0, "rotationX"

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-static {v5, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->n:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->n:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v4, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "afterView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->u:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 205
    return-void

    .line 195
    :array_0
    .array-data 4
        0x42b40000    # 90.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->r:Ljava/lang/String;

    .line 171
    return-void
.end method

.method protected a(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/a;->a(Ljava/util/List;)V

    .line 210
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "notify ui"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->b(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V

    .line 212
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->setResultListener(Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;)V

    .line 247
    :cond_0
    return-void
.end method

.method protected b(Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    .line 219
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->q:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->a(I)V

    .line 224
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/h;->a:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->r:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->d()V

    .line 238
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_3
    invoke-direct {p0, v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->a(I)V

    .line 231
    if-eqz p2, :cond_6

    .line 232
    iget-object v1, p2, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p2, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p2, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->o:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->o:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->p:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    invoke-virtual {v2, v1, v3, v4}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 233
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->c()V

    goto :goto_1

    .line 232
    :cond_5
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_2

    .line 235
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->d()V

    goto :goto_1
.end method

.method protected c()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/a;->onAttach(Landroid/app/Activity;)V

    .line 176
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->s:Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->setResultListener(Lcom/alipay/android/phone/globalsearch/api/SearchResultListener;)V

    .line 177
    instance-of v0, p1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 178
    check-cast v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->t:Lcom/alipay/android/phone/globalsearch/b/a;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/globalsearch/b/a;)V

    .line 180
    :cond_0
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:I

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->o:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 181
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->w:I

    .line 182
    const-string/jumbo v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "roundHeight is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->o:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->w:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setHeight(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->w:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->setWidth(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 185
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    invoke-direct {v0}, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->p:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->p:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->w:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->setRoundHeight(I)V

    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->p:Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->w:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/image/plugin/RoundImagePlugin;->setRoundWidth(I)V

    .line 188
    return-void
.end method
