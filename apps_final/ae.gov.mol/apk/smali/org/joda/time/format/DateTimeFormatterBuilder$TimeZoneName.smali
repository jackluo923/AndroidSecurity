.class Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/DateTimePrinter;
.implements Lorg/joda/time/format/DateTimeParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneName"
.end annotation


# static fields
.field static final LONG_NAME:I = 0x0

.field static final SHORT_NAME:I = 0x1


# instance fields
.field private final iParseLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private final iType:I


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2478
    iput p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iType:I

    .line 2479
    iput-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iParseLookup:Ljava/util/Map;

    .line 2480
    return-void
.end method

.method private print(JLorg/joda/time/DateTimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2499
    if-nez p3, :cond_0

    .line 2500
    const-string v0, ""

    .line 2508
    :goto_0
    return-object v0

    .line 2502
    :cond_0
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iType:I

    packed-switch v0, :pswitch_data_0

    .line 2508
    const-string v0, ""

    goto :goto_0

    .line 2504
    :pswitch_0
    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/DateTimeZone;->getName(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2506
    :pswitch_1
    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/DateTimeZone;->getShortName(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 2

    .prologue
    .line 2520
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public estimatePrintedLength()I
    .locals 2

    .prologue
    .line 2483
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .locals 7

    .prologue
    .line 2524
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iParseLookup:Ljava/util/Map;

    .line 2525
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 2526
    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2527
    const/4 v2, 0x0

    .line 2528
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2529
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2530
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_4

    :cond_0
    :goto_2
    move-object v2, v0

    .line 2531
    goto :goto_1

    .line 2525
    :cond_1
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->getDefaultTimeZoneNames()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 2535
    :cond_2
    if-eqz v2, :cond_3

    .line 2536
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    invoke-virtual {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->setZone(Lorg/joda/time/DateTimeZone;)V

    .line 2537
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    .line 2539
    :goto_3
    return v0

    :cond_3
    xor-int/lit8 v0, p3, -0x1

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2495
    int-to-long v0, p5

    sub-long v0, p2, v0

    invoke-direct {p0, v0, v1, p6, p7}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->print(JLorg/joda/time/DateTimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2496
    return-void
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2517
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 2489
    int-to-long v0, p5

    sub-long v0, p2, v0

    invoke-direct {p0, v0, v1, p6, p7}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->print(JLorg/joda/time/DateTimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2490
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 2513
    return-void
.end method
