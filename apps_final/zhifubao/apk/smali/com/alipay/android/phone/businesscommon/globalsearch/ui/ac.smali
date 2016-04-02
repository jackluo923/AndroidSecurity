.class public final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;
.super Landroid/widget/BaseAdapter;
.source "SearchResultAdapter.java"


# static fields
.field private static h:J


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/widget/AdapterView$OnItemClickListener;

.field private c:Landroid/app/Activity;

.field private d:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private i:Lcom/alipay/android/phone/globalsearch/c/m;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->e:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a:Ljava/util/List;

    .line 129
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 47
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->c:Landroid/app/Activity;

    .line 48
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 49
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 50
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->g:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 53
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 52
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->d:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 54
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->e:Ljava/util/Map;

    .line 55
    new-instance v0, Lcom/alipay/android/phone/globalsearch/c/m;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/globalsearch/c/m;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->i:Lcom/alipay/android/phone/globalsearch/c/m;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private a(I)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    goto :goto_0
.end method

.method static synthetic a(J)V
    .locals 0

    .prologue
    .line 42
    sput-wide p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->h:J

    return-void
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 42
    sget-wide v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->h:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->d:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a:Ljava/util/List;

    .line 66
    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->f:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->notifyDataSetChanged()V

    .line 68
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a(I)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 90
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a(I)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v1

    .line 101
    if-nez v1, :cond_0

    .line 102
    const-string/jumbo v1, "jiushi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "item is null , position :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return v0

    .line 105
    :cond_0
    iget-object v2, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->e:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 107
    const-string/jumbo v1, "search"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "typeMap is null , position :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , templateId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->e:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 114
    :cond_2
    const-string/jumbo v3, "search"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "didn\'t fint this key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , position :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " , name = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    iget-object v1, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v3, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a(I)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    const-string/jumbo v1, "jiushiFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getView item is null , position :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->i:Lcom/alipay/android/phone/globalsearch/c/m;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2, p2, p3, v0}, Lcom/alipay/android/phone/globalsearch/c/m;->a(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a()I

    move-result v0

    return v0
.end method
