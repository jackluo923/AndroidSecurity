.class public Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;
    }
.end annotation


# static fields
.field private static d:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;


# instance fields
.field a:Z

.field public b:Z

.field private c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

.field private e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;

.field private h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->b:Z

    return-void
.end method

.method public static a()Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->d:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->d:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->b()V

    :cond_0
    sget-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->d:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;)V
    .locals 3

    const-string/jumbo v0, "MspPayApp"

    const-string/jumbo v1, "phonecashier helper toPay"

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v0, v2, :cond_1

    const-string/jumbo v0, "MspPayApp"

    const-string/jumbo v2, "phonecashier helper toPay  notify lock"

    invoke-static {v0, v2}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;-><init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;)V

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    const-string/jumbo v1, "phonecashierthread"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->e:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper$a;->start()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/data/BizDataSource;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->a()V

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/data/BizDataSource;Lcom/alipay/android/app/data/BizData;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/trade/TradeManager;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->h:Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->a()V

    :cond_4
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->a()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->c(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/alipay/android/app/ui/TradeUiManager;->a()Lcom/alipay/android/app/ui/TradeUiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/TradeUiManager;->c(I)Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->h()V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/android/app/exception/AppErrorException;->printStackTrace()V

    goto :goto_1
.end method
