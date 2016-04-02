.class public Lcom/taobao/infsword/client/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/infsword/client/IAntiTrojan;


# instance fields
.field private a:I

.field private b:I

.field private final c:Ljava/lang/String;

.field private final d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/taobao/infsword/client/a;->a:I

    iput v0, p0, Lcom/taobao/infsword/client/a;->b:I

    const-class v0, Lcom/taobao/infsword/client/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/infsword/client/a;->c:Ljava/lang/String;

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/taobao/infsword/client/a;->d:J

    return-void
.end method

.method static synthetic a(Lcom/taobao/infsword/client/a;)I
    .locals 1

    iget v0, p0, Lcom/taobao/infsword/client/a;->a:I

    return v0
.end method

.method static synthetic a(Lcom/taobao/infsword/client/a;I)V
    .locals 0

    iput p1, p0, Lcom/taobao/infsword/client/a;->a:I

    return-void
.end method

.method static synthetic b(Lcom/taobao/infsword/client/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/infsword/client/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/taobao/infsword/client/a;I)V
    .locals 0

    iput p1, p0, Lcom/taobao/infsword/client/a;->b:I

    return-void
.end method

.method static synthetic c(Lcom/taobao/infsword/client/a;)I
    .locals 1

    iget v0, p0, Lcom/taobao/infsword/client/a;->b:I

    return v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/taobao/infsword/client/a$a;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/taobao/infsword/client/a$a;-><init>(Lcom/taobao/infsword/client/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/taobao/infsword/client/a$a;->start()V

    sget-object v1, Lcom/taobao/infsword/statistic/KGB;->p:Lcom/taobao/infsword/statistic/KGB$SmsReportSwitcherEnum;

    sget-object v2, Lcom/taobao/infsword/statistic/KGB$SmsReportSwitcherEnum;->OPEN:Lcom/taobao/infsword/statistic/KGB$SmsReportSwitcherEnum;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/taobao/infsword/client/a$b;

    invoke-direct {v1, p0, v0}, Lcom/taobao/infsword/client/a$b;-><init>(Lcom/taobao/infsword/client/a;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/taobao/infsword/client/a$b;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/taobao/infsword/c/b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
