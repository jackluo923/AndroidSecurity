.class public final Lorg/joda/time/Duration;
.super Lorg/joda/time/base/BaseDuration;
.source "Duration.java"

# interfaces
.implements Lorg/joda/time/ReadableDuration;
.implements Ljava/io/Serializable;


# static fields
.field public static final ZERO:Lorg/joda/time/Duration;

.field private static final serialVersionUID:J = 0x23f7a51ced6L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lorg/joda/time/Duration;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Duration;-><init>(J)V

    sput-object v0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDuration;-><init>(J)V

    .line 177
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joda/time/base/BaseDuration;-><init>(JJ)V

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseDuration;-><init>(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDuration;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    .line 199
    return-void
.end method

.method public static millis(J)Lorg/joda/time/Duration;
    .locals 2

    .prologue
    .line 163
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    .line 166
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/Duration;-><init>(J)V

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/Duration;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lorg/joda/time/Duration;

    invoke-direct {v0, p0}, Lorg/joda/time/Duration;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static standardDays(J)Lorg/joda/time/Duration;
    .locals 3

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    .line 84
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    const v1, 0x5265c00

    invoke-static {p0, p1, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Duration;-><init>(J)V

    goto :goto_0
.end method

.method public static standardHours(J)Lorg/joda/time/Duration;
    .locals 3

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    .line 107
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    const v1, 0x36ee80

    invoke-static {p0, p1, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Duration;-><init>(J)V

    goto :goto_0
.end method

.method public static standardMinutes(J)Lorg/joda/time/Duration;
    .locals 3

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    const v1, 0xea60

    invoke-static {p0, p1, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Duration;-><init>(J)V

    goto :goto_0
.end method

.method public static standardSeconds(J)Lorg/joda/time/Duration;
    .locals 3

    .prologue
    .line 149
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    .line 152
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    const/16 v1, 0x3e8

    invoke-static {p0, p1, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Duration;-><init>(J)V

    goto :goto_0
.end method


# virtual methods
.method public getStandardDays()J
    .locals 4

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStandardHours()J
    .locals 4

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStandardMinutes()J
    .locals 4

    .prologue
    .line 265
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStandardSeconds()J
    .locals 4

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public minus(J)Lorg/joda/time/Duration;
    .locals 1

    .prologue
    .line 454
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/Duration;->withDurationAdded(JI)Lorg/joda/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Duration;
    .locals 3

    .prologue
    .line 467
    if-nez p1, :cond_0

    .line 470
    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/joda/time/Duration;->withDurationAdded(JI)Lorg/joda/time/Duration;

    move-result-object p0

    goto :goto_0
.end method

.method public plus(J)Lorg/joda/time/Duration;
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/Duration;->withDurationAdded(JI)Lorg/joda/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Duration;
    .locals 3

    .prologue
    .line 438
    if-nez p1, :cond_0

    .line 441
    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/joda/time/Duration;->withDurationAdded(JI)Lorg/joda/time/Duration;

    move-result-object p0

    goto :goto_0
.end method

.method public toDuration()Lorg/joda/time/Duration;
    .locals 0

    .prologue
    .line 293
    return-object p0
.end method

.method public toStandardDays()Lorg/joda/time/Days;
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getStandardDays()J

    move-result-wide v0

    .line 311
    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object v0

    return-object v0
.end method

.method public toStandardHours()Lorg/joda/time/Hours;
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getStandardHours()J

    move-result-wide v0

    .line 328
    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public toStandardMinutes()Lorg/joda/time/Minutes;
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getStandardMinutes()J

    move-result-wide v0

    .line 345
    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method

.method public toStandardSeconds()Lorg/joda/time/Seconds;
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getStandardSeconds()J

    move-result-wide v0

    .line 361
    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method

.method public withDurationAdded(JI)Lorg/joda/time/Duration;
    .locals 4

    .prologue
    .line 389
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-object p0

    .line 392
    :cond_1
    invoke-static {p1, p2, p3}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v0

    .line 393
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 394
    new-instance p0, Lorg/joda/time/Duration;

    invoke-direct {p0, v0, v1}, Lorg/joda/time/Duration;-><init>(J)V

    goto :goto_0
.end method

.method public withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/Duration;
    .locals 2

    .prologue
    .line 408
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/joda/time/Duration;->withDurationAdded(JI)Lorg/joda/time/Duration;

    move-result-object p0

    goto :goto_0
.end method

.method public withMillis(J)Lorg/joda/time/Duration;
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lorg/joda/time/Duration;

    invoke-direct {p0, p1, p2}, Lorg/joda/time/Duration;-><init>(J)V

    goto :goto_0
.end method
