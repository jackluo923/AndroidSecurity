.class public final Lorg/joda/time/chrono/CopticChronology;
.super Lorg/joda/time/chrono/BasicFixedMonthChronology;
.source "CopticChronology.java"


# static fields
.field public static final AM:I = 0x1

.field private static final ERA_FIELD:Lorg/joda/time/DateTimeField;

.field private static final INSTANCE_UTC:Lorg/joda/time/chrono/CopticChronology;

.field private static final MAX_YEAR:I = 0x116bba44

.field private static final MIN_YEAR:I = -0x116bad19

.field private static final cCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/joda/time/DateTimeZone;",
            "[",
            "Lorg/joda/time/chrono/CopticChronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x52e3a9d3f80ef876L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;

    const-string v1, "AM"

    invoke-direct {v0, v1}, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/joda/time/chrono/CopticChronology;->ERA_FIELD:Lorg/joda/time/DateTimeField;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/CopticChronology;->cCache:Ljava/util/Map;

    .line 78
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v0

    sput-object v0, Lorg/joda/time/chrono/CopticChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/CopticChronology;

    .line 79
    return-void
.end method

.method constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicFixedMonthChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 162
    return-void
.end method

.method public static getInstance()Lorg/joda/time/chrono/CopticChronology;
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/CopticChronology;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;
    .locals 11

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p0

    .line 123
    :cond_0
    sget-object v10, Lorg/joda/time/chrono/CopticChronology;->cCache:Ljava/util/Map;

    monitor-enter v10

    .line 124
    :try_start_0
    sget-object v0, Lorg/joda/time/chrono/CopticChronology;->cCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/chrono/CopticChronology;

    .line 125
    if-nez v0, :cond_1

    .line 126
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/joda/time/chrono/CopticChronology;

    .line 127
    sget-object v1, Lorg/joda/time/chrono/CopticChronology;->cCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v9, v0

    .line 130
    add-int/lit8 v0, p1, -0x1

    :try_start_1
    aget-object v0, v9, v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    if-nez v0, :cond_2

    .line 136
    :try_start_2
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p0, v0, :cond_3

    .line 138
    new-instance v8, Lorg/joda/time/chrono/CopticChronology;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1, p1}, Lorg/joda/time/chrono/CopticChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 140
    new-instance v0, Lorg/joda/time/DateTime;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 141
    new-instance v1, Lorg/joda/time/chrono/CopticChronology;

    const/4 v2, 0x0

    invoke-static {v8, v0, v2}, Lorg/joda/time/chrono/LimitChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/ReadableDateTime;Lorg/joda/time/ReadableDateTime;)Lorg/joda/time/chrono/LimitChronology;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/joda/time/chrono/CopticChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    move-object v0, v1

    .line 149
    :goto_0
    add-int/lit8 v1, p1, -0x1

    aput-object v0, v9, v1

    .line 151
    :cond_2
    monitor-exit v10

    .line 152
    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid min days in first week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 145
    :cond_3
    :try_start_3
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0, p1}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v1

    .line 146
    new-instance v0, Lorg/joda/time/chrono/CopticChronology;

    invoke-static {v1, p0}, Lorg/joda/time/chrono/ZonedChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ZonedChronology;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lorg/joda/time/chrono/CopticChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static getInstanceUTC()Lorg/joda/time/chrono/CopticChronology;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/joda/time/chrono/CopticChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/CopticChronology;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v1

    .line 169
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->getMinimumDaysInFirstWeek()I

    move-result v0

    .line 170
    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 171
    :cond_0
    if-nez v1, :cond_1

    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v1, v0}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/CopticChronology;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    invoke-super {p0, p1}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V

    .line 252
    new-instance v0, Lorg/joda/time/field/SkipDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    .line 253
    new-instance v0, Lorg/joda/time/field/SkipDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    .line 255
    sget-object v0, Lorg/joda/time/chrono/CopticChronology;->ERA_FIELD:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    .line 256
    new-instance v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;I)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    .line 257
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    .line 259
    :cond_0
    return-void
.end method

.method calculateFirstDayOfYearMillis(I)J
    .locals 5

    .prologue
    .line 209
    add-int/lit16 v1, p1, -0x697

    .line 211
    if-gtz v1, :cond_1

    .line 214
    add-int/lit8 v0, v1, 0x3

    shr-int/lit8 v0, v0, 0x2

    .line 223
    :cond_0
    :goto_0
    int-to-long v1, v1

    const-wide/16 v3, 0x16d

    mul-long/2addr v1, v3

    int-to-long v3, v0

    add-long v0, v1, v3

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 228
    const-wide v2, 0x516e8ec00L

    add-long/2addr v0, v2

    return-wide v0

    .line 216
    :cond_1
    shr-int/lit8 v0, v1, 0x2

    .line 218
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/CopticChronology;->isLeapYear(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getApproxMillisAtEpochDividedByTwo()J
    .locals 2

    .prologue
    .line 243
    const-wide v0, 0x183322244100L

    return-wide v0
.end method

.method getMaxYear()I
    .locals 1

    .prologue
    .line 238
    const v0, 0x116bba44

    return v0
.end method

.method getMinYear()I
    .locals 1

    .prologue
    .line 233
    const v0, -0x116bad19

    return v0
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lorg/joda/time/chrono/CopticChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/CopticChronology;

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 197
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/CopticChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 200
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lorg/joda/time/chrono/CopticChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/CopticChronology;

    move-result-object p0

    goto :goto_0
.end method
