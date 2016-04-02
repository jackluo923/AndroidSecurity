.class public final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;
.super Ljava/lang/Object;


# static fields
.field private static B:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

.field private static synthetic F:[I


# instance fields
.field private final A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final C:Ljava/util/concurrent/atomic/AtomicLong;

.field private D:J

.field private E:Z

.field private a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ag;

.field private b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ad;

.field private c:Landroid/content/IntentFilter;

.field private d:Z

.field private final e:Ljava/lang/Object;

.field private f:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;

.field private g:Landroid/content/IntentFilter;

.field private h:Z

.field private final i:Ljava/lang/Object;

.field private j:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ae;

.field private k:Landroid/content/IntentFilter;

.field private l:Z

.field private final m:Ljava/lang/Object;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Landroid/content/Context;

.field private p:Landroid/net/wifi/WifiManager$WifiLock;

.field private final q:Landroid/net/wifi/WifiManager;

.field private final r:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final u:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

.field private v:Landroid/net/wifi/WifiInfo;

.field private w:Landroid/net/NetworkInfo$DetailedState;

.field private x:I

.field private final y:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

.field private final z:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ag;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ag;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;B)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ag;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ad;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ad;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ad;

    iput-boolean v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->e:Ljava/lang/Object;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->f:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;

    iput-boolean v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->h:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->i:Ljava/lang/Object;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ae;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ae;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->j:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ae;

    iput-boolean v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->l:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->m:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->r:Ljava/util/HashSet;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->u:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->C:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->D:J

    iput-boolean v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->E:Z

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->x:I

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ad;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->a(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->l()V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->n()V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getInstance()Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->y:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->z:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->B:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->B:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->B:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->B:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    if-eqz v1, :cond_1

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->B:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Landroid/content/BroadcastReceiver;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiHelper"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;I)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "The state of WIFI changed to WIFI_STATE:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iput p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->x:I

    iput-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->v:Landroid/net/wifi/WifiInfo;

    iput-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->w:Landroid/net/NetworkInfo$DetailedState;

    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->x:I

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;->a(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateConnectionState state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->v:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->w:Landroid/net/NetworkInfo$DetailedState;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->u:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->u:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->v:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->w:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;->a(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "WifiHelper"

    const-string/jumbo v3, "notifyListenerConnectionStateChanged listener is null"

    invoke-static {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "android.hardware.wifi"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->r:Ljava/util/HashSet;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiHelper"

    invoke-static {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->u:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->l:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "unregisterWifiRssiReceiver isRegRssiReceiver false return"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "unregisterWifiRssiReceiver succ"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->j:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ae;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->l:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiHelper"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->m()V

    return-void
.end method

.method static synthetic i(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "unregisterWifiReceiver return isScreenOn "

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->d:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "unregisterWifiReceiver isRegWifiReceiver false return"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiHelper"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_3
    const-string/jumbo v0, "unregisterWifiReceiver succ"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ag;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->d:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic i()[I
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->F:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_1
    :try_start_1
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_2
    :try_start_2
    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_3
    :try_start_3
    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_4
    :try_start_4
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_5
    :try_start_5
    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_6
    :try_start_6
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    :try_start_7
    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_8
    :try_start_8
    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_9
    :try_start_9
    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_a
    :try_start_a
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_b
    :try_start_b
    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_c
    :try_start_c
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_d
    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->F:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1
.end method

.method private j()I
    .locals 10

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v1, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    move v0, v3

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "WifiHelper"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :pswitch_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;

    invoke-direct {v6, p0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;B)V

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_3
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_5
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->u:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

    iput-object v5, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;->a:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->u:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_1

    :cond_6
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    new-instance v4, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    invoke-direct {v4, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->v:Landroid/net/wifi/WifiInfo;

    iget-object v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->w:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v0, v8}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    iget v0, v4, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->i:I

    const v8, 0x7fffffff

    if-eq v0, v8, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v4, "[IBSS]"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v3

    :cond_8
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    if-nez v4, :cond_2

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    invoke-direct {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    move v4, v1

    goto :goto_5

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a(Landroid/net/wifi/WifiConfiguration;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :cond_b
    const/4 v0, 0x3

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->u:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;->a()V

    move v0, v2

    goto/16 :goto_1

    :pswitch_2
    move v0, v3

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->u:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;->a()V

    move v0, v2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic j(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private k()Z
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->y:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "countdown mWifiReceiveCount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->C:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->C:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->y:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v5, "wifi_receiver_act_max_count"

    const-wide/16 v6, 0x28

    invoke-virtual {v4, v5, v6, v7}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->D:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->y:Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    const-string/jumbo v3, "wiFi_receiver_unregist_interval"

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string/jumbo v0, "WifiHelper"

    const-string/jumbo v1, "countdown unregisterWifiReceiver ok"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->m()V

    iput-boolean v8, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->E:Z

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->z:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WifiHelper"

    const-string/jumbo v1, "countdown mNotification cancel"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->z:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a()V

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->E:Z

    goto :goto_0
.end method

.method private l()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "registerWifiScanResultReceiver isScreenOff return"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iput-boolean v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->E:Z

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->h:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "registerWifiScanResultReceiver isRegScanResultReceiver return"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "WifiHelper"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iput-boolean v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->E:Z

    goto :goto_1

    :cond_1
    :try_start_5
    const-string/jumbo v0, "registerWifiScanResultReceiver success"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->C:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->D:J

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->f:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->g:Landroid/content/IntentFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->g:Landroid/content/IntentFilter;

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->h:Z

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-boolean v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->E:Z

    goto :goto_1

    :cond_2
    :try_start_6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->g:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->g:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->g:Landroid/content/IntentFilter;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    iput-boolean v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->E:Z

    throw v0
.end method

.method static synthetic l(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "registerWifiRssiReceiver isScreenOff return"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "registerWifiRssiReceiver isForeGround return"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiHelper"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->l:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "registerWifiRssiReceiver isRegRssiReceiver return"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :try_start_4
    const-string/jumbo v0, "registerWifiRssiReceiver succ"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->j:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ae;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->k:Landroid/content/IntentFilter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->k:Landroid/content/IntentFilter;

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->l:Z

    monitor-exit v1

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->k:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->k:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->k:Landroid/content/IntentFilter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method static synthetic m(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)Lcom/alipay/android/phone/nfd/nfdservice/biz/m;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->z:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    return-object v0
.end method

.method private m()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unregisterWifiScanResultReceiver return isScreenOn "

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->h:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "unregisterWifiScanResultReceiver isRegScanResultReceiver false return"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiHelper"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_3
    const-string/jumbo v0, "unregisterWifiScanResultReceiver succ"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->f:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->h:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private n()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "registerWifiReceiver isScreenOff return"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->d:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "registerWifiReceiver isRegWifiReceiver return"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiHelper"

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_3
    const-string/jumbo v0, "registerWifiReceiver succ"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ag;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c:Landroid/content/IntentFilter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c:Landroid/content/IntentFilter;

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->d:Z

    monitor-exit v1

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c:Landroid/content/IntentFilter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->u:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "queryAccessPoints bssid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->u:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

    iget-object v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;->a:Ljava/util/List;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    if-nez v0, :cond_6

    const-string/jumbo v0, "queryAccessPoints ap is null"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryAccessPoints ap: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->b:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->u:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->u:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;

    iget-object v2, v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/aa;->a:Ljava/util/List;

    invoke-interface {v0, p1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;->a(ILjava/util/List;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;)V
    .locals 4

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->b()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    if-eq v3, v2, :cond_2

    iget v2, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-eq v2, v1, :cond_0

    :cond_2
    iget v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    if-ne v3, v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    iput v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    :goto_1
    iget v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    iget v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    iput v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->r:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdNetWorkUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdNetWorkUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdNetWorkUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdNetWorkUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v0

    goto :goto_0
.end method

.method public final b()Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public final b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->r:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->f()V

    const-string/jumbo v0, "removeReceiver"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ag;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ag;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->f:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->f:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->f:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/af;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->j:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ae;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->j:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ae;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->j:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ae;

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ad;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ad;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ad;

    :cond_3
    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->o:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->f()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    :cond_0
    return-void
.end method

.method public final declared-synchronized e()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->p:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->q:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x2

    const-string/jumbo v2, "WifiHelper"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->p:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->p:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->p:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->p:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->p:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->j()I

    move-result v0

    goto :goto_0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->C:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->D:J

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(I)V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->l()V

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->n()V

    return-void
.end method
