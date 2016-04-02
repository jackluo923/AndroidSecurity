.class public Lcom/ali/user/mobile/register/RegionChoice;
.super Ljava/lang/Object;
.source "RegionChoice.java"


# static fields
.field private static a:Lcom/ali/user/mobile/register/RegionChoice;


# instance fields
.field private b:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

.field private c:Lcom/ali/user/mobile/service/UserRegisterService;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ali/user/mobile/register/RegionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/RegionChoice;->e:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/RegionChoice;->f:Ljava/util/ArrayList;

    .line 31
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserRegisterService()Lcom/ali/user/mobile/service/UserRegisterService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/RegionChoice;->c:Lcom/ali/user/mobile/service/UserRegisterService;

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;)V
    .locals 3

    .prologue
    .line 75
    invoke-static {p2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->setRegionCallback(Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;)V

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string/jumbo v1, "region"

    iget-object v2, p0, Lcom/ali/user/mobile/register/RegionChoice;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v1, "letter"

    iget-object v2, p0, Lcom/ali/user/mobile/register/RegionChoice;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 79
    const-string/jumbo v1, "letter_str"

    iget-object v2, p0, Lcom/ali/user/mobile/register/RegionChoice;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 80
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 81
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ali/user/mobile/register/RegionChoice;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/RegionChoice;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/RegionChoice;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/ali/user/mobile/register/RegionChoice;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/ali/user/mobile/register/RegionChoice;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/register/RegionChoice;->a:Lcom/ali/user/mobile/register/RegionChoice;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/ali/user/mobile/register/RegionChoice;

    invoke-direct {v0}, Lcom/ali/user/mobile/register/RegionChoice;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/register/RegionChoice;->a:Lcom/ali/user/mobile/register/RegionChoice;

    .line 38
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/register/RegionChoice;->a:Lcom/ali/user/mobile/register/RegionChoice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public chooseRegion(Landroid/content/Context;Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;)V
    .locals 3

    .prologue
    .line 42
    iput-object p2, p0, Lcom/ali/user/mobile/register/RegionChoice;->b:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    .line 44
    invoke-direct {p0}, Lcom/ali/user/mobile/register/RegionChoice;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/register/RegionChoice;->a(Landroid/content/Context;Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;)V

    .line 68
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/register/RegionChoice;->b:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    .line 72
    :cond_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/RegionChoice;->b:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/ali/user/mobile/register/RegionChoice;->b:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    invoke-interface {v0}, Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;->preRpc()V

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/register/RegionChoice;->c:Lcom/ali/user/mobile/service/UserRegisterService;

    invoke-interface {v0}, Lcom/ali/user/mobile/service/UserRegisterService;->countryCodeRes()Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/ali/user/mobile/register/RegionChoice;->b:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p0, Lcom/ali/user/mobile/register/RegionChoice;->b:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    invoke-interface {v1}, Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;->postRpc()V

    .line 55
    :cond_3
    if-eqz v0, :cond_4

    iget v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->resultStatus:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->countryCodeResList:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 56
    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->countryCodeResList:Ljava/util/List;

    iget-object v1, p0, Lcom/ali/user/mobile/register/RegionChoice;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ali/user/mobile/register/RegionChoice;->f:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/register/RegisterUtil;->fillData(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/RegionChoice;->d:Ljava/util/ArrayList;

    .line 57
    invoke-direct {p0}, Lcom/ali/user/mobile/register/RegionChoice;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/register/RegionChoice;->a(Landroid/content/Context;Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;)V

    goto :goto_0

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/ali/user/mobile/register/RegionChoice;->b:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    if-eqz v1, :cond_0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    iget-object v1, p0, Lcom/ali/user/mobile/register/RegionChoice;->b:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    iget v2, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->resultStatus:I

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->memo:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;->onFail(ILjava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_5
    iget-object v0, p0, Lcom/ali/user/mobile/register/RegionChoice;->b:Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;

    const/4 v1, -0x1

    const-string/jumbo v2, "\u7cfb\u7edf\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;->onFail(ILjava/lang/String;)V

    goto :goto_0
.end method
