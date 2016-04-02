.class public Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;
.super Lcom/alipay/android/app/template/service/DynamicTemplateService;
.source "DynamicTemplateServiceImpl.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation


# static fields
.field public static final M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

.field static final a:I

.field private static b:Lcom/alipay/android/app/template/TemplateUiParser;

.field private static final c:I

.field private static k:I

.field public static mainHandler:Landroid/os/Handler;


# instance fields
.field private final d:Lcom/alipay/android/app/template/TemplateManager;

.field private final e:Ljava/util/concurrent/ConcurrentMap;

.field private final f:Ljava/util/concurrent/ConcurrentMap;

.field private final g:Ljava/util/concurrent/ConcurrentMap;

.field private h:Z

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Lcom/alipay/android/app/template/TemplateUiParser;

    invoke-direct {v0}, Lcom/alipay/android/app/template/TemplateUiParser;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->b:Lcom/alipay/android/app/template/TemplateUiParser;

    .line 84
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 86
    sput v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->c:I

    div-int/lit8 v0, v0, 0x28

    sput v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a:I

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->mainHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$1;

    .line 93
    sget v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a:I

    .line 92
    invoke-direct {v0, v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$1;-><init>(I)V

    sput-object v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    .line 167
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->k:I

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 77
    invoke-direct {p0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;-><init>()V

    .line 157
    invoke-static {}, Lcom/alipay/android/app/template/TemplateManager;->getInstance()Lcom/alipay/android/app/template/TemplateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    .line 158
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 159
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 160
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:Z

    .line 164
    iput v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    .line 165
    iput v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->j:I

    .line 77
    return-void
.end method

.method private a(Lcom/alipay/android/app/json/JSONObject;Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/view/View;Lcom/alipay/android/app/template/OnTemplateClickListener;Z)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 603
    .line 604
    if-eqz p4, :cond_3

    .line 606
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    invoke-virtual {p4, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 607
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 608
    if-eqz p2, :cond_0

    .line 609
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateWindow;->hasOnreloadFunc()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v1

    .line 611
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    .line 610
    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->callOnreload(Ljava/lang/String;)Z

    .line 621
    :goto_0
    invoke-virtual {v0, p5}, Lcom/alipay/android/app/template/view/widget/TElement;->setOnTemplateClickListener(Lcom/alipay/android/app/template/OnTemplateClickListener;)V

    .line 680
    :goto_1
    return-object p4

    .line 613
    :cond_0
    if-eqz p2, :cond_1

    .line 614
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, p2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    .line 617
    :cond_1
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->setVarJson(Lcom/alipay/android/app/json/JSONObject;)V

    .line 618
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->clearVarMap()V

    .line 619
    invoke-virtual {v0, p3}, Lcom/alipay/android/app/template/view/widget/TElement;->resetElements(Landroid/app/Activity;)V

    goto :goto_0

    .line 623
    :cond_2
    const-string/jumbo v0, "DynamicTemplateService.generateViewInternal"

    .line 624
    const-string/jumbo v2, "bodyElement is null or window in bodyElement is null"

    .line 623
    invoke-static {v0, v2, v1, v1}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 628
    :cond_3
    invoke-static {p3}, Lcom/alipay/android/app/template/util/UiUtil;->init(Landroid/app/Activity;)V

    .line 629
    new-instance v0, Lcom/alipay/android/app/template/TemplateUiParser;

    invoke-direct {v0}, Lcom/alipay/android/app/template/TemplateUiParser;-><init>()V

    .line 630
    const-string/jumbo v2, ""

    invoke-virtual {v0, p1, p5, p3, v2}, Lcom/alipay/android/app/template/TemplateUiParser;->parse(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/template/OnTemplateClickListener;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v2

    .line 631
    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alipay/android/app/template/TemplateWindow;->inflateView(Landroid/app/Activity;)V

    .line 632
    if-eqz p2, :cond_4

    .line 633
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, p2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    .line 636
    :cond_4
    invoke-virtual {v2, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->setVarJson(Lcom/alipay/android/app/json/JSONObject;)V

    .line 637
    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TElement;->clearVarMap()V

    .line 639
    :try_start_0
    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TElement;->onLoad()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_2
    if-eqz v1, :cond_5

    if-eqz p6, :cond_5

    .line 646
    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->hasOnreloadFunc()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 647
    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TemplateWindow;->callOnreload(Ljava/lang/String;)Z

    .line 649
    :cond_5
    invoke-virtual {v2, p3}, Lcom/alipay/android/app/template/view/widget/TElement;->fillElementView(Landroid/app/Activity;)V

    .line 650
    invoke-virtual {v2, p5}, Lcom/alipay/android/app/template/view/widget/TElement;->setOnTemplateClickListener(Lcom/alipay/android/app/template/OnTemplateClickListener;)V

    .line 651
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 653
    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TElement;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 654
    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    .line 655
    invoke-virtual {v0, p3}, Lcom/alipay/android/app/template/view/widget/TElement;->fillElementView(Landroid/app/Activity;)V

    .line 656
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 657
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 658
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 660
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 661
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 663
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v1, v0

    .line 669
    :goto_3
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->j:I

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TElement;->isFullscreen()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 670
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 672
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 673
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 674
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 678
    :goto_4
    iget-object v4, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object p4, v1

    .line 680
    goto/16 :goto_1

    .line 667
    :cond_6
    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 676
    :cond_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 550
    invoke-static {p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/HtmlGumboParser;->getInstance()Lcom/alipay/android/app/template/HtmlGumboParser;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/app/template/HtmlGumboParser;->parseHtmlToJson(Ljava/lang/String;Lcom/alipay/android/app/template/HtmlGumboParser$Options;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 780
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 987
    :goto_0
    return-object v0

    .line 784
    :cond_1
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    if-gez v0, :cond_2

    .line 785
    const-string/jumbo v0, "tag_view_holder"

    const-string/jumbo v1, "id"

    .line 786
    const-string/jumbo v2, "com.alipay.android.app.template"

    .line 785
    invoke-static {p2, v0, v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    .line 789
    :cond_2
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->j:I

    if-gez v0, :cond_3

    .line 790
    const-string/jumbo v0, "tag_view_nav"

    const-string/jumbo v1, "id"

    .line 791
    const-string/jumbo v2, "com.alipay.android.app.template"

    .line 790
    invoke-static {p2, v0, v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->j:I

    .line 794
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 795
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 796
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 963
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 964
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    .line 965
    invoke-virtual {v0, v6}, Lcom/alipay/android/app/template/TemplateManager;->downloadTemplate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 970
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 969
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_5
    move-object v0, v2

    .line 987
    goto :goto_0

    .line 796
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 797
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 800
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 801
    const-string/jumbo v4, "DynamicTemplateService.handleBirdResponseInternal"

    .line 802
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "the tplId is null for "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 801
    invoke-static {v4, v0, v3, v3}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 805
    :cond_7
    const-string/jumbo v4, "/sdcard"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 806
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 807
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 806
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x0

    .line 805
    :goto_3
    if-eqz v4, :cond_c

    .line 809
    const-string/jumbo v1, "DynamicTemplateService.handleBirdResponseInternal"

    .line 810
    const-string/jumbo v4, "use template in html file from sdcard"

    .line 809
    invoke-static {v1, v4, v3, v3}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 813
    invoke-static {v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 818
    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 819
    const-string/jumbo v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 820
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 823
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 824
    invoke-static {v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v0

    .line 825
    const-string/jumbo v5, ""

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->b:Lcom/alibaba/fastjson/JSONObject;

    .line 826
    sget-object v5, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5, v4, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    new-instance v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-direct {v5}, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;-><init>()V

    .line 828
    iput-object v4, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 829
    iput-object v3, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->html:Ljava/lang/String;

    .line 830
    iput-object v1, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 831
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "JSON"

    :goto_4
    iput-object v0, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->format:Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;

    .line 833
    const-string/jumbo v0, ""

    iput-object v0, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->dataObserver:Ljava/lang/String;

    .line 834
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v0

    .line 839
    if-eqz v0, :cond_a

    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->ADD:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    :goto_5
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 806
    :cond_8
    const/4 v4, 0x1

    goto :goto_3

    .line 831
    :cond_9
    const-string/jumbo v0, "HTML"

    goto :goto_4

    .line 840
    :cond_a
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    goto :goto_5

    .line 845
    :cond_b
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 848
    :cond_c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 849
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 850
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 851
    const-string/jumbo v4, "DynamicTemplateService.handleBirdResponseInternal"

    .line 852
    const-string/jumbo v5, "the birdResponse is null, create birdParam for birdResponse"

    .line 851
    invoke-static {v4, v5, v3, v3}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 858
    :cond_d
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    .line 860
    invoke-static {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v1

    .line 870
    :goto_6
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    .line 871
    if-nez v1, :cond_10

    .line 873
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    .line 874
    iget-object v4, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 873
    invoke-virtual {v1, v4, p2}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v1

    .line 875
    if-eqz v1, :cond_e

    .line 876
    sget-object v4, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    :cond_e
    :goto_7
    if-nez v1, :cond_14

    .line 884
    const-string/jumbo v1, "DynamicTemplateService.handleBirdResponseInternal"

    .line 885
    const-string/jumbo v4, "local tpl is null"

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 884
    invoke-static {v1, v4, v8, v9}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 889
    iget-object v1, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 890
    iget-object v1, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 891
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 890
    iput-object v1, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 892
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    .line 893
    invoke-virtual {v1, v5}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v1

    .line 894
    const-string/jumbo v4, "DynamicTemplateService.handleBirdResponseInternal"

    .line 895
    const-string/jumbo v8, "save template from server contains data"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 894
    invoke-static {v4, v8, v9, v10}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 896
    if-eqz v1, :cond_f

    .line 897
    sget-object v4, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v5}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    :cond_f
    if-eqz v1, :cond_11

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->ADD:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    :goto_8
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 953
    :catch_0
    move-exception v1

    .line 955
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "StackTrace"

    invoke-interface {v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 956
    const-string/jumbo v4, "DynamicTemplateService.handleBirdResponseInternal"

    .line 957
    const-string/jumbo v5, "exception on handleBirdResponse"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 956
    invoke-static {v4, v5, v1, v3}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 958
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 862
    :catch_1
    move-exception v1

    .line 864
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "StackTrace"

    invoke-interface {v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 865
    const-string/jumbo v4, "DynamicTemplateService.handleBirdResponseInternal"

    .line 866
    const-string/jumbo v5, "exception on parse birdResponse"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    .line 865
    invoke-static {v4, v5, v1, v8}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 868
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    .line 867
    invoke-static {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-object v5, v1

    goto/16 :goto_6

    .line 879
    :cond_10
    new-instance v4, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-direct {v4}, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;-><init>()V

    .line 880
    iget-object v8, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->d:Ljava/lang/String;

    iput-object v8, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    .line 881
    iget-object v1, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->e:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    move-object v1, v4

    goto/16 :goto_7

    .line 903
    :cond_11
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    goto :goto_8

    .line 905
    :cond_12
    const-string/jumbo v1, "DynamicTemplateService.handleBirdResponseInternal"

    .line 906
    const-string/jumbo v4, "add template from server without data to download list"

    const/4 v8, 0x0

    .line 905
    invoke-static {v1, v4, v0, v8}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 907
    iget-object v1, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 908
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 912
    :goto_9
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->ADD:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 910
    :cond_13
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 919
    :cond_14
    iget-object v4, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 920
    iget-object v1, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 921
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 920
    iput-object v1, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 922
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    .line 923
    invoke-virtual {v1, v5}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v1

    .line 924
    const-string/jumbo v4, "DynamicTemplateService.handleBirdResponseInternal"

    .line 925
    const-string/jumbo v8, "save template from server contains data to update"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 924
    invoke-static {v4, v8, v9, v10}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 926
    if-eqz v1, :cond_15

    .line 927
    sget-object v4, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v5}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    :cond_15
    if-eqz v1, :cond_16

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->UPDATE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    :goto_a
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 933
    :cond_16
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    goto :goto_a

    .line 934
    :cond_17
    iget-object v4, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v4, v5, v1}, Lcom/alipay/android/app/template/TemplateManager;->whetherTemplateNeedUpdate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 938
    const-string/jumbo v1, "DynamicTemplateService.handleBirdResponseInternal"

    .line 939
    const-string/jumbo v4, "update template from server without data to download list"

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 938
    invoke-static {v1, v4, v8, v9}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 940
    iget-object v1, v5, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 941
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 945
    :goto_b
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->UPDATE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 943
    :cond_18
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 948
    :cond_19
    const-string/jumbo v1, "DynamicTemplateService.handleBirdResponseInternal"

    .line 949
    const-string/jumbo v4, "template exist"

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 948
    invoke-static {v1, v4, v5, v8}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 950
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->EXIST:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 970
    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 971
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 972
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 973
    sget-object v4, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_1c

    .line 974
    :cond_1b
    sget-object v4, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 978
    :cond_1c
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 979
    iget-object v4, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v4, v0, p2}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v4

    .line 981
    if-eqz v4, :cond_4

    .line 982
    sget-object v5, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v4}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 501
    iget-boolean v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:Z

    if-nez v0, :cond_0

    .line 502
    iput-boolean v4, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->h:Z

    .line 503
    new-instance v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$2;-><init>(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;)V

    .line 540
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 541
    const/4 v2, 0x0

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onDestroy()"

    aput-object v3, v1, v2

    .line 542
    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onDestroy()"

    aput-object v2, v1, v4

    .line 544
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 547
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 473
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 497
    invoke-static {}, Lcom/alipay/android/app/template/TemplateImageLoader;->getInstance()Lcom/alipay/android/app/template/TemplateImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateImageLoader;->clearCache(I)V

    .line 498
    return-void

    .line 473
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 474
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 475
    if-eqz v1, :cond_0

    .line 476
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 477
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 478
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 485
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 486
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 488
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 490
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 492
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 493
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 488
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 489
    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TElement;->destroy()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;I)V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(I)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 568
    new-instance v2, Ljava/io/BufferedReader;

    .line 569
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 568
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 570
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 572
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-gtz v4, :cond_0

    .line 575
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 576
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 594
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 573
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v1, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 587
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 579
    :catch_1
    move-exception v0

    .line 580
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 588
    :catch_2
    move-exception v0

    .line 592
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public birdParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->birdParams(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public birdParams(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->getBirdNestEnv()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 731
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 733
    sget-object v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    .line 734
    if-eqz v1, :cond_0

    .line 736
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    :goto_0
    return-object v0

    .line 738
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->getCachedTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v1

    .line 739
    if-eqz v1, :cond_1

    .line 740
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 742
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 743
    const-string/jumbo v2, "tplId"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string/jumbo v2, "tplVersion"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string/jumbo v0, "platform"

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateManager;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 747
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 748
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 753
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 754
    const-string/jumbo v2, "tplVersion"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    const-string/jumbo v0, "platform"

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateManager;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 757
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 758
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public callOnreload(Ljava/lang/String;Landroid/view/View;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .locals 2

    .prologue
    .line 685
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 686
    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->hasOnreloadFunc()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateWindow;->callOnreload(Ljava/lang/String;)Z

    move-result v0

    .line 689
    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 692
    :goto_0
    return-object v0

    .line 689
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_CALL_JS_METHOD_FAILED:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto :goto_0

    .line 692
    :cond_1
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_CALL_JS_METHOD_FAILED:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 469
    return-void
.end method

.method public destoryView(Ljava/lang/String;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1158
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1159
    if-eqz v0, :cond_1

    .line 1160
    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 1161
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1162
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1163
    iget-object v2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1164
    if-eqz v1, :cond_0

    .line 1165
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1167
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->destroy()V

    .line 1168
    :cond_1
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    invoke-virtual {p2, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1172
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->j:I

    invoke-virtual {p2, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1173
    return-void
.end method

.method public executeScript(Ljava/lang/String;Landroid/view/View;)Lcom/alipay/android/app/template/TNativeResult;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1034
    if-nez p2, :cond_0

    move-object v0, v1

    .line 1039
    :goto_0
    return-object v0

    .line 1035
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1036
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/alipay/android/app/template/view/widget/TElement;

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 1037
    goto :goto_0

    .line 1039
    :cond_2
    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/template/ScriptPropertyType;->jsScript:Lcom/alipay/android/app/template/ScriptPropertyType;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->executeScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;Z)Lcom/alipay/android/app/template/TNativeResult;

    move-result-object v0

    goto :goto_0
.end method

.method public generateListAdapter(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplListAdapter;
    .locals 1

    .prologue
    .line 254
    if-nez p1, :cond_0

    .line 255
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/template/service/TplListAdapter;->from(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public generateRecycleAdapter(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplRecyclerAdapter;
    .locals 1

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 266
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->from(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplRecyclerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;
    .locals 8

    .prologue
    .line 393
    .line 394
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 393
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "view generated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    return-object v0
.end method

.method public generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;
    .locals 10

    .prologue
    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 317
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "dtm-generateViewTime"

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "generateViewInternal start  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a()V

    .line 321
    const/4 v5, 0x0

    .line 322
    if-eqz p3, :cond_0

    .line 323
    new-instance v5, Lcom/alipay/android/app/template/DtmElementClickListener;

    invoke-direct {v5, p3, p2, p4}, Lcom/alipay/android/app/template/DtmElementClickListener;-><init>(Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 327
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    .line 328
    if-nez v0, :cond_6

    .line 329
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, p1, p5}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    invoke-static {v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v0

    .line 332
    sget-object v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 339
    :goto_0
    iget-object v0, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->b:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v0}, Lcom/alipay/android/app/template/markup/MarkFactory;->bindObserver(Lcom/alibaba/fastjson/JSONObject;)V

    .line 340
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 347
    :goto_1
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    const/4 v7, 0x0

    .line 349
    if-eqz p7, :cond_3

    iget-object v0, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->f:Ljava/lang/String;

    const-string/jumbo v2, "HTML"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    const-string/jumbo v0, "DynamicTemplateService.generateView"

    .line 354
    const-string/jumbo v1, "needReuse not support for template in Html format"

    const/4 v2, 0x0

    .line 353
    invoke-static {v0, v1, p1, v2}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 355
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "needReuse not support for template in Html format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1
    const-string/jumbo v0, "DynamicTemplateService.generateView"

    .line 335
    const-string/jumbo v1, "template is not exist"

    const/4 v2, 0x0

    .line 334
    invoke-static {v0, v1, p1, v2}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 336
    const/4 v0, 0x0

    .line 386
    :goto_2
    return-object v0

    .line 344
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 345
    iget-object v2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 358
    :cond_3
    iget-object v0, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->f:Ljava/lang/String;

    const-string/jumbo v2, "JSON"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    iget-object v1, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->a:Lcom/alipay/android/app/json/JSONObject;

    :goto_3
    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move-object/from16 v4, p6

    move/from16 v6, p7

    .line 374
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/view/View;Lcom/alipay/android/app/template/OnTemplateClickListener;Z)Landroid/view/View;
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 381
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "dtm-generateViewTime"

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "generateViewInternal end  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 360
    :cond_4
    iget-object v0, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->f:Ljava/lang/String;

    const-string/jumbo v2, "HTML"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 362
    invoke-static {}, Lcom/alipay/android/app/template/markup/MarkFactory;->getInstance()Lcom/alipay/android/app/template/markup/MarkFull;

    move-result-object v0

    iget-object v1, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/alipay/android/app/template/markup/MarkFull;->up(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {}, Lcom/alipay/android/app/template/HtmlGumboParser;->getInstance()Lcom/alipay/android/app/template/HtmlGumboParser;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/alipay/android/app/template/HtmlGumboParser;->parseHtmlToJson(Ljava/lang/String;Lcom/alipay/android/app/template/HtmlGumboParser$Options;)Lorg/json/JSONObject;

    move-result-object v0

    .line 364
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "markup consumes "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 367
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "template is in wrong syntax: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    const-string/jumbo v1, "DynamicTemplateService.generateView"

    .line 369
    const/4 v2, 0x0

    .line 368
    invoke-static {v1, v0, p1, v2}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 370
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :catch_0
    move-exception v0

    .line 378
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    const-string/jumbo v1, "DynamicTemplateService.generateView"

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v7

    goto/16 :goto_4

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public generateView(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;
    .locals 10

    .prologue
    .line 403
    const-string/jumbo v0, "DynamicTemplateService.generateView"

    const-string/jumbo v1, "use tpl in json mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 405
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "dtm-generateViewTime"

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "generateViewInternal start  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a()V

    .line 408
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 427
    :goto_0
    return-object v0

    .line 411
    :cond_0
    const/4 v5, 0x0

    .line 412
    if-eqz p4, :cond_1

    .line 413
    new-instance v5, Lcom/alipay/android/app/template/DtmElementClickListener;

    invoke-direct {v5, p4, p3, p5}, Lcom/alipay/android/app/template/DtmElementClickListener;-><init>(Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 416
    :cond_1
    const/4 v7, 0x0

    .line 418
    :try_start_0
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, p2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 419
    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    .line 418
    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/view/View;Lcom/alipay/android/app/template/OnTemplateClickListener;Z)Landroid/view/View;
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 424
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "dtm-generateViewTime"

    .line 425
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "generateViewInternal end  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handle bird generate() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 422
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_1
.end method

.method public generateViewForUnreusePage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1153
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->generateViewForUnreusePageWithKeyboard(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Lcom/alipay/android/app/template/TemplateKeyboardService;Lcom/alipay/android/app/template/TemplatePasswordService;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public generateViewForUnreusePageWithKeyboard(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Lcom/alipay/android/app/template/TemplateKeyboardService;Lcom/alipay/android/app/template/TemplatePasswordService;)Landroid/view/View;
    .locals 7

    .prologue
    .line 1188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1189
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1190
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 1191
    if-eqz v0, :cond_2

    .line 1192
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/alipay/android/app/template/TemplateWindow;->setTemplateKeyboardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)V

    .line 1193
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v1

    invoke-virtual {v1, p7}, Lcom/alipay/android/app/template/TemplateWindow;->setTemplatePasswordService(Lcom/alipay/android/app/template/TemplatePasswordService;)V

    .line 1194
    invoke-virtual {v0, p4}, Lcom/alipay/android/app/template/view/widget/TElement;->fillElementView(Landroid/app/Activity;)V

    .line 1195
    const-string/jumbo v1, "DynamicTemplateService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handle bird generateForUnreusePage  fill element view "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " msms"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1195
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1199
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1200
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v1

    .line 1201
    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v1

    .line 1202
    invoke-virtual {v1, p4}, Lcom/alipay/android/app/template/view/widget/TElement;->fillElementView(Landroid/app/Activity;)V

    .line 1203
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1204
    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1205
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1207
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1208
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1209
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1210
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v2, v1

    .line 1217
    :goto_0
    iget v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->j:I

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->isFullscreen()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 1218
    iget v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 1220
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 1221
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1222
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1226
    :goto_1
    iget-object v6, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1228
    const-string/jumbo v0, "DynamicTemplateService"

    .line 1229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handle bird generateForUnreusePage coast total"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " msms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1228
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :goto_2
    return-object v2

    .line 1214
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1215
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v1

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    invoke-static {v2, v1}, Lcom/alipay/android/app/template/util/UiUtil;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 1224
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    .line 1235
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public getBirdNestEnv()Ljava/util/Map;
    .locals 3

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a()V

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 462
    const-string/jumbo v1, "version"

    const-string/jumbo v2, "5.0.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    return-object v0
.end method

.method public getCachedTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateById(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateFromStorage(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    return-object v0
.end method

.method public handleBirdResponse(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 767
    if-eqz p2, :cond_0

    instance-of v1, p2, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 768
    :cond_0
    const-string/jumbo v1, "DynamicTemplateService.handleBirdResponse"

    .line 770
    const-string/jumbo v2, "input map is null or empty"

    .line 769
    invoke-static {v1, v2, v0, v0}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 776
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    .line 773
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->init(Landroid/app/Activity;)V

    .line 774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 775
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public handleBirdResponseAsync(Ljava/util/Map;Landroid/content/Context;Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;)V
    .locals 3

    .prologue
    .line 993
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 994
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "response is empty(value:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 995
    if-nez p1, :cond_1

    const-string/jumbo v0, "Null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 994
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 996
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 995
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 998
    :cond_2
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    if-gez v0, :cond_3

    .line 999
    const-string/jumbo v0, "tag_view_holder"

    const-string/jumbo v1, "id"

    .line 1000
    const-string/jumbo v2, "com.alipay.android.app.template"

    .line 999
    invoke-static {p2, v0, v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    .line 1003
    :cond_3
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->j:I

    if-gez v0, :cond_4

    .line 1004
    const-string/jumbo v0, "tag_view_nav"

    const-string/jumbo v1, "id"

    .line 1005
    const-string/jumbo v2, "com.alipay.android.app.template"

    .line 1004
    invoke-static {p2, v0, v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->j:I

    .line 1007
    :cond_4
    new-instance v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;-><init>(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;Ljava/util/Map;Landroid/content/Context;Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 1019
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1020
    return-void
.end method

.method public handleBirdResponseForUnreusePage(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;Ljava/lang/String;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1065
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1067
    invoke-static {}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->initial()V

    .line 1068
    invoke-static {p4}, Lcom/alipay/android/app/template/util/UiUtil;->init(Landroid/app/Activity;)V

    .line 1069
    const-string/jumbo v2, "DynamicTemplateService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Handle bird template UiUtil init "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1070
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "msms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1072
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1073
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    invoke-direct {p0, v0, p4}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    .line 1076
    invoke-static {p1}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->getCachedTemplatePage(Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v4

    .line 1077
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 1079
    if-eqz v5, :cond_1

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1080
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 1081
    const-string/jumbo v5, "DynamicTemplateService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Handle bird template checkOrDownload status "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1082
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v1, v7, v1

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "msms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    invoke-static {v5, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v0, v1, :cond_1

    .line 1085
    if-eqz p3, :cond_5

    .line 1086
    new-instance v1, Lcom/alipay/android/app/template/DtmElementClickListener;

    .line 1087
    invoke-static {p5}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string/jumbo v5, ""

    .line 1086
    invoke-direct {v1, p3, v2, v5}, Lcom/alipay/android/app/template/DtmElementClickListener;-><init>(Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    move-object v2, v1

    .line 1089
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1090
    sget-object v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    .line 1093
    invoke-static {p5}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 1094
    if-eqz v8, :cond_4

    .line 1095
    new-instance v5, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v5, v8}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    .line 1098
    :goto_1
    if-eqz v4, :cond_2

    .line 1099
    sget-object v8, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->UPDATE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v0, v8, :cond_2

    move-object v3, v4

    .line 1109
    :cond_0
    :goto_2
    invoke-static {p1, p4}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->doCacheTemplatePageBackground(Ljava/lang/String;Landroid/content/Context;)V

    .line 1110
    const-string/jumbo v1, "DynamicTemplateService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Handle bird template parseTime "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "msms"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1110
    invoke-static {v1, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1114
    invoke-virtual {v3}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v4

    .line 1115
    invoke-virtual {v4, p1}, Lcom/alipay/android/app/template/TemplateWindow;->setTemplateId(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v4, p4}, Lcom/alipay/android/app/template/TemplateWindow;->setContext(Landroid/app/Activity;)V

    .line 1117
    invoke-virtual {v4, p4}, Lcom/alipay/android/app/template/TemplateWindow;->inflateView(Landroid/app/Activity;)V

    .line 1118
    monitor-enter v4

    .line 1120
    :goto_3
    :try_start_0
    invoke-virtual {v4}, Lcom/alipay/android/app/template/TemplateWindow;->isInflateSuccess()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 1118
    :goto_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    invoke-virtual {v3, v2}, Lcom/alipay/android/app/template/view/widget/TElement;->setOnTemplateClickListener(Lcom/alipay/android/app/template/OnTemplateClickListener;)V

    .line 1132
    invoke-virtual {v3, v5}, Lcom/alipay/android/app/template/view/widget/TElement;->setVarJson(Lcom/alipay/android/app/json/JSONObject;)V

    .line 1133
    invoke-virtual {v3}, Lcom/alipay/android/app/template/view/widget/TElement;->clearVarMap()V

    .line 1134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1135
    invoke-virtual {v3}, Lcom/alipay/android/app/template/view/widget/TElement;->onLoad()V

    .line 1139
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    :cond_1
    return-object v0

    .line 1102
    :cond_2
    iget-object v4, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->f:Ljava/lang/String;

    const-string/jumbo v8, "HTML"

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1103
    sget-object v3, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->b:Lcom/alipay/android/app/template/TemplateUiParser;

    iget-object v1, v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->a:Lcom/alipay/android/app/json/JSONObject;

    .line 1106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1105
    invoke-virtual {v3, v1, v2, p4, v4}, Lcom/alipay/android/app/template/TemplateUiParser;->parse(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/template/OnTemplateClickListener;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v3

    goto :goto_2

    .line 1121
    :cond_3
    :try_start_2
    const-string/jumbo v1, "DynamicTemplateService"

    const-string/jumbo v6, " inflate view window  wait "

    invoke-static {v1, v6}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1124
    :catch_0
    move-exception v1

    .line 1126
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "StackTrace"

    invoke-interface {v6, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1118
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_4
    move-object v5, v3

    goto/16 :goto_1

    :cond_5
    move-object v2, v3

    goto/16 :goto_0
.end method

.method public launchPage(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .locals 3

    .prologue
    .line 281
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 283
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 284
    const-string/jumbo v0, "templateId"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string/jumbo v0, "operationType"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v0, "operationParams"

    invoke-virtual {v1, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v0, "template_time"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v0, "pageData"

    .line 289
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p4, "{}"

    .line 288
    :cond_0
    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v0, "cacheStrategy"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_1

    .line 292
    invoke-static {}, Lcom/alipay/android/app/template/action/TplController;->getInstance()Lcom/alipay/android/app/template/action/TplController;

    move-result-object v2

    move-object v0, p1

    .line 293
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 292
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/action/TplController;->setDynamicApp(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    .line 294
    invoke-static {}, Lcom/alipay/android/app/template/action/TplController;->getInstance()Lcom/alipay/android/app/template/action/TplController;

    move-result-object v0

    invoke-virtual {v0, v1, p7, p1}, Lcom/alipay/android/app/template/action/TplController;->loadTemplate(Landroid/os/Bundle;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V

    .line 295
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 307
    :goto_0
    return-object v0

    .line 296
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_2

    .line 297
    invoke-static {}, Lcom/alipay/android/app/template/action/TplController;->getInstance()Lcom/alipay/android/app/template/action/TplController;

    move-result-object v2

    move-object v0, p1

    .line 298
    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 297
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/action/TplController;->setDynamicApp(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    .line 299
    invoke-static {}, Lcom/alipay/android/app/template/action/TplController;->getInstance()Lcom/alipay/android/app/template/action/TplController;

    move-result-object v0

    invoke-virtual {v0, v1, p7, p1}, Lcom/alipay/android/app/template/action/TplController;->loadTemplate(Landroid/os/Bundle;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V

    .line 300
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto :goto_0

    .line 302
    :cond_2
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_INVALID_ARGUMENTS:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto :goto_0
.end method

.method public lockLayout(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1044
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1045
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/android/app/template/view/widget/TElement;

    if-nez v1, :cond_1

    .line 1046
    :cond_0
    const/4 v0, 0x0

    .line 1049
    :goto_0
    return v0

    .line 1048
    :cond_1
    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->lockLayout()V

    .line 1049
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBackPressed(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 1024
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 1025
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1026
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/alipay/android/app/template/TemplateWindow;->hiddenKeyboardService(Landroid/view/View;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    const/4 v0, 0x1

    .line 1029
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/android/app/template/view/widget/TElement;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public onPayFinish(I)V
    .locals 1

    .prologue
    .line 1177
    invoke-static {}, Lcom/alipay/android/app/template/TemplateImageLoader;->getInstance()Lcom/alipay/android/app/template/TemplateImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateImageLoader;->clearCache(I)V

    .line 1178
    if-lez p1, :cond_0

    .line 1179
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(I)V

    .line 1181
    :cond_0
    return-void
.end method

.method public onQuikpayActivityCreate(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1239
    return-void
.end method

.method public preLoadTemplate(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p0, v0, p3}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->preLoadTemplate(Ljava/util/Map;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    move-result-object v0

    return-object v0
.end method

.method public preLoadTemplate(Ljava/util/Map;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 180
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    if-gez v0, :cond_0

    .line 181
    const-string/jumbo v0, "tag_view_holder"

    const-string/jumbo v1, "id"

    .line 182
    const-string/jumbo v4, "com.alipay.android.app.template"

    .line 181
    invoke-static {p2, v0, v1, v4}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    .line 185
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->j:I

    if-gez v0, :cond_1

    .line 186
    const-string/jumbo v0, "tag_view_nav"

    const-string/jumbo v1, "id"

    .line 187
    const-string/jumbo v4, "com.alipay.android.app.template"

    .line 186
    invoke-static {p2, v0, v1, v4}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->j:I

    .line 189
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 190
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 232
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    .line 233
    invoke-virtual {v0, v4}, Lcom/alipay/android/app/template/TemplateManager;->downloadTemplate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_a

    .line 235
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v0, v4, :cond_a

    move v0, v2

    .line 236
    :goto_1
    if-eqz v0, :cond_3

    .line 238
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 241
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_b

    .line 244
    :cond_3
    if-eqz v0, :cond_d

    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 245
    :goto_3
    const-string/jumbo v1, "DynamicTemplateService.preLoadTemplate"

    .line 246
    const-string/jumbo v2, "download result"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-static {v1, v2, v3, v8}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    :goto_4
    return-object v0

    .line 190
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 193
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_INVALID_ARGUMENTS:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto :goto_4

    .line 195
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v1

    .line 196
    if-eqz v1, :cond_6

    const-string/jumbo v1, "/sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 197
    invoke-static {v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 199
    sget-object v6, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-direct {v6}, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;-><init>()V

    .line 201
    iput-object v0, v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 202
    iput-object v1, v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 203
    const-string/jumbo v1, ""

    iput-object v1, v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;

    .line 204
    const-string/jumbo v1, "JSON"

    iput-object v1, v6, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->format:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v1, v6}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    .line 211
    :cond_6
    sget-object v1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_8

    iget-object v6, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 215
    sget-object v6, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    const-string/jumbo v6, ""

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "StackTrace"

    invoke-interface {v6, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    const-string/jumbo v1, "DynamicTemplateService.preLoadTemplate"

    .line 227
    const-string/jumbo v6, "exception while getLocalTemplate"

    .line 226
    invoke-static {v1, v6, v0, v8}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 207
    :cond_7
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_INVALID_ARGUMENTS:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto/16 :goto_4

    .line 216
    :cond_8
    if-eqz v1, :cond_9

    .line 217
    :try_start_1
    iget-object v6, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    .line 218
    invoke-virtual {v6, v1}, Lcom/alipay/android/app/template/TemplateManager;->createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 220
    :cond_9
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->birdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_a
    move v0, v3

    .line 235
    goto/16 :goto_1

    .line 238
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v0, v4, :cond_c

    move v0, v2

    .line 240
    :goto_5
    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_c
    move v0, v3

    .line 239
    goto :goto_5

    .line 244
    :cond_d
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_NETWORK_NOT_AVAILABLE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto/16 :goto_3

    .line 249
    :cond_e
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto/16 :goto_4
.end method

.method public resetViewData(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 435
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    const-string/jumbo v0, "tag_view_holder"

    .line 439
    const-string/jumbo v1, "id"

    const-string/jumbo v2, "com.alipay.android.app.template"

    .line 438
    invoke-static {p2, v0, v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 441
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    .line 442
    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 443
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->setVarJson(Lcom/alipay/android/app/json/JSONObject;)V

    .line 445
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->clearVarMap()V

    .line 446
    invoke-virtual {v0, p2}, Lcom/alipay/android/app/template/view/widget/TElement;->fillElementView(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public saveTemplates(Ljava/util/List;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .locals 1

    .prologue
    .line 697
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->ERR_INVALID_ARGUMENTS:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    .line 701
    :goto_0
    return-object v0

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->d:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplates(Ljava/util/List;)Ljava/util/Map;

    .line 701
    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    goto :goto_0
.end method

.method public unlockLayout(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1054
    iget v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->i:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1055
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/android/app/template/view/widget/TElement;

    if-nez v1, :cond_1

    .line 1056
    :cond_0
    const/4 v0, 0x0

    .line 1059
    :goto_0
    return v0

    .line 1058
    :cond_1
    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->unlockLayout()V

    .line 1059
    const/4 v0, 0x1

    goto :goto_0
.end method
