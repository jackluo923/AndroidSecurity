.class public final Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;


# instance fields
.field private b:Landroid/view/WindowManager;

.field private c:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

.field private final f:Landroid/app/ActivityManager;

.field private g:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

.field private final h:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->d:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;B)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->h:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->e:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->f:Landroid/app/ActivityManager;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->b:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->b:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->b:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->g:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;Ljava/util/List;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->g:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->isSame(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public static a()Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->g:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;)Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/c;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/b;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
