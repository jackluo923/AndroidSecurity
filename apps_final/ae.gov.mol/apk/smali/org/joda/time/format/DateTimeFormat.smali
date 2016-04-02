.class public Lorg/joda/time/format/DateTimeFormat;
.super Ljava/lang/Object;
.source "DateTimeFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/DateTimeFormat$StyleFormatter;
    }
.end annotation


# static fields
.field static final DATE:I = 0x0

.field static final DATETIME:I = 0x2

.field static final FULL:I = 0x0

.field static final LONG:I = 0x1

.field static final MEDIUM:I = 0x2

.field static final NONE:I = 0x4

.field private static final PATTERN_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/format/DateTimeFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATTERN_CACHE_SIZE:I = 0x1f4

.field static final SHORT:I = 0x3

.field private static final STYLE_CACHE:[Lorg/joda/time/format/DateTimeFormatter;

.field static final TIME:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lorg/joda/time/format/DateTimeFormat$1;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/joda/time/format/DateTimeFormat$1;-><init>(I)V

    sput-object v0, Lorg/joda/time/format/DateTimeFormat;->PATTERN_CACHE:Ljava/util/Map;

    .line 160
    const/16 v0, 0x19

    new-array v0, v0, [Lorg/joda/time/format/DateTimeFormatter;

    sput-object v0, Lorg/joda/time/format/DateTimeFormat;->STYLE_CACHE:[Lorg/joda/time/format/DateTimeFormatter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    return-void
.end method

.method static appendPatternTo(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 388
    invoke-static {p0, p1}, Lorg/joda/time/format/DateTimeFormat;->parsePatternTo(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method private static createDateTimeFormatter(II)Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 754
    const/4 v0, 0x2

    .line 755
    if-ne p0, v1, :cond_1

    .line 756
    const/4 v0, 0x1

    .line 760
    :cond_0
    :goto_0
    new-instance v1, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;

    invoke-direct {v1, p0, p1, v0}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;-><init>(III)V

    .line 761
    new-instance v0, Lorg/joda/time/format/DateTimeFormatter;

    invoke-direct {v0, v1, v1}, Lorg/joda/time/format/DateTimeFormatter;-><init>(Lorg/joda/time/format/DateTimePrinter;Lorg/joda/time/format/DateTimeParser;)V

    return-object v0

    .line 757
    :cond_1
    if-ne p1, v1, :cond_0

    .line 758
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createFormatterForPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 3

    .prologue
    .line 685
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 686
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pattern specification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_1
    sget-object v1, Lorg/joda/time/format/DateTimeFormat;->PATTERN_CACHE:Ljava/util/Map;

    monitor-enter v1

    .line 690
    :try_start_0
    sget-object v0, Lorg/joda/time/format/DateTimeFormat;->PATTERN_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimeFormatter;

    .line 691
    if-nez v0, :cond_2

    .line 692
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 693
    invoke-static {v0, p0}, Lorg/joda/time/format/DateTimeFormat;->parsePatternTo(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 696
    sget-object v2, Lorg/joda/time/format/DateTimeFormat;->PATTERN_CACHE:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_2
    monitor-exit v1

    .line 699
    return-object v0

    .line 698
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static createFormatterForStyle(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 712
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 713
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style specification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->selectStyle(C)I

    move-result v0

    .line 716
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->selectStyle(C)I

    move-result v1

    .line 717
    if-ne v0, v2, :cond_2

    if-ne v1, v2, :cond_2

    .line 718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style \'--\' is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_2
    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;
    .locals 4

    .prologue
    .line 731
    shl-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p0

    add-int v1, v0, p1

    .line 733
    sget-object v0, Lorg/joda/time/format/DateTimeFormat;->STYLE_CACHE:[Lorg/joda/time/format/DateTimeFormatter;

    array-length v0, v0

    if-lt v1, v0, :cond_0

    .line 734
    invoke-static {p0, p1}, Lorg/joda/time/format/DateTimeFormat;->createDateTimeFormatter(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 744
    :goto_0
    return-object v0

    .line 737
    :cond_0
    sget-object v2, Lorg/joda/time/format/DateTimeFormat;->STYLE_CACHE:[Lorg/joda/time/format/DateTimeFormatter;

    monitor-enter v2

    .line 738
    :try_start_0
    sget-object v0, Lorg/joda/time/format/DateTimeFormat;->STYLE_CACHE:[Lorg/joda/time/format/DateTimeFormatter;

    aget-object v0, v0, v1

    .line 739
    if-nez v0, :cond_1

    .line 740
    invoke-static {p0, p1}, Lorg/joda/time/format/DateTimeFormat;->createDateTimeFormatter(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 741
    sget-object v3, Lorg/joda/time/format/DateTimeFormat;->STYLE_CACHE:[Lorg/joda/time/format/DateTimeFormatter;

    aput-object v0, v3, v1

    .line 743
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 181
    invoke-static {p0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static forStyle(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 205
    invoke-static {p0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyle(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static fullDate()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 352
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static fullDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 376
    invoke-static {v0, v0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static fullTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 364
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static isNumericToken(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 643
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 644
    if-lez v2, :cond_0

    .line 645
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 646
    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 673
    :goto_0
    :sswitch_0
    return v0

    .line 667
    :sswitch_1
    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 646
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0x46 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4b -> :sswitch_0
        0x4d -> :sswitch_1
        0x53 -> :sswitch_0
        0x57 -> :sswitch_0
        0x59 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6b -> :sswitch_0
        0x6d -> :sswitch_0
        0x73 -> :sswitch_0
        0x77 -> :sswitch_0
        0x78 -> :sswitch_0
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method public static longDate()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static longDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 339
    invoke-static {v0, v0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static longTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 327
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static mediumDate()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 278
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static mediumDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 302
    invoke-static {v0, v0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static mediumTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static parsePatternTo(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 411
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 412
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 414
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    .line 415
    const/4 v1, 0x0

    aput v0, v7, v1

    .line 416
    invoke-static {p1, v7}, Lorg/joda/time/format/DateTimeFormat;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    .line 417
    const/4 v1, 0x0

    aget v8, v7, v1

    .line 419
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 420
    if-nez v1, :cond_1

    .line 574
    :cond_0
    return-void

    .line 423
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 425
    sparse-switch v2, :sswitch_data_0

    .line 570
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal pattern component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    :sswitch_0
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendEraText()Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 414
    :goto_1
    add-int/lit8 v0, v8, 0x1

    goto :goto_0

    .line 430
    :sswitch_1
    invoke-virtual {p0, v1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendCenturyOfEra(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_1

    .line 435
    :sswitch_2
    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    .line 436
    const/4 v0, 0x1

    .line 439
    add-int/lit8 v1, v8, 0x1

    if-ge v1, v6, :cond_3

    .line 440
    const/4 v1, 0x0

    aget v3, v7, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v7, v1

    .line 441
    invoke-static {p1, v7}, Lorg/joda/time/format/DateTimeFormat;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/joda/time/format/DateTimeFormat;->isNumericToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    const/4 v0, 0x0

    .line 447
    :cond_2
    const/4 v1, 0x0

    aget v3, v7, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v7, v1

    .line 451
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 459
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    invoke-virtual {p0, v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTwoDigitYear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_1

    .line 453
    :pswitch_0
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getWeekyear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    invoke-virtual {p0, v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTwoDigitWeekyear(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_1

    .line 464
    :cond_4
    const/16 v0, 0x9

    .line 467
    add-int/lit8 v3, v8, 0x1

    if-ge v3, v6, :cond_6

    .line 468
    const/4 v3, 0x0

    aget v4, v7, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v7, v3

    .line 469
    invoke-static {p1, v7}, Lorg/joda/time/format/DateTimeFormat;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/joda/time/format/DateTimeFormat;->isNumericToken(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 473
    :cond_5
    const/4 v3, 0x0

    aget v4, v7, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v7, v3

    .line 476
    :cond_6
    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    .line 484
    :sswitch_3
    invoke-virtual {p0, v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendYearOfEra(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_1

    .line 478
    :sswitch_4
    invoke-virtual {p0, v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendWeekyear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_1

    .line 481
    :sswitch_5
    invoke-virtual {p0, v1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendYear(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_1

    .line 490
    :sswitch_6
    const/4 v0, 0x3

    if-lt v1, v0, :cond_8

    .line 491
    const/4 v0, 0x4

    if-lt v1, v0, :cond_7

    .line 492
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMonthOfYearText()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 494
    :cond_7
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMonthOfYearShortText()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 497
    :cond_8
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMonthOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 501
    :sswitch_7
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 504
    :sswitch_8
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendHalfdayOfDayText()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 507
    :sswitch_9
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendClockhourOfHalfday(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 510
    :sswitch_a
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendHourOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 513
    :sswitch_b
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendClockhourOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 516
    :sswitch_c
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendHourOfHalfday(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 519
    :sswitch_d
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMinuteOfHour(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 522
    :sswitch_e
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSecondOfMinute(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 525
    :sswitch_f
    invoke-virtual {p0, v1, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendFractionOfSecond(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 528
    :sswitch_10
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 531
    :sswitch_11
    const/4 v0, 0x4

    if-lt v1, v0, :cond_9

    .line 532
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeekText()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 534
    :cond_9
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeekShortText()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 538
    :sswitch_12
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 541
    :sswitch_13
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendWeekOfWeekyear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 544
    :sswitch_14
    const/4 v0, 0x4

    if-lt v1, v0, :cond_a

    .line 545
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneName()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 547
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneShortName(Ljava/util/Map;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 551
    :sswitch_15
    const/4 v0, 0x1

    if-ne v1, v0, :cond_b

    .line 552
    const/4 v1, 0x0

    const-string v2, "Z"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneOffset(Ljava/lang/String;Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 553
    :cond_b
    const/4 v0, 0x2

    if-ne v1, v0, :cond_c

    .line 554
    const/4 v1, 0x0

    const-string v2, "Z"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneOffset(Ljava/lang/String;Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 556
    :cond_c
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendTimeZoneId()Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 560
    :sswitch_16
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 562
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 566
    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_1

    .line 425
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_16
        0x43 -> :sswitch_1
        0x44 -> :sswitch_12
        0x45 -> :sswitch_11
        0x47 -> :sswitch_0
        0x48 -> :sswitch_a
        0x4b -> :sswitch_c
        0x4d -> :sswitch_6
        0x53 -> :sswitch_f
        0x59 -> :sswitch_2
        0x5a -> :sswitch_15
        0x61 -> :sswitch_8
        0x64 -> :sswitch_7
        0x65 -> :sswitch_10
        0x68 -> :sswitch_9
        0x6b -> :sswitch_b
        0x6d -> :sswitch_d
        0x73 -> :sswitch_e
        0x77 -> :sswitch_13
        0x78 -> :sswitch_2
        0x79 -> :sswitch_2
        0x7a -> :sswitch_14
    .end sparse-switch

    .line 451
    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch

    .line 476
    :sswitch_data_1
    .sparse-switch
        0x59 -> :sswitch_3
        0x78 -> :sswitch_4
        0x79 -> :sswitch_5
    .end sparse-switch
.end method

.method private static parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x61

    const/16 v9, 0x5a

    const/16 v8, 0x41

    const/16 v7, 0x27

    const/4 v1, 0x0

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    aget v2, p1, v1

    .line 588
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 590
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 591
    if-lt v0, v8, :cond_0

    if-le v0, v9, :cond_1

    :cond_0
    if-lt v0, v10, :cond_2

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_2

    .line 594
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v4, :cond_8

    .line 597
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 598
    if-ne v5, v0, :cond_8

    .line 599
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 600
    add-int/lit8 v2, v2, 0x1

    .line 604
    goto :goto_0

    .line 607
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 611
    :goto_1
    if-ge v2, v4, :cond_8

    .line 612
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 614
    if-ne v5, v7, :cond_5

    .line 615
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v4, :cond_3

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_3

    .line 617
    add-int/lit8 v2, v2, 0x1

    .line 618
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 611
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 620
    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    .line 622
    :cond_5
    if-nez v0, :cond_9

    if-lt v5, v8, :cond_6

    if-le v5, v9, :cond_7

    :cond_6
    if-lt v5, v10, :cond_9

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_9

    .line 624
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 632
    :cond_8
    aput v2, p1, v1

    .line 633
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 627
    :cond_9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static patternForStyle(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    invoke-static {p0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyle(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 224
    if-nez p1, :cond_0

    .line 225
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 228
    :cond_0
    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->getPrinter()Lorg/joda/time/format/DateTimePrinter;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;

    invoke-virtual {v0, p1}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getPattern(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static selectStyle(C)I
    .locals 3

    .prologue
    .line 771
    sparse-switch p0, :sswitch_data_0

    .line 783
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :sswitch_0
    const/4 v0, 0x3

    .line 781
    :goto_0
    return v0

    .line 775
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 777
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 779
    :sswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 781
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 771
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_4
        0x46 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public static shortDate()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static shortDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 265
    invoke-static {v0, v0}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static shortTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 2

    .prologue
    .line 253
    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeFormat;->createFormatterForStyleIndex(II)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
