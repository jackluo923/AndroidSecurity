.class public Lcom/alipay/mobile/common/logagent/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->c:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    .line 28
    iput-object p3, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->d:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->e:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->b:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->f:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->a:Ljava/lang/String;

    .line 33
    iput-object p8, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->g:Ljava/lang/String;

    .line 34
    iput-object p9, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->h:Ljava/lang/String;

    .line 35
    iput-object p10, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->i:Ljava/lang/String;

    .line 36
    iput-object p11, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Ljava/lang/String;

    .line 37
    iput-object p12, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Ljava/lang/String;

    .line 38
    iput-object p13, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:[Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public writeLog()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 43
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefViewID(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppVersion(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatus(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatusMsg(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUrl(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLogPro(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v3, :cond_1

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v4, :cond_2

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->l:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLegacyParam(Ljava/lang/String;)V

    .line 66
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/StorageManager;->c:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 67
    return-void
.end method
