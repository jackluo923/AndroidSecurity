.class public final Lorg/joda/time/Months;
.super Lorg/joda/time/base/BaseSingleFieldPeriod;
.source "Months.java"


# static fields
.field public static final EIGHT:Lorg/joda/time/Months;

.field public static final ELEVEN:Lorg/joda/time/Months;

.field public static final FIVE:Lorg/joda/time/Months;

.field public static final FOUR:Lorg/joda/time/Months;

.field public static final MAX_VALUE:Lorg/joda/time/Months;

.field public static final MIN_VALUE:Lorg/joda/time/Months;

.field public static final NINE:Lorg/joda/time/Months;

.field public static final ONE:Lorg/joda/time/Months;

.field private static final PARSER:Lorg/joda/time/format/PeriodFormatter;

.field public static final SEVEN:Lorg/joda/time/Months;

.field public static final SIX:Lorg/joda/time/Months;

.field public static final TEN:Lorg/joda/time/Months;

.field public static final THREE:Lorg/joda/time/Months;

.field public static final TWELVE:Lorg/joda/time/Months;

.field public static final TWO:Lorg/joda/time/Months;

.field public static final ZERO:Lorg/joda/time/Months;

.field private static final serialVersionUID:J = 0x136f3c648994183L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->ZERO:Lorg/joda/time/Months;

    .line 47
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->ONE:Lorg/joda/time/Months;

    .line 49
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->TWO:Lorg/joda/time/Months;

    .line 51
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->THREE:Lorg/joda/time/Months;

    .line 53
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->FOUR:Lorg/joda/time/Months;

    .line 55
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->FIVE:Lorg/joda/time/Months;

    .line 57
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->SIX:Lorg/joda/time/Months;

    .line 59
    new-instance v0, Lorg/joda/time/Months;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->SEVEN:Lorg/joda/time/Months;

    .line 61
    new-instance v0, Lorg/joda/time/Months;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->EIGHT:Lorg/joda/time/Months;

    .line 63
    new-instance v0, Lorg/joda/time/Months;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->NINE:Lorg/joda/time/Months;

    .line 65
    new-instance v0, Lorg/joda/time/Months;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->TEN:Lorg/joda/time/Months;

    .line 67
    new-instance v0, Lorg/joda/time/Months;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->ELEVEN:Lorg/joda/time/Months;

    .line 69
    new-instance v0, Lorg/joda/time/Months;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->TWELVE:Lorg/joda/time/Months;

    .line 71
    new-instance v0, Lorg/joda/time/Months;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->MAX_VALUE:Lorg/joda/time/Months;

    .line 73
    new-instance v0, Lorg/joda/time/Months;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/Months;-><init>(I)V

    sput-object v0, Lorg/joda/time/Months;->MIN_VALUE:Lorg/joda/time/Months;

    .line 76
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/PeriodType;->months()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/Months;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;-><init>(I)V

    .line 212
    return-void
.end method

.method public static months(I)Lorg/joda/time/Months;
    .locals 1

    .prologue
    .line 90
    sparse-switch p0, :sswitch_data_0

    .line 122
    new-instance v0, Lorg/joda/time/Months;

    invoke-direct {v0, p0}, Lorg/joda/time/Months;-><init>(I)V

    :goto_0
    return-object v0

    .line 92
    :sswitch_0
    sget-object v0, Lorg/joda/time/Months;->ZERO:Lorg/joda/time/Months;

    goto :goto_0

    .line 94
    :sswitch_1
    sget-object v0, Lorg/joda/time/Months;->ONE:Lorg/joda/time/Months;

    goto :goto_0

    .line 96
    :sswitch_2
    sget-object v0, Lorg/joda/time/Months;->TWO:Lorg/joda/time/Months;

    goto :goto_0

    .line 98
    :sswitch_3
    sget-object v0, Lorg/joda/time/Months;->THREE:Lorg/joda/time/Months;

    goto :goto_0

    .line 100
    :sswitch_4
    sget-object v0, Lorg/joda/time/Months;->FOUR:Lorg/joda/time/Months;

    goto :goto_0

    .line 102
    :sswitch_5
    sget-object v0, Lorg/joda/time/Months;->FIVE:Lorg/joda/time/Months;

    goto :goto_0

    .line 104
    :sswitch_6
    sget-object v0, Lorg/joda/time/Months;->SIX:Lorg/joda/time/Months;

    goto :goto_0

    .line 106
    :sswitch_7
    sget-object v0, Lorg/joda/time/Months;->SEVEN:Lorg/joda/time/Months;

    goto :goto_0

    .line 108
    :sswitch_8
    sget-object v0, Lorg/joda/time/Months;->EIGHT:Lorg/joda/time/Months;

    goto :goto_0

    .line 110
    :sswitch_9
    sget-object v0, Lorg/joda/time/Months;->NINE:Lorg/joda/time/Months;

    goto :goto_0

    .line 112
    :sswitch_a
    sget-object v0, Lorg/joda/time/Months;->TEN:Lorg/joda/time/Months;

    goto :goto_0

    .line 114
    :sswitch_b
    sget-object v0, Lorg/joda/time/Months;->ELEVEN:Lorg/joda/time/Months;

    goto :goto_0

    .line 116
    :sswitch_c
    sget-object v0, Lorg/joda/time/Months;->TWELVE:Lorg/joda/time/Months;

    goto :goto_0

    .line 118
    :sswitch_d
    sget-object v0, Lorg/joda/time/Months;->MAX_VALUE:Lorg/joda/time/Months;

    goto :goto_0

    .line 120
    :sswitch_e
    sget-object v0, Lorg/joda/time/Months;->MIN_VALUE:Lorg/joda/time/Months;

    goto :goto_0

    .line 90
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_e
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x7fffffff -> :sswitch_d
    .end sparse-switch
.end method

.method public static monthsBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Months;
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 139
    invoke-static {v0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object v0

    return-object v0
.end method

.method public static monthsBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Months;
    .locals 5

    .prologue
    .line 155
    instance-of v0, p0, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    check-cast p1, Lorg/joda/time/LocalDate;

    invoke-virtual {p1}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    check-cast p0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result v0

    .line 159
    invoke-static {v0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 161
    :cond_0
    sget-object v0, Lorg/joda/time/Months;->ZERO:Lorg/joda/time/Months;

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePeriod;)I

    move-result v0

    .line 162
    invoke-static {v0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object v0

    goto :goto_0
.end method

.method public static monthsIn(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Months;
    .locals 3

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 176
    sget-object v0, Lorg/joda/time/Months;->ZERO:Lorg/joda/time/Months;

    .line 179
    :goto_0
    return-object v0

    .line 178
    :cond_0
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStart()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEnd()Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 179
    invoke-static {v0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseMonths(Ljava/lang/String;)Lorg/joda/time/Months;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 196
    sget-object v0, Lorg/joda/time/Months;->ZERO:Lorg/joda/time/Months;

    .line 199
    :goto_0
    return-object v0

    .line 198
    :cond_0
    sget-object v0, Lorg/joda/time/Months;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    invoke-virtual {v0, p0}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lorg/joda/time/Period;->getMonths()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object v0

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dividedBy(I)Lorg/joda/time/Months;
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 343
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    div-int/2addr v0, p1

    invoke-static {v0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object p0

    goto :goto_0
.end method

.method public getFieldType()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getMonths()I
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    return v0
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lorg/joda/time/PeriodType;->months()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public isGreaterThan(Lorg/joda/time/Months;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 365
    if-nez p1, :cond_2

    .line 366
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v2

    if-lez v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 366
    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Months;->getValue()I

    move-result v3

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isLessThan(Lorg/joda/time/Months;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    if-nez p1, :cond_2

    .line 379
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v2

    if-gez v2, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 379
    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Months;->getValue()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public minus(I)Lorg/joda/time/Months;
    .locals 1

    .prologue
    .line 296
    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Months;->plus(I)Lorg/joda/time/Months;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/Months;)Lorg/joda/time/Months;
    .locals 1

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 312
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Months;->minus(I)Lorg/joda/time/Months;

    move-result-object p0

    goto :goto_0
.end method

.method public multipliedBy(I)Lorg/joda/time/Months;
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object v0

    return-object v0
.end method

.method public negated()Lorg/joda/time/Months;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object v0

    return-object v0
.end method

.method public plus(I)Lorg/joda/time/Months;
    .locals 1

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 266
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Months;->months(I)Lorg/joda/time/Months;

    move-result-object p0

    goto :goto_0
.end method

.method public plus(Lorg/joda/time/Months;)Lorg/joda/time/Months;
    .locals 1

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 282
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Months;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Months;->plus(I)Lorg/joda/time/Months;

    move-result-object p0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Months;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
