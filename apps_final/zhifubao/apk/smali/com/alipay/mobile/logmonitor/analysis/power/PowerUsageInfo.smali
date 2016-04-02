.class public Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
.super Ljava/lang/Object;
.source "PowerUsageInfo.java"


# instance fields
.field private a:Lcom/android/internal/app/IBatteryStats;

.field private b:I

.field private c:Lcom/android/internal/os/PowerProfile;

.field private d:Lcom/android/internal/os/BatteryStatsImpl;

.field private e:J

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Context;

.field private j:I

.field private k:F

.field private l:I

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h:Ljava/util/List;

    .line 58
    iput v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->k:F

    .line 60
    iput v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->l:I

    .line 62
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    .line 111
    :try_start_0
    const-string/jumbo v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a:Lcom/android/internal/app/IBatteryStats;

    .line 112
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 117
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PowerUsageInfo ,uid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getAppPath,exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .locals 4

    .prologue
    .line 788
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    cmpl-double v0, p4, v0

    if-lez v0, :cond_0

    .line 789
    iput-wide p4, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 790
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    add-double/2addr v0, p4

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    .line 791
    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p4, v2, v3

    invoke-direct {v0, p1, v1, v2}, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;-><init>(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    .line 794
    iput-wide p2, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->d:J

    .line 796
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    return-object v0
.end method

.method private a(J)V
    .locals 16

    .prologue
    .line 649
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    .line 651
    const-wide/16 v2, 0x0

    long-to-double v6, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v9, "screen.on"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    .line 656
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 657
    int-to-float v3, v2

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v3, v10

    float-to-double v10, v3

    mul-double/2addr v10, v8

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    div-double/2addr v10, v12

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    move-wide/from16 v0, p1

    invoke-virtual {v3, v2, v0, v1, v12}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 661
    long-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 656
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    :cond_0
    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v2

    .line 668
    sget-object v3, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->SCREEN:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static a(Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 770
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 771
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    .line 775
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    .line 776
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    .line 777
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    .line 778
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    .line 779
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    .line 780
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->j:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->j:J

    .line 781
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->k:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->k:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->k:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 785
    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method private static a(D)Z
    .locals 4

    .prologue
    .line 808
    const-wide/16 v0, 0x0

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(J)V
    .locals 12

    .prologue
    .line 740
    const-wide/16 v4, 0x0

    .line 741
    const-wide/16 v2, 0x0

    .line 743
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 744
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v6, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v1, v0, p1, p2, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 746
    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    long-to-double v8, v8

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v10, "radio.on"

    invoke-virtual {v1, v10, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 750
    add-long/2addr v2, v6

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 754
    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    long-to-double v0, v0

    iget-object v6, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v7, "radio.scanning"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    .line 758
    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->CELL:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    move-result-object v0

    .line 759
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    iget v5, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v1, v4, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    long-to-double v1, v2

    div-double v1, v4, v1

    iput-wide v1, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->q:D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private e()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 229
    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 246
    :goto_0
    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 238
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 239
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 240
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-lt v1, v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_1

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V

    .line 244
    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 241
    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 65

    .prologue
    .line 258
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    const-string/jumbo v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    move/from16 v44, v0

    .line 262
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v45

    .line 263
    move/from16 v0, v45

    new-array v0, v0, [D

    move-object/from16 v46, v0

    .line 264
    move/from16 v0, v45

    new-array v0, v0, [J

    move-object/from16 v47, v0

    .line 265
    const/4 v5, 0x0

    :goto_0
    move/from16 v0, v45

    if-ge v5, v0, :cond_0

    .line 266
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v7, "cpu.active"

    invoke-virtual {v6, v7, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v6

    aput-wide v6, v46, v5

    .line 265
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 270
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g()D

    move-result-wide v48

    .line 271
    const-wide/16 v5, 0x0

    cmpg-double v5, v48, v5

    if-gez v5, :cond_2

    .line 577
    :cond_1
    :goto_1
    return-void

    .line 274
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    move/from16 v0, v44

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v50

    .line 276
    const-wide/16 v7, 0x0

    .line 277
    const/4 v6, 0x0

    .line 278
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v52

    .line 279
    invoke-virtual/range {v52 .. v52}, Landroid/util/SparseArray;->size()I

    move-result v53

    .line 282
    const/4 v5, 0x0

    move/from16 v40, v5

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    :goto_2
    move/from16 v0, v40

    move/from16 v1, v53

    if-ge v0, v1, :cond_22

    .line 283
    move-object/from16 v0, v52

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    .line 285
    const-wide/16 v8, 0x0

    .line 286
    const-wide/16 v10, 0x0

    .line 287
    const/4 v12, 0x0

    .line 289
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v32

    .line 291
    const-wide/16 v6, 0x0

    .line 292
    const-wide/16 v37, 0x0

    .line 293
    const-wide/16 v21, 0x0

    .line 294
    const-wide/16 v29, 0x0

    .line 295
    const-wide/16 v13, 0x0

    .line 296
    const-wide/16 v25, 0x0

    .line 297
    const-wide/16 v19, 0x0

    .line 298
    const-wide/16 v27, 0x0

    .line 299
    const-wide/16 v23, 0x0

    .line 300
    const-wide/16 v17, 0x0

    .line 301
    const-wide/16 v15, 0x0

    .line 303
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    move/from16 v33, v0

    move/from16 v0, v31

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    const/16 v31, 0x1

    move/from16 v39, v31

    .line 305
    :goto_3
    if-eqz v39, :cond_3

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v33

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v31

    .line 307
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v33

    const-string/jumbo v34, "PowerUsageInfo"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "############UID="

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ",NAME="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v35, ", Battery Real Time="

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-wide/16 v35, 0x3e8

    div-long v35, v50, v35

    move-object/from16 v0, v31

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->size()I

    move-result v31

    if-lez v31, :cond_b

    .line 312
    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v36

    move-wide/from16 v31, v6

    move-wide/from16 v33, v8

    :goto_4
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 314
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Proc;

    .line 316
    move/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v8

    .line 318
    move/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v54

    .line 320
    move/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v56

    .line 322
    const-wide/16 v58, 0xa

    mul-long v56, v56, v58

    add-long v37, v37, v56

    .line 323
    add-long v8, v8, v54

    const-wide/16 v54, 0xa

    mul-long v54, v54, v8

    .line 326
    const/4 v9, 0x0

    .line 327
    const/4 v8, 0x0

    move/from16 v61, v8

    move v8, v9

    move/from16 v9, v61

    :goto_5
    move/from16 v0, v45

    if-ge v9, v0, :cond_5

    .line 328
    move/from16 v0, v44

    invoke-virtual {v7, v9, v0}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v56

    aput-wide v56, v47, v9

    .line 329
    int-to-long v0, v8

    move-wide/from16 v56, v0

    aget-wide v58, v47, v9

    add-long v56, v56, v58

    move-wide/from16 v0, v56

    long-to-int v0, v0

    move/from16 v35, v0

    .line 327
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move/from16 v8, v35

    goto :goto_5

    .line 303
    :cond_4
    const/16 v31, 0x0

    move/from16 v39, v31

    goto/16 :goto_3

    .line 331
    :cond_5
    if-nez v8, :cond_28

    .line 332
    const/4 v7, 0x1

    .line 335
    :goto_6
    const-wide/16 v8, 0x0

    .line 336
    const/16 v35, 0x0

    :goto_7
    move/from16 v0, v35

    move/from16 v1, v45

    if-ge v0, v1, :cond_6

    .line 337
    aget-wide v56, v47, v35

    move-wide/from16 v0, v56

    long-to-double v0, v0

    move-wide/from16 v56, v0

    int-to-double v0, v7

    move-wide/from16 v58, v0

    div-double v56, v56, v58

    .line 338
    move-wide/from16 v0, v54

    long-to-double v0, v0

    move-wide/from16 v58, v0

    mul-double v56, v56, v58

    aget-wide v58, v46, v35

    mul-double v56, v56, v58

    add-double v8, v8, v56

    .line 336
    add-int/lit8 v35, v35, 0x1

    goto :goto_7

    .line 340
    :cond_6
    add-long v31, v31, v54

    .line 342
    if-eqz v39, :cond_7

    const-wide/16 v56, 0x0

    cmpl-double v7, v8, v56

    if-eqz v7, :cond_7

    .line 343
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v35, "PowerUsageInfo"

    const-string/jumbo v56, "process %s , cpu power=%.2f , cpu time=%d"

    const/16 v57, 0x3

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v59

    aput-object v59, v57, v58

    const/16 v58, 0x1

    const-wide v59, 0x408f400000000000L    # 1000.0

    div-double v59, v8, v59

    invoke-static/range {v59 .. v60}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v59

    aput-object v59, v57, v58

    const/16 v58, 0x2

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    aput-object v54, v57, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v35

    move-object/from16 v1, v54

    invoke-interface {v7, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_7
    add-double v33, v33, v8

    .line 351
    if-eqz v12, :cond_8

    const-string/jumbo v7, "*"

    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 354
    :cond_8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-wide v10, v8

    move-object v12, v6

    goto/16 :goto_4

    .line 355
    :cond_9
    cmpg-double v7, v10, v8

    if-gez v7, :cond_27

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v35, "*"

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 358
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-wide/from16 v61, v8

    move-object v8, v6

    move-wide/from16 v6, v61

    :goto_8
    move-wide v10, v6

    move-object v12, v8

    .line 360
    goto/16 :goto_4

    :cond_a
    move-wide/from16 v6, v31

    move-wide/from16 v8, v33

    .line 364
    :cond_b
    cmp-long v10, v37, v6

    if-lez v10, :cond_26

    .line 365
    if-eqz v39, :cond_c

    const-wide/16 v10, 0x2710

    add-long/2addr v6, v10

    cmp-long v6, v37, v6

    if-lez v6, :cond_c

    .line 366
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "PowerUsageInfo"

    const-string/jumbo v10, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    invoke-interface {v6, v7, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move-wide/from16 v35, v37

    .line 372
    :goto_9
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v31, v8, v6

    .line 373
    if-eqz v39, :cond_d

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v6

    if-nez v6, :cond_d

    .line 374
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "PowerUsageInfo"

    const-string/jumbo v8, "===========total cpu power=%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_d
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v6

    .line 379
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide/from16 v10, v21

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 380
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 384
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v21

    .line 385
    if-eqz v21, :cond_f

    move-object/from16 v0, v21

    move-wide/from16 v1, v50

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    move-wide v8, v7

    .line 386
    :goto_b
    if-eqz v21, :cond_10

    move-object/from16 v0, v21

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v7

    .line 388
    :goto_c
    if-eqz v39, :cond_e

    .line 389
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v21

    const-string/jumbo v22, "PowerUsageInfo"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string/jumbo v34, "("

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v33, ")wakelock,"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v33, 0x3e8

    div-long v33, v8, v33

    move-wide/from16 v0, v33

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_e
    add-long v6, v10, v8

    move-wide v10, v6

    .line 393
    goto :goto_a

    .line 385
    :cond_f
    const-wide/16 v7, 0x0

    move-wide v8, v7

    goto :goto_b

    .line 386
    :cond_10
    const/4 v7, 0x0

    goto :goto_c

    .line 394
    :cond_11
    const-wide/16 v6, 0x3e8

    div-long v54, v10, v6

    .line 395
    add-long v42, v42, v54

    .line 398
    move-wide/from16 v0, v54

    long-to-double v6, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v9, "cpu.awake"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    .line 399
    add-double v21, v31, v6

    .line 401
    if-eqz v39, :cond_12

    invoke-static {v6, v7}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v8

    if-nez v8, :cond_12

    .line 402
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    const-string/jumbo v9, "PowerUsageInfo"

    const-string/jumbo v10, "===========wakelock power=%.2f"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v9, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 407
    :cond_12
    :try_start_1
    move-wide/from16 v0, v50

    move/from16 v2, v44

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 408
    if-eqz v39, :cond_13

    .line 409
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    const-string/jumbo v9, "PowerUsageInfo"

    const-string/jumbo v10, "===========wifilock time=%dms"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9

    :cond_13
    move-wide/from16 v33, v6

    .line 417
    :goto_d
    :try_start_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v8

    .line 418
    :try_start_4
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    move-result-wide v6

    .line 419
    add-long v10, v8, v6

    long-to-double v10, v10

    mul-double v10, v10, v48

    .line 420
    add-double v12, v21, v10

    .line 421
    if-eqz v39, :cond_14

    :try_start_5
    invoke-static {v10, v11}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v14

    if-nez v14, :cond_14

    .line 422
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v14

    const-string/jumbo v15, "PowerUsageInfo"

    const-string/jumbo v16, "===========tcp power=%.2f"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_8

    :cond_14
    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    move-wide/from16 v31, v10

    move-wide v8, v12

    .line 430
    :goto_e
    :try_start_6
    move-wide/from16 v0, v50

    move/from16 v2, v44

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 431
    long-to-double v10, v6

    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v13, "wifi.on"

    invoke-virtual {v12, v13}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    .line 433
    add-double/2addr v8, v10

    .line 434
    if-eqz v39, :cond_15

    invoke-static {v10, v11}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v12

    if-nez v12, :cond_15

    .line 435
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    const-string/jumbo v13, "PowerUsageInfo"

    const-string/jumbo v14, "===========wifi running power=%.2f, running time=%dms"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v15, v16

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v15, v10

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v13, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    :cond_15
    move-wide/from16 v17, v6

    .line 443
    :goto_f
    :try_start_8
    move-wide/from16 v0, v50

    move/from16 v2, v44

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 444
    long-to-double v10, v6

    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v13, "wifi.scan"

    invoke-virtual {v12, v13}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    .line 446
    add-double/2addr v8, v10

    .line 447
    if-eqz v39, :cond_16

    invoke-static {v10, v11}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v12

    if-nez v12, :cond_16

    .line 448
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    const-string/jumbo v13, "PowerUsageInfo"

    const-string/jumbo v14, "===========wifi scanning power=%.2f, time=%dms"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v15, v16

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v15, v10

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v13, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    :cond_16
    move-wide v15, v6

    move-wide/from16 v61, v8

    move-wide/from16 v9, v61

    .line 455
    :goto_10
    :try_start_a
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v6

    .line 456
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    move-wide/from16 v7, v27

    move-wide/from16 v13, v29

    :goto_11
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 457
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Sensor;

    .line 458
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v24

    .line 459
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v25

    .line 460
    move-object/from16 v0, v25

    move-wide/from16 v1, v50

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v11

    const-wide/16 v26, 0x3e8

    div-long v11, v11, v26

    .line 462
    move-object/from16 v0, v25

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v25

    .line 463
    packed-switch v24, :pswitch_data_0

    .line 478
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .line 479
    :goto_12
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 481
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    .line 483
    new-instance v27, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;-><init>(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;Landroid/hardware/Sensor;)V

    .line 484
    if-eqz v6, :cond_17

    invoke-virtual/range {v27 .. v27}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->a()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 485
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getPower()F

    move-result v27

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    .line 486
    long-to-double v0, v11

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    const-wide v29, 0x408f400000000000L    # 1000.0

    div-double v27, v27, v29

    .line 487
    add-double v9, v9, v27

    .line 488
    add-long/2addr v7, v11

    .line 490
    if-eqz v39, :cond_17

    invoke-static/range {v27 .. v28}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v29

    if-nez v29, :cond_17

    .line 491
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v29

    const-string/jumbo v30, "PowerUsageInfo"

    const-string/jumbo v56, "===========sensor %s power=%.2f, count=%d, time=%dms"

    const/16 v57, 0x4

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    new-instance v59, Ljava/lang/StringBuilder;

    const-string/jumbo v60, "info: "

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v57, v58

    const/4 v6, 0x1

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    aput-object v27, v57, v6

    const/4 v6, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v57, v6

    const/4 v6, 0x3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v57, v6

    invoke-static/range {v56 .. v57}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    move-wide/from16 v61, v7

    move-wide/from16 v6, v61

    move-wide/from16 v63, v9

    move-wide/from16 v8, v63

    move-wide/from16 v61, v6

    move-wide/from16 v63, v8

    move-wide/from16 v9, v63

    move-wide/from16 v7, v61

    .line 495
    goto/16 :goto_12

    :catch_0
    move-exception v6

    move-wide v6, v13

    :goto_13
    move-wide/from16 v33, v6

    goto/16 :goto_d

    :catch_1
    move-exception v6

    move-wide v6, v15

    move-wide/from16 v8, v17

    move-wide/from16 v10, v19

    move-wide/from16 v12, v21

    :goto_14
    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    move-wide/from16 v31, v10

    move-wide v8, v12

    goto/16 :goto_e

    :catch_2
    move-exception v6

    move-wide/from16 v6, v23

    :goto_15
    move-wide/from16 v17, v6

    goto/16 :goto_f

    :catch_3
    move-exception v6

    move-wide/from16 v6, v25

    :goto_16
    move-wide v15, v6

    move-wide/from16 v61, v8

    move-wide/from16 v9, v61

    goto/16 :goto_10

    .line 466
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v14, "gps.on"

    invoke-virtual {v13, v14}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v13

    .line 469
    long-to-double v0, v11

    move-wide/from16 v26, v0

    mul-double v13, v13, v26

    const-wide v26, 0x408f400000000000L    # 1000.0

    div-double v13, v13, v26

    .line 470
    add-double/2addr v9, v13

    .line 472
    if-eqz v39, :cond_25

    invoke-static {v13, v14}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v24

    if-nez v24, :cond_25

    .line 473
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v24

    const-string/jumbo v26, "PowerUsageInfo"

    const-string/jumbo v27, "===========gps sensor %s power=%.2f, count=%d, time=%dms"

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v28, v29

    const/4 v6, 0x1

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v28, v6

    const/4 v6, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v28, v6

    const/4 v6, 0x3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v28, v6

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v13, v11

    goto/16 :goto_11

    :cond_18
    move-wide v11, v9

    move-wide v9, v13

    :goto_17
    move-wide v13, v9

    move-wide v9, v11

    .line 501
    goto/16 :goto_11

    .line 503
    :cond_19
    if-eqz v39, :cond_1a

    .line 504
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v11, "PowerUsageInfo"

    const-string/jumbo v12, "############UID=%d,TOTALPOWER=%.2f"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_1a
    const-wide/16 v11, 0x0

    cmpl-double v6, v9, v11

    if-nez v6, :cond_1b

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    if-nez v6, :cond_24

    .line 508
    :cond_1b
    new-instance v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    sget-object v11, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->APP:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const/4 v12, 0x1

    new-array v12, v12, [D

    const/16 v23, 0x0

    aput-wide v9, v12, v23

    invoke-direct {v6, v11, v5, v12}, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;-><init>(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    .line 510
    move-wide/from16 v0, v35

    iput-wide v0, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    .line 511
    iput-wide v13, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    .line 512
    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    .line 513
    move-wide/from16 v0, v37

    iput-wide v0, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    .line 514
    move-wide/from16 v0, v54

    iput-wide v0, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    .line 515
    move-wide/from16 v0, v21

    iput-wide v0, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->j:J

    .line 516
    move-wide/from16 v0, v19

    iput-wide v0, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->k:J

    .line 517
    move-wide/from16 v0, v33

    iput-wide v0, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->n:J

    .line 518
    move-wide/from16 v0, v31

    iput-wide v0, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->m:D

    .line 519
    iput-wide v15, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->l:J

    .line 520
    iput-wide v7, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->o:J

    .line 523
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    const/16 v8, 0x3f2

    if-ne v7, v8, :cond_1d

    .line 524
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :goto_18
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    if-nez v7, :cond_24

    .line 534
    :goto_19
    const-wide/16 v7, 0x0

    cmpl-double v7, v9, v7

    if-eqz v7, :cond_1c

    .line 535
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    const/16 v8, 0x3f2

    if-ne v7, v8, :cond_1f

    .line 536
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->o:D

    add-double/2addr v7, v9

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->o:D

    .line 282
    :cond_1c
    :goto_1a
    add-int/lit8 v5, v40, 0x1

    move/from16 v40, v5

    move-object/from16 v41, v6

    goto/16 :goto_2

    .line 525
    :cond_1d
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    const/16 v8, 0x3ea

    if-ne v7, v8, :cond_1e

    .line 526
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_18

    .line 573
    :catch_4
    move-exception v4

    .line 574
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "PowerUsageInfo"

    invoke-interface {v5, v6, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 528
    :cond_1e
    :try_start_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 537
    :cond_1f
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v7, 0x3ea

    if-ne v5, v7, :cond_20

    .line 538
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->p:D

    add-double/2addr v7, v9

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->p:D

    goto :goto_1a

    .line 540
    :cond_20
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    cmpl-double v5, v9, v7

    if-lez v5, :cond_21

    .line 541
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 542
    :cond_21
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    add-double/2addr v7, v9

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    goto :goto_1a

    .line 550
    :cond_22
    if-eqz v41, :cond_1

    .line 551
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    move/from16 v0, v44

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 553
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move/from16 v0, v44

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    add-long v6, v6, v42

    sub-long/2addr v4, v6

    .line 556
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 558
    long-to-double v6, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v9, "cpu.awake"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    .line 564
    move-object/from16 v0, v41

    iget-wide v8, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    add-long/2addr v4, v8

    move-object/from16 v0, v41

    iput-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    .line 565
    move-object/from16 v0, v41

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    add-double/2addr v4, v6

    move-object/from16 v0, v41

    iput-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    .line 566
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->c:[D

    const/4 v5, 0x0

    aget-wide v8, v4, v5

    add-double/2addr v8, v6

    aput-wide v8, v4, v5

    .line 567
    move-object/from16 v0, v41

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    cmpl-double v4, v4, v8

    if-lez v4, :cond_23

    .line 568
    move-object/from16 v0, v41

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 570
    :cond_23
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    :catch_5
    move-exception v10

    goto/16 :goto_16

    :catch_6
    move-exception v10

    goto/16 :goto_15

    :catch_7
    move-exception v6

    move-wide v6, v15

    move-wide/from16 v10, v19

    move-wide/from16 v12, v21

    goto/16 :goto_14

    :catch_8
    move-exception v14

    goto/16 :goto_14

    :catch_9
    move-exception v8

    goto/16 :goto_13

    :cond_24
    move-object/from16 v6, v41

    goto/16 :goto_19

    :cond_25
    move-wide/from16 v61, v11

    move-wide v11, v9

    move-wide/from16 v9, v61

    goto/16 :goto_17

    :cond_26
    move-wide/from16 v35, v6

    goto/16 :goto_9

    :cond_27
    move-wide v6, v10

    move-object v8, v12

    goto/16 :goto_8

    :cond_28
    move v7, v8

    goto/16 :goto_6

    .line 463
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private g()D
    .locals 14

    .prologue
    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double v2, v0, v2

    .line 588
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double v4, v0, v4

    .line 590
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v6, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v6

    add-long/2addr v6, v0

    .line 593
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v9, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v8

    add-long/2addr v0, v8

    sub-long v8, v0, v6

    .line 595
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    .line 596
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v6

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    div-long v0, v10, v0

    .line 599
    :goto_0
    const-wide/16 v10, 0x8

    div-long/2addr v0, v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v0, v0

    div-double v0, v4, v0

    .line 600
    const-wide v4, 0x40fe848000000000L    # 125000.0

    div-double/2addr v2, v4

    .line 601
    add-long v4, v8, v6

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    .line 602
    long-to-double v4, v6

    mul-double/2addr v0, v4

    long-to-double v4, v8

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    add-long v2, v6, v8

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 609
    :goto_1
    return-wide v0

    .line 596
    :cond_0
    const-wide/32 v0, 0x30d40

    goto :goto_0

    .line 606
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 609
    :catch_0
    move-exception v0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->k:F

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->l:I

    return v0
.end method

.method public final c()Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    return-object v0
.end method

.method public final d()Z
    .locals 14

    .prologue
    .line 159
    const/4 v6, 0x0

    .line 163
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    if-gez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->e()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v0, :cond_1

    .line 169
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    .line 175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->o:D

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->p:D

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->e:J

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string/jumbo v0, "status"

    const/4 v1, -0x1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    :cond_2
    const/4 v0, 0x1

    move v3, v0

    :goto_1
    const-string/jumbo v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    move v1, v0

    :goto_3
    const-string/jumbo v0, "level"

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v0, "scale"

    const/4 v7, -0x1

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    const/4 v7, -0x1

    if-eq v4, v7, :cond_3

    int-to-float v0, v5

    int-to-float v4, v4

    div-float/2addr v0, v4

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "monitor"

    const-string/jumbo v7, "isCharging=%b, usbCharge=%b, acCharge=%b, percent=%f"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v9

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v3

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v2

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f()V

    .line 186
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v7

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v4, v2

    mul-double/2addr v0, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, v0, v4

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->PHONE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    :goto_4
    :try_start_2
    invoke-direct {p0, v7, v8}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->e:J

    sub-long v2, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    const-wide/16 v2, 0x0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "wifi.on"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v9, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v10, "wifi.active"

    invoke-virtual {v9, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    div-double v11, v9, v11

    cmpl-double v11, v0, v11

    if-lez v11, :cond_6

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    div-double v0, v9, v0

    :cond_6
    const-wide/16 v9, 0x0

    mul-long/2addr v4, v9

    long-to-double v4, v4

    mul-double/2addr v4, v0

    long-to-double v9, v2

    mul-double/2addr v0, v9

    add-double/2addr v0, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, v0, v4

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->WIFI:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    iget-wide v9, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->o:D

    add-double/2addr v4, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    :goto_5
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    long-to-double v0, v2

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "bluetooth.on"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v4

    int-to-double v4, v4

    iget-object v9, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v10, "bluetooth.at"

    invoke-virtual {v9, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v4, v9

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v9

    add-double/2addr v4, v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->BLUETOOTH:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    iget-wide v9, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->p:D

    add-double/2addr v4, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, v7, v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "cpu.idle"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "cpu.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    div-double v9, v4, v9

    cmpl-double v9, v0, v9

    if-lez v9, :cond_7

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    div-double v0, v4, v0

    :cond_7
    long-to-double v4, v2

    mul-double/2addr v0, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, v0, v4

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->IDLE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :goto_7
    :try_start_6
    invoke-direct {p0, v7, v8}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b(J)V

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 189
    const/4 v0, 0x1

    .line 190
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_b

    .line 191
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 183
    :cond_8
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_2

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_3

    .line 193
    :cond_b
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    .line 199
    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->a:Landroid/os/BatteryStats$Uid;

    if-nez v3, :cond_c

    .line 200
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 201
    goto :goto_8

    .line 203
    :cond_c
    iget v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->a:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result v4

    if-ne v3, v4, :cond_d

    .line 204
    const/4 v1, 0x1

    .line 206
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "CPU Run Time: ### cpuTime="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", cpuFgTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", wakelockTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-wide v3, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    iget-wide v5, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    div-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    .line 210
    iput v3, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->p:F

    .line 211
    iput v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->k:F

    .line 212
    iput v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->l:I

    .line 213
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    move v0, v1

    .line 220
    :goto_9
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refresh ,mPercentOfTotal:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->k:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",find:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refresh,exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 217
    :cond_d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 218
    goto/16 :goto_8

    .line 222
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v6

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v13, v0

    move v0, v1

    move-object v1, v13

    goto :goto_a

    :catch_3
    move-exception v0

    goto/16 :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_6

    :catch_5
    move-exception v0

    goto/16 :goto_5

    :catch_6
    move-exception v0

    goto/16 :goto_4

    :cond_e
    move v0, v6

    goto :goto_9
.end method
