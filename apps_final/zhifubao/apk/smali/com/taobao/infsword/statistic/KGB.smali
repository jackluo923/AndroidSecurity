.class public Lcom/taobao/infsword/statistic/KGB;
.super Ljava/lang/Object;


# static fields
.field private static synthetic A:[I = null

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String; = "1.4.0"

.field public static final c:Ljava/lang/String; = "kgbversion"

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:J = 0x6400000L

.field public static final j:I = 0xa

.field public static k:J = 0x0L

.field public static l:J = 0x0L

.field public static m:J = 0x0L

.field public static n:J = 0x0L

.field public static o:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum; = null

.field public static p:Lcom/taobao/infsword/statistic/KGB$SmsReportSwitcherEnum; = null

.field public static final q:Ljava/lang/String; = "kgbconfig"

.field public static final r:Ljava/lang/String; = "nick"

.field public static final s:Ljava/lang/String; = "appid"

.field public static final t:Ljava/lang/String; = "time"

.field public static final u:Ljava/lang/String; = "time2"

.field public static final v:Ljava/lang/String; = "content"

.field public static final w:Ljava/lang/String; = "scantime"

.field public static x:Z

.field public static y:Z

.field public static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-wide/16 v5, 0x2710

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/taobao/infsword/statistic/KGB;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/infsword/statistic/KGB;->a:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "http://10.218.140.158/kgbreport"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://10.218.140.158/kgbconfig"

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/infsword/statistic/KGB;->d:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "http://wss.proxy.taobao.org/kgb/report"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://wss.proxy.taobao.org/kgbconfig"

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/infsword/statistic/KGB;->e:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "http://wss.alibaba.com/kgbreport"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://wss.alibaba.com/kgbconfig"

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/infsword/statistic/KGB;->f:[Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/taobao/infsword/statistic/KGB;->k:J

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/taobao/infsword/statistic/KGB;->l:J

    sput-wide v5, Lcom/taobao/infsword/statistic/KGB;->m:J

    sput-wide v5, Lcom/taobao/infsword/statistic/KGB;->n:J

    sget-object v0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->ONLINE:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    sput-object v0, Lcom/taobao/infsword/statistic/KGB;->o:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    sget-object v0, Lcom/taobao/infsword/statistic/KGB$SmsReportSwitcherEnum;->CLOSE:Lcom/taobao/infsword/statistic/KGB$SmsReportSwitcherEnum;

    sput-object v0, Lcom/taobao/infsword/statistic/KGB;->p:Lcom/taobao/infsword/statistic/KGB$SmsReportSwitcherEnum;

    sput-boolean v2, Lcom/taobao/infsword/statistic/KGB;->x:Z

    sput-boolean v2, Lcom/taobao/infsword/statistic/KGB;->y:Z

    sput v2, Lcom/taobao/infsword/statistic/KGB;->z:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/taobao/infsword/statistic/KGB;->a()[I

    move-result-object v0

    sget-object v1, Lcom/taobao/infsword/statistic/KGB;->o:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    invoke-virtual {v1}, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/taobao/infsword/statistic/KGB;->f:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/taobao/infsword/statistic/KGB;->d:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/taobao/infsword/statistic/KGB;->e:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/taobao/infsword/statistic/KGB;->A:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->values()[Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->ONLINE:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    invoke-virtual {v1}, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->PRE:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    invoke-virtual {v1}, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->TEST:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    invoke-virtual {v1}, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/taobao/infsword/statistic/KGB;->A:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static setEnvMode(Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;)V
    .locals 0

    sput-object p0, Lcom/taobao/infsword/statistic/KGB;->o:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    return-void
.end method

.method public static setSmsReportEnable(Lcom/taobao/infsword/statistic/KGB$SmsReportSwitcherEnum;)V
    .locals 0

    sput-object p0, Lcom/taobao/infsword/statistic/KGB;->p:Lcom/taobao/infsword/statistic/KGB$SmsReportSwitcherEnum;

    return-void
.end method
