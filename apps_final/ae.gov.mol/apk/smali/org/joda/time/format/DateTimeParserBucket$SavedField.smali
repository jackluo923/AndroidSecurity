.class Lorg/joda/time/format/DateTimeParserBucket$SavedField;
.super Ljava/lang/Object;
.source "DateTimeParserBucket.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeParserBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/joda/time/format/DateTimeParserBucket$SavedField;",
        ">;"
    }
.end annotation


# instance fields
.field final iField:Lorg/joda/time/DateTimeField;

.field final iLocale:Ljava/util/Locale;

.field final iText:Ljava/lang/String;

.field final iValue:I


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeField;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iField:Lorg/joda/time/DateTimeField;

    .line 469
    iput p2, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iValue:I

    .line 470
    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iText:Ljava/lang/String;

    .line 471
    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iLocale:Ljava/util/Locale;

    .line 472
    return-void
.end method

.method constructor <init>(Lorg/joda/time/DateTimeField;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iField:Lorg/joda/time/DateTimeField;

    .line 476
    const/4 v0, 0x0

    iput v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iValue:I

    .line 477
    iput-object p2, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iText:Ljava/lang/String;

    .line 478
    iput-object p3, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iLocale:Ljava/util/Locale;

    .line 479
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 461
    check-cast p1, Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->compareTo(Lorg/joda/time/format/DateTimeParserBucket$SavedField;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/joda/time/format/DateTimeParserBucket$SavedField;)I
    .locals 3

    .prologue
    .line 499
    iget-object v1, p1, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iField:Lorg/joda/time/DateTimeField;

    .line 500
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->getRangeDurationField()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/joda/time/format/DateTimeParserBucket;->compareReverse(Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)I

    move-result v0

    .line 502
    if-eqz v0, :cond_0

    .line 505
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeParserBucket;->compareReverse(Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)I

    move-result v0

    goto :goto_0
.end method

.method set(JZ)J
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iText:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iField:Lorg/joda/time/DateTimeField;

    iget v1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iValue:I

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 487
    :goto_0
    if-eqz p3, :cond_0

    .line 488
    iget-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v0

    .line 490
    :cond_0
    return-wide v0

    .line 485
    :cond_1
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iField:Lorg/joda/time/DateTimeField;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iText:Ljava/lang/String;

    iget-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->iLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    goto :goto_0
.end method
