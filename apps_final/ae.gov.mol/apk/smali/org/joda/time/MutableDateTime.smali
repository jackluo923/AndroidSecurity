.class public Lorg/joda/time/MutableDateTime;
.super Lorg/joda/time/base/BaseDateTime;
.source "MutableDateTime.java"

# interfaces
.implements Lorg/joda/time/ReadWritableDateTime;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/MutableDateTime$Property;
    }
.end annotation


# static fields
.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_FLOOR:I = 0x1

.field public static final ROUND_HALF_CEILING:I = 0x4

.field public static final ROUND_HALF_EVEN:I = 0x5

.field public static final ROUND_HALF_FLOOR:I = 0x3

.field public static final ROUND_NONE:I = 0x0

.field private static final serialVersionUID:J = 0x2796807cf37e0267L


# instance fields
.field private iRoundingField:Lorg/joda/time/DateTimeField;

.field private iRoundingMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lorg/joda/time/base/BaseDateTime;-><init>()V

    .line 173
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    .prologue
    .line 324
    invoke-direct/range {p0 .. p7}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIII)V

    .line 325
    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 380
    invoke-direct/range {p0 .. p8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 382
    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 351
    invoke-direct/range {p0 .. p8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/DateTimeZone;)V

    .line 353
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDateTime;-><init>(J)V

    .line 211
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 238
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    check-cast v0, Lorg/joda/time/Chronology;

    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 1

    .prologue
    .line 300
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 301
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V

    .line 281
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseDateTime;-><init>(Lorg/joda/time/Chronology;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseDateTime;-><init>(Lorg/joda/time/DateTimeZone;)V

    .line 186
    return-void
.end method

.method public static now()Lorg/joda/time/MutableDateTime;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lorg/joda/time/MutableDateTime;

    invoke-direct {v0}, Lorg/joda/time/MutableDateTime;-><init>()V

    return-object v0
.end method

.method public static now(Lorg/joda/time/Chronology;)Lorg/joda/time/MutableDateTime;
    .locals 2

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Chronology must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    new-instance v0, Lorg/joda/time/MutableDateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/MutableDateTime;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public static now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/MutableDateTime;
    .locals 2

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Zone must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    new-instance v0, Lorg/joda/time/MutableDateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/MutableDateTime;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/MutableDateTime;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->withOffsetParsed()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/MutableDateTime;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/MutableDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/MutableDateTime;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toMutableDateTime()Lorg/joda/time/MutableDateTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 2

    .prologue
    .line 498
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 499
    return-void
.end method

.method public add(Lorg/joda/time/DurationFieldType;I)V
    .locals 3

    .prologue
    .line 637
    if-nez p1, :cond_0

    .line 638
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 641
    return-void
.end method

.method public add(Lorg/joda/time/ReadableDuration;)V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/MutableDateTime;->add(Lorg/joda/time/ReadableDuration;I)V

    .line 511
    return-void
.end method

.method public add(Lorg/joda/time/ReadableDuration;I)V
    .locals 2

    .prologue
    .line 523
    if-eqz p1, :cond_0

    .line 524
    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->add(J)V

    .line 526
    :cond_0
    return-void
.end method

.method public add(Lorg/joda/time/ReadablePeriod;)V
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/MutableDateTime;->add(Lorg/joda/time/ReadablePeriod;I)V

    .line 538
    return-void
.end method

.method public add(Lorg/joda/time/ReadablePeriod;I)V
    .locals 3

    .prologue
    .line 550
    if-eqz p1, :cond_0

    .line 551
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 553
    :cond_0
    return-void
.end method

.method public addDays(I)V
    .locals 3

    .prologue
    .line 765
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 766
    return-void
.end method

.method public addHours(I)V
    .locals 3

    .prologue
    .line 786
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hours()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 787
    return-void
.end method

.method public addMillis(I)V
    .locals 3

    .prologue
    .line 881
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millis()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 882
    return-void
.end method

.method public addMinutes(I)V
    .locals 3

    .prologue
    .line 817
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minutes()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 818
    return-void
.end method

.method public addMonths(I)V
    .locals 3

    .prologue
    .line 703
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 704
    return-void
.end method

.method public addSeconds(I)V
    .locals 3

    .prologue
    .line 848
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->seconds()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 849
    return-void
.end method

.method public addWeeks(I)V
    .locals 3

    .prologue
    .line 724
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 725
    return-void
.end method

.method public addWeekyears(I)V
    .locals 3

    .prologue
    .line 682
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyears()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 683
    return-void
.end method

.method public addYears(I)V
    .locals 3

    .prologue
    .line 661
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 662
    return-void
.end method

.method public centuryOfEra()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1047
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1217
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Clone error"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy()Lorg/joda/time/MutableDateTime;
    .locals 1

    .prologue
    .line 1206
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/MutableDateTime;

    return-object v0
.end method

.method public dayOfMonth()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1121
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfWeek()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1132
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfYear()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1110
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public era()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1038
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public getRoundingField()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lorg/joda/time/MutableDateTime;->iRoundingField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public getRoundingMode()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lorg/joda/time/MutableDateTime;->iRoundingMode:I

    return v0
.end method

.method public hourOfDay()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1142
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public millisOfDay()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1187
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public millisOfSecond()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1196
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public minuteOfDay()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1151
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->minuteOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public minuteOfHour()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1160
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public monthOfYear()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1092
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/MutableDateTime$Property;
    .locals 3

    .prologue
    .line 1022
    if-nez p1, :cond_0

    .line 1023
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1026
    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1027
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_1
    new-instance v1, Lorg/joda/time/MutableDateTime$Property;

    invoke-direct {v1, p0, v0}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v1
.end method

.method public secondOfDay()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1169
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->secondOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public secondOfMinute()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1178
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public set(Lorg/joda/time/DateTimeFieldType;I)V
    .locals 3

    .prologue
    .line 622
    if-nez p1, :cond_0

    .line 623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 626
    return-void
.end method

.method public setChronology(Lorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 564
    invoke-super {p0, p1}, Lorg/joda/time/base/BaseDateTime;->setChronology(Lorg/joda/time/Chronology;)V

    .line 565
    return-void
.end method

.method public setDate(III)V
    .locals 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 933
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    .line 934
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setDate(J)V

    .line 935
    return-void
.end method

.method public setDate(J)V
    .locals 2

    .prologue
    .line 893
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillisOfDay()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 894
    return-void
.end method

.method public setDate(Lorg/joda/time/ReadableInstant;)V
    .locals 4

    .prologue
    .line 907
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    .line 908
    instance-of v2, p1, Lorg/joda/time/ReadableDateTime;

    if-eqz v2, :cond_0

    .line 909
    check-cast p1, Lorg/joda/time/ReadableDateTime;

    .line 910
    invoke-interface {p1}, Lorg/joda/time/ReadableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-static {v2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v2

    .line 911
    invoke-virtual {v2}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v2

    .line 912
    if-eqz v2, :cond_0

    .line 913
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lorg/joda/time/DateTimeZone;->getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J

    move-result-wide v0

    .line 916
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setDate(J)V

    .line 917
    return-void
.end method

.method public setDateTime(IIIIIII)V
    .locals 8

    .prologue
    .line 1007
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide v0

    .line 1009
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 1010
    return-void
.end method

.method public setDayOfMonth(I)V
    .locals 3

    .prologue
    .line 745
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 746
    return-void
.end method

.method public setDayOfWeek(I)V
    .locals 3

    .prologue
    .line 755
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 756
    return-void
.end method

.method public setDayOfYear(I)V
    .locals 3

    .prologue
    .line 735
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 736
    return-void
.end method

.method public setHourOfDay(I)V
    .locals 3

    .prologue
    .line 776
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 777
    return-void
.end method

.method public setMillis(J)V
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lorg/joda/time/MutableDateTime;->iRoundingMode:I

    packed-switch v0, :pswitch_data_0

    .line 474
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Lorg/joda/time/base/BaseDateTime;->setMillis(J)V

    .line 475
    return-void

    .line 458
    :pswitch_1
    iget-object v0, p0, Lorg/joda/time/MutableDateTime;->iRoundingField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide p1

    goto :goto_0

    .line 461
    :pswitch_2
    iget-object v0, p0, Lorg/joda/time/MutableDateTime;->iRoundingField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide p1

    goto :goto_0

    .line 464
    :pswitch_3
    iget-object v0, p0, Lorg/joda/time/MutableDateTime;->iRoundingField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfFloor(J)J

    move-result-wide p1

    goto :goto_0

    .line 467
    :pswitch_4
    iget-object v0, p0, Lorg/joda/time/MutableDateTime;->iRoundingField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfCeiling(J)J

    move-result-wide p1

    goto :goto_0

    .line 470
    :pswitch_5
    iget-object v0, p0, Lorg/joda/time/MutableDateTime;->iRoundingField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfEven(J)J

    move-result-wide p1

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setMillis(Lorg/joda/time/ReadableInstant;)V
    .locals 2

    .prologue
    .line 486
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    .line 487
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 488
    return-void
.end method

.method public setMillisOfDay(I)V
    .locals 3

    .prologue
    .line 859
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 860
    return-void
.end method

.method public setMillisOfSecond(I)V
    .locals 3

    .prologue
    .line 869
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 870
    return-void
.end method

.method public setMinuteOfDay(I)V
    .locals 3

    .prologue
    .line 797
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 798
    return-void
.end method

.method public setMinuteOfHour(I)V
    .locals 3

    .prologue
    .line 807
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 808
    return-void
.end method

.method public setMonthOfYear(I)V
    .locals 3

    .prologue
    .line 693
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 694
    return-void
.end method

.method public setRounding(Lorg/joda/time/DateTimeField;)V
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/MutableDateTime;->setRounding(Lorg/joda/time/DateTimeField;I)V

    .line 419
    return-void
.end method

.method public setRounding(Lorg/joda/time/DateTimeField;I)V
    .locals 3

    .prologue
    .line 436
    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    const/4 v0, 0x5

    if-le p2, v0, :cond_1

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal rounding mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    if-nez p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/joda/time/MutableDateTime;->iRoundingField:Lorg/joda/time/DateTimeField;

    .line 440
    if-nez p1, :cond_2

    const/4 p2, 0x0

    :cond_2
    iput p2, p0, Lorg/joda/time/MutableDateTime;->iRoundingMode:I

    .line 441
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 442
    return-void

    :cond_3
    move-object v0, p1

    .line 439
    goto :goto_0
.end method

.method public setSecondOfDay(I)V
    .locals 3

    .prologue
    .line 828
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 829
    return-void
.end method

.method public setSecondOfMinute(I)V
    .locals 3

    .prologue
    .line 838
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 839
    return-void
.end method

.method public setTime(IIII)V
    .locals 7

    .prologue
    .line 982
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/joda/time/Chronology;->getDateTimeMillis(JIIII)J

    move-result-wide v0

    .line 984
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 985
    return-void
.end method

.method public setTime(J)V
    .locals 4

    .prologue
    .line 946
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/ISOChronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    .line 947
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 948
    return-void
.end method

.method public setTime(Lorg/joda/time/ReadableInstant;)V
    .locals 4

    .prologue
    .line 958
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    .line 959
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v2

    .line 960
    invoke-virtual {v2}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v2

    .line 961
    if-eqz v2, :cond_0

    .line 962
    sget-object v3, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v2, v3, v0, v1}, Lorg/joda/time/DateTimeZone;->getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J

    move-result-wide v0

    .line 964
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setTime(J)V

    .line 965
    return-void
.end method

.method public setWeekOfWeekyear(I)V
    .locals 3

    .prologue
    .line 714
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 715
    return-void
.end method

.method public setWeekyear(I)V
    .locals 3

    .prologue
    .line 672
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 673
    return-void
.end method

.method public setYear(I)V
    .locals 3

    .prologue
    .line 651
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    .line 652
    return-void
.end method

.method public setZone(Lorg/joda/time/DateTimeZone;)V
    .locals 3

    .prologue
    .line 583
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 584
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    .line 585
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 586
    invoke-virtual {v1, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/MutableDateTime;->setChronology(Lorg/joda/time/Chronology;)V

    .line 588
    :cond_0
    return-void
.end method

.method public setZoneRetainFields(Lorg/joda/time/DateTimeZone;)V
    .locals 4

    .prologue
    .line 602
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 603
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-static {v1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v1

    .line 604
    if-ne v0, v1, :cond_0

    .line 611
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/joda/time/DateTimeZone;->getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J

    move-result-wide v1

    .line 609
    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/MutableDateTime;->setChronology(Lorg/joda/time/Chronology;)V

    .line 610
    invoke-virtual {p0, v1, v2}, Lorg/joda/time/MutableDateTime;->setMillis(J)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 1230
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weekOfWeekyear()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1101
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public weekyear()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1083
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public year()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1074
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfCentury()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1056
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfEra()Lorg/joda/time/MutableDateTime$Property;
    .locals 2

    .prologue
    .line 1065
    new-instance v0, Lorg/joda/time/MutableDateTime$Property;

    invoke-virtual {p0}, Lorg/joda/time/MutableDateTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/MutableDateTime$Property;-><init>(Lorg/joda/time/MutableDateTime;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method
