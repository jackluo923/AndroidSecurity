.class public Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;
.super Ljava/lang/Object;
.source "DynamicQuickPayTempInitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final QUICKPAY_CHANNEL_BUSY_TID:Ljava/lang/String; = "QUICKPAY@cashier-channel-busy"

.field public static final QUICKPAY_FRONTPAY_SWITCH_CHANNEL:Ljava/lang/String; = "QUICKPAY@frontpay-switch-channel"

.field public static final QUICKPAY_HOME_PAGE_TID:Ljava/lang/String; = "QUICKPAY@cashier-pre-confirm"

.field public static final QUICKPAY_OPEN_PWD_CHECK:Ljava/lang/String; = "QUICKPAY@open-pwd-check"

.field public static final QUICKPAY_SETTING_CHANNEL:Ljava/lang/String; = "QUICKPAY@setting-channel"

.field public static final QUICKPAY_SETTING_HOME:Ljava/lang/String; = "QUICKPAY@setting-home"

.field private static a:Ljava/lang/Object;

.field private static final b:Lcom/alipay/android/app/template/TemplateManager;

.field private static c:Ljava/util/Map;

.field private static d:Z

.field private static e:Lcom/alipay/android/app/template/TemplateUiParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->a:Ljava/lang/Object;

    .line 38
    invoke-static {}, Lcom/alipay/android/app/template/TemplateManager;->getInstance()Lcom/alipay/android/app/template/TemplateManager;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->b:Lcom/alipay/android/app/template/TemplateManager;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->c:Ljava/util/Map;

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->d:Z

    .line 43
    new-instance v0, Lcom/alipay/android/app/template/TemplateUiParser;

    invoke-direct {v0}, Lcom/alipay/android/app/template/TemplateUiParser;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->e:Lcom/alipay/android/app/template/TemplateUiParser;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->b(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 73
    sget-object v0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->b:Lcom/alipay/android/app/template/TemplateManager;

    invoke-virtual {v0, p0, p1}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    sget-object v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    if-eqz p2, :cond_1

    .line 77
    invoke-static {p0, p1}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    sget-object v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    .line 80
    invoke-virtual {v0, p0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    .line 79
    iget-object v0, v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->a:Lcom/alipay/android/app/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v1, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, p1, v1}, Lcom/alipay/android/app/template/TemplateUiParser;->preParseCache(Lcom/alipay/android/app/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 89
    sget-object v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    .line 90
    invoke-virtual {v0, p0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    .line 91
    sget-object v1, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->e:Lcom/alipay/android/app/template/TemplateUiParser;

    iget-object v2, v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->a:Lcom/alipay/android/app/json/JSONObject;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    iget-object v0, v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->e:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/alipay/android/app/template/TemplateUiParser;->parse(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/template/OnTemplateClickListener;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->c:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public static clearCachedTemplatePage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    return-void
.end method

.method public static doCacheTemplatePageBackground(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 107
    invoke-static {p0}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->clearCachedTemplatePage(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v0, "QUICKPAY@cashier-channel-busy"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "QUICKPAY@frontpay-switch-channel"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "QUICKPAY@cashier-pre-confirm"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "QUICKPAY@setting-home"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "QUICKPAY@setting-channel"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "QUICKPAY@open-pwd-check"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 118
    :goto_1
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static getCachedTemplatePage(Ljava/lang/String;)Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initial()V
    .locals 4

    .prologue
    .line 46
    sget-object v1, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-boolean v0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 49
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->init(Landroid/app/Activity;)V

    .line 54
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    const-string/jumbo v2, "QUICKPAY@cashier-pre-confirm"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 56
    const-string/jumbo v2, "QUICKPAY@setting-home"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 57
    const-string/jumbo v2, "QUICKPAY@setting-channel"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 58
    const-string/jumbo v2, "QUICKPAY@frontpay-switch-channel"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 59
    const-string/jumbo v2, "QUICKPAY@open-pwd-check"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 60
    const-string/jumbo v2, "QUICKPAY@cashier-channel-busy"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->d:Z

    .line 62
    const-string/jumbo v0, "DynamicQuickPayTempInitial"

    const-string/jumbo v2, "===DynamicQuickPayTempInitial=== -->done"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string/jumbo v2, "DynamicQuickPayTempInitial"

    const-string/jumbo v3, "===DynamicQuickPayTempInitial=== -->init crash"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "DynamicQuickPayTempInitial"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    const-string/jumbo v0, "DynamicQuickPayTempInitial"

    const-string/jumbo v2, "===DynamicQuickPayTempInitial=== -->print crash"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 135
    invoke-static {}, Lcom/alipay/android/app/template/DynamicQuickPayTempInitial;->initial()V

    .line 136
    return-void
.end method
