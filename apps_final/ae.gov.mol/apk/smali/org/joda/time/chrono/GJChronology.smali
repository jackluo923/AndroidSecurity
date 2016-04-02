.class public final Lorg/joda/time/chrono/GJChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "GJChronology.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/GJChronology$LinkedDurationField;,
        Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;,
        Lorg/joda/time/chrono/GJChronology$CutoverField;
    }
.end annotation


# static fields
.field static final DEFAULT_CUTOVER:Lorg/joda/time/Instant;

.field private static final cCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/joda/time/DateTimeZone;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/joda/time/chrono/GJChronology;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2353b2d19aa5d9d7L


# instance fields
.field private iCutoverInstant:Lorg/joda/time/Instant;

.field private iCutoverMillis:J

.field private iGapDuration:J

.field private iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

.field private iJulianChronology:Lorg/joda/time/chrono/JulianChronology;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lorg/joda/time/Instant;

    const-wide v1, -0xb1d069b5400L

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Instant;-><init>(J)V

    sput-object v0, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/GJChronology;->cCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/joda/time/Chronology;Lorg/joda/time/chrono/JulianChronology;Lorg/joda/time/chrono/GregorianChronology;Lorg/joda/time/Instant;)V
    .locals 2

    .prologue
    .line 284
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method private constructor <init>(Lorg/joda/time/chrono/JulianChronology;Lorg/joda/time/chrono/GregorianChronology;Lorg/joda/time/Instant;)V
    .locals 3

    .prologue
    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method static synthetic access$000(Lorg/joda/time/chrono/GJChronology;)J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology;->iGapDuration:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/joda/time/chrono/GJChronology;)Lorg/joda/time/chrono/GregorianChronology;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    return-object v0
.end method

.method private static convertByWeekyear(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 97
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 98
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 99
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 100
    return-wide v0
.end method

.method private static convertByYear(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v1

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v2

    invoke-virtual {p2}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lorg/joda/time/chrono/GJChronology;
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    sget-object v1, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/GJChronology;
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;JI)Lorg/joda/time/chrono/GJChronology;
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    invoke-virtual {v0}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 255
    :goto_0
    invoke-static {p0, v0, p3}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    new-instance v0, Lorg/joda/time/Instant;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/Instant;-><init>(J)V

    goto :goto_0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/chrono/GJChronology;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;
    .locals 8

    .prologue
    .line 190
    const-class v4, Lorg/joda/time/chrono/GJChronology;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v5

    .line 192
    if-nez p1, :cond_1

    .line 193
    sget-object v0, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    move-object v3, v0

    .line 203
    :goto_0
    sget-object v6, Lorg/joda/time/chrono/GJChronology;->cCache:Ljava/util/Map;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :try_start_1
    sget-object v0, Lorg/joda/time/chrono/GJChronology;->cCache:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 205
    if-nez v0, :cond_2

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    sget-object v1, Lorg/joda/time/chrono/GJChronology;->cCache:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne v5, v1, :cond_3

    .line 219
    new-instance v1, Lorg/joda/time/chrono/GJChronology;

    invoke-static {v5, p2}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v2

    invoke-static {v5, p2}, Lorg/joda/time/chrono/GregorianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v5

    invoke-direct {v1, v2, v5, v3}, Lorg/joda/time/chrono/GJChronology;-><init>(Lorg/joda/time/chrono/JulianChronology;Lorg/joda/time/chrono/GregorianChronology;Lorg/joda/time/Instant;)V

    .line 231
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    :goto_2
    monitor-exit v4

    return-object v1

    .line 195
    :cond_1
    :try_start_2
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->toInstant()Lorg/joda/time/Instant;

    move-result-object v0

    .line 196
    new-instance v1, Lorg/joda/time/LocalDate;

    invoke-virtual {v0}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v2

    invoke-static {v5}, Lorg/joda/time/chrono/GregorianChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v6

    invoke-direct {v1, v2, v3, v6}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    .line 197
    invoke-virtual {v1}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v1

    if-gtz v1, :cond_5

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cutover too early. Must be on or after 0001-01-01."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 209
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    add-int/lit8 v2, v1, -0x1

    if-ltz v2, :cond_0

    .line 210
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joda/time/chrono/GJChronology;

    .line 211
    invoke-virtual {v1}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v7

    if-ne p2, v7, :cond_4

    invoke-virtual {v1}, Lorg/joda/time/chrono/GJChronology;->getGregorianCutover()Lorg/joda/time/Instant;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/joda/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 214
    monitor-exit v6

    goto :goto_2

    .line 232
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    :cond_3
    :try_start_5
    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v1, v3, p2}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v2

    .line 225
    new-instance v1, Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2, v5}, Lorg/joda/time/chrono/ZonedChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ZonedChronology;

    move-result-object v3

    iget-object v5, v2, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    iget-object v7, v2, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    iget-object v2, v2, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    invoke-direct {v1, v3, v5, v7, v2}, Lorg/joda/time/chrono/GJChronology;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/chrono/JulianChronology;Lorg/joda/time/chrono/GregorianChronology;Lorg/joda/time/Instant;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move-object v3, v0

    goto/16 :goto_0
.end method

.method public static getInstanceUTC()Lorg/joda/time/chrono/GJChronology;
    .locals 3

    .prologue
    .line 124
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    sget-object v1, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 9

    .prologue
    .line 478
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 480
    const/4 v1, 0x0

    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Lorg/joda/time/chrono/JulianChronology;

    .line 481
    const/4 v1, 0x1

    aget-object v1, v0, v1

    move-object v6, v1

    check-cast v6, Lorg/joda/time/chrono/GregorianChronology;

    .line 482
    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lorg/joda/time/Instant;

    .line 483
    invoke-virtual {v0}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 485
    iput-object v8, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    .line 486
    iput-object v6, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    .line 487
    iput-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    .line 489
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    invoke-virtual {v6}, Lorg/joda/time/chrono/GregorianChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 498
    :cond_1
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    invoke-virtual {p0, v2, v3}, Lorg/joda/time/chrono/GJChronology;->julianToGregorianByYear(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/joda/time/chrono/GJChronology;->iGapDuration:J

    .line 504
    invoke-virtual {p1, v6}, Lorg/joda/time/chrono/AssembledChronology$Fields;->copyFieldsFrom(Lorg/joda/time/Chronology;)V

    .line 510
    invoke-virtual {v6}, Lorg/joda/time/chrono/GregorianChronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-wide v1, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    if-nez v0, :cond_2

    .line 514
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfSecond:Lorg/joda/time/DateTimeField;

    .line 515
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->millisOfDay:Lorg/joda/time/DateTimeField;

    .line 516
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfMinute:Lorg/joda/time/DateTimeField;

    .line 517
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->secondOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->secondOfDay:Lorg/joda/time/DateTimeField;

    .line 518
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfHour:Lorg/joda/time/DateTimeField;

    .line 519
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->minuteOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->minuteOfDay:Lorg/joda/time/DateTimeField;

    .line 520
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfDay:Lorg/joda/time/DateTimeField;

    .line 521
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->hourOfHalfday()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->hourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 522
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->clockhourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfDay:Lorg/joda/time/DateTimeField;

    .line 523
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->clockhourOfHalfday()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->clockhourOfHalfday:Lorg/joda/time/DateTimeField;

    .line 525
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->halfdayOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->halfdayOfDay:Lorg/joda/time/DateTimeField;

    .line 530
    :cond_2
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    .line 539
    invoke-virtual {v6}, Lorg/joda/time/chrono/GregorianChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-wide v1, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v4

    .line 540
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfYear:Lorg/joda/time/DateTimeField;

    .line 545
    invoke-virtual {v6}, Lorg/joda/time/chrono/GregorianChronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-wide v1, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v4

    .line 546
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;JZ)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekOfWeekyear:Lorg/joda/time/DateTimeField;

    .line 554
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    .line 556
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    .line 557
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    iget-wide v5, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfEra:Lorg/joda/time/DateTimeField;

    .line 559
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->years:Lorg/joda/time/DurationField;

    iget-wide v5, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->yearOfCentury:Lorg/joda/time/DateTimeField;

    .line 562
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    .line 564
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuryOfEra:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->centuries:Lorg/joda/time/DurationField;

    .line 566
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    .line 568
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    .line 570
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    const/4 v4, 0x0

    iget-wide v5, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    .line 572
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->weekyearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyears:Lorg/joda/time/DurationField;

    iget-wide v5, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;J)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyearOfCentury:Lorg/joda/time/DateTimeField;

    .line 574
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyears:Lorg/joda/time/DurationField;

    .line 580
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 582
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    iput-object v1, v0, Lorg/joda/time/chrono/GJChronology$CutoverField;->iRangeDurationField:Lorg/joda/time/DurationField;

    .line 583
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->dayOfMonth:Lorg/joda/time/DateTimeField;

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 421
    if-ne p0, p1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    instance-of v2, p1, Lorg/joda/time/chrono/GJChronology;

    if-eqz v2, :cond_3

    .line 425
    check-cast p1, Lorg/joda/time/chrono/GJChronology;

    .line 426
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    iget-wide v4, p1, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 430
    goto :goto_0
.end method

.method public getDateTimeMillis(IIII)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    .line 350
    :cond_0
    return-wide v0

    .line 339
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/chrono/GregorianChronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    .line 341
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 343
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/chrono/JulianChronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    .line 345
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified date does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDateTimeMillis(IIIIIII)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 360
    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v0

    .line 392
    :cond_0
    return-wide v0

    .line 368
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/chrono/GregorianChronology;->getDateTimeMillis(IIIIIII)J
    :try_end_0
    .catch Lorg/joda/time/IllegalFieldValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 382
    :cond_2
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 384
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/chrono/JulianChronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v0

    .line 387
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified date does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 372
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    const/16 v0, 0x1d

    if-eq p3, v0, :cond_4

    .line 373
    :cond_3
    throw v8

    .line 375
    :cond_4
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    const/16 v3, 0x1c

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/chrono/GregorianChronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v0

    .line 378
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 379
    throw v8
.end method

.method public getGregorianCutover()Lorg/joda/time/Instant;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    return-object v0
.end method

.method public getMinimumDaysInFirstWeek()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/GregorianChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    return v0
.end method

.method public getZone()Lorg/joda/time/DateTimeZone;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    goto :goto_0
.end method

.method gregorianToJulianByWeekyear(J)J
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/chrono/GJChronology;->convertByWeekyear(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J

    move-result-wide v0

    return-wide v0
.end method

.method gregorianToJulianByYear(J)J
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/chrono/GJChronology;->convertByYear(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 440
    const-string v0, "GJ"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTimeZone;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    invoke-virtual {v1}, Lorg/joda/time/Instant;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method julianToGregorianByWeekyear(J)J
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/chrono/GJChronology;->convertByWeekyear(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J

    move-result-wide v0

    return-wide v0
.end method

.method julianToGregorianByYear(J)J
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/chrono/GJChronology;->convertByYear(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 452
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x3c

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 453
    const-string v0, "GJChronology"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 455
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    sget-object v0, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    invoke-virtual {v0}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 458
    const-string v0, ",cutover="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 461
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 465
    :goto_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/joda/time/format/DateTimeFormatter;->withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->printTo(Ljava/lang/StringBuffer;J)V

    .line 468
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 469
    const-string v0, ",mdfw="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 472
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 474
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 463
    :cond_2
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    goto :goto_0
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/GJChronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 2

    .prologue
    .line 320
    if-nez p1, :cond_0

    .line 321
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 323
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 326
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object p0

    goto :goto_0
.end method
