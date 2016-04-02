.class public Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "CommonSearchActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "common_search_activity"
.end annotation


# static fields
.field public static a:I

.field private static p:I


# instance fields
.field protected b:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "search_bar"
    .end annotation
.end field

.field c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

.field d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

.field public e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

.field private h:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private i:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private final l:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;

.field private m:Lcom/alipay/android/phone/globalsearch/b/a;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private final q:Landroid/widget/TextView$OnEditorActionListener;

.field private final r:Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;

.field private final s:Landroid/view/View$OnClickListener;

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, -0x1

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a:I

    .line 85
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->p:I

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 56
    const-string/jumbo v0, "CommonSearchActivity"

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->f:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->l:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;

    .line 89
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/b;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->q:Landroid/widget/TextView$OnEditorActionListener;

    .line 104
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/c;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->r:Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;

    .line 114
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/d;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->s:Landroid/view/View$OnClickListener;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->t:Ljava/util/List;

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->u:Z

    .line 404
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->e:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-object v1

    .line 202
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 203
    :goto_1
    if-eqz v0, :cond_0

    .line 206
    invoke-static {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    :goto_2
    if-eqz v0, :cond_0

    .line 220
    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_3

    .line 222
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 223
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_3
    move-object v1, v0

    .line 238
    goto :goto_0

    .line 202
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string/jumbo v3, "CommonSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Class not found : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v3, "CommonSearchActivity"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    .line 225
    :catch_1
    move-exception v0

    .line 226
    const-string/jumbo v3, "CommonSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "class cannot be initialed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string/jumbo v2, "CommonSearchActivity"

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3

    .line 228
    :catch_2
    move-exception v0

    .line 229
    const-string/jumbo v3, "CommonSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "class IllegalAccessException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v2, "CommonSearchActivity"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_3

    .line 231
    :catch_3
    move-exception v0

    .line 232
    const-string/jumbo v3, "CommonSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "class has none constructors: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v2, "CommonSearchActivity"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_3

    .line 234
    :catch_4
    move-exception v0

    .line 235
    const-string/jumbo v3, "CommonSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The constructor with none parameters dones not exist: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v2, "CommonSearchActivity"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 290
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->p:I

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->n:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "groupId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "keyword"

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/c;->c:I

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/c;->d:I

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/c;->a:I

    sget v4, Lcom/alipay/android/phone/businesscommon/globalsearch/c;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->h:I

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;Z)V
    .locals 4

    .prologue
    .line 346
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getUbbStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "startSearch failed,same word"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/l;->a()Lcom/alipay/android/phone/globalsearch/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/l;->b()V

    const-string/jumbo v0, "jiushi"

    const-string/jumbo v2, "startSearch , clearSearchParams"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-virtual {v2, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-virtual {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->c()V

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "MainPage"

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/globalsearch/b/a;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->m:Lcom/alipay/android/phone/globalsearch/b/a;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->m:Lcom/alipay/android/phone/globalsearch/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->m:Lcom/alipay/android/phone/globalsearch/b/a;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/b/a;->a()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->p:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 309
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->p:I

    .line 310
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->b()V

    .line 311
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 313
    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/c;->c:I

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/c;->d:I

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/c;->a:I

    sget v4, Lcom/alipay/android/phone/businesscommon/globalsearch/c;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 314
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 315
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->u:Z

    .line 317
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    .line 319
    return-void
.end method

.method static synthetic e(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->u:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->u:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 195
    return-void
.end method

.method public final a(Lcom/alipay/android/phone/globalsearch/b/a;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->m:Lcom/alipay/android/phone/globalsearch/b/a;

    .line 344
    return-void
.end method

.method protected final b()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 264
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->b:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->getSearchInputEdit()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 265
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFocusable(Z)V

    .line 266
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFocusableInTouchMode(Z)V

    .line 267
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    .line 268
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->q:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 269
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->l:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 271
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->b:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->getBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->i:Lcom/alipay/mobile/commonui/widget/APImageButton;

    .line 272
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->i:Lcom/alipay/mobile/commonui/widget/APImageButton;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    .line 275
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    .line 276
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->b()V

    .line 277
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->p:I

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->h:I

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 278
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 376
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 377
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 378
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a:I

    .line 133
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 134
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 133
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 135
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->r:Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->setMoreClickListener(Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;)V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 138
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 137
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->k:Ljava/lang/String;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->setUserId(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->downLoadApp()V

    .line 145
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->b(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 148
    const-class v1, Lcom/alipay/mobile/framework/service/LBSInfoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/LBSInfoService;

    .line 149
    if-eqz v0, :cond_1

    .line 150
    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/e;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/LBSInfoService;->requestLBSInfoUpdates(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a()V

    .line 167
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    return-void

    .line 167
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->k:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;->init(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->t:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "CommonSearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bundle init OK with appId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "CommonSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AbstractMethodError :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "CommonSearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "searchInitialization is null with appId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->setMoreClickListener(Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->g:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->b()V

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->b()V

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 384
    return-void

    .line 382
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;->quit()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 323
    packed-switch p1, :pswitch_data_0

    .line 332
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 325
    :pswitch_0
    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->p:I

    if-ne v1, v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->e()V

    goto :goto_1

    .line 329
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 255
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onResume()V

    .line 256
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a:I

    if-eq v0, v6, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/globalsearch/d/b;

    const-string/jumbo v2, "UC-SS-150324-03"

    const-string/jumbo v3, "event"

    const-string/jumbo v4, "20001003"

    const-string/jumbo v5, "search"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/android/phone/globalsearch/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "clickback"

    iput-object v2, v1, Lcom/alipay/android/phone/globalsearch/d/b;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clickid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/d/b;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/phone/globalsearch/d/a;->a(Lcom/alipay/android/phone/globalsearch/d/b;)V

    .line 258
    sput v6, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a:I

    .line 260
    :cond_0
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
