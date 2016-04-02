.class Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;
.super Ljava/lang/Object;
.source "DateTimeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Date"
.end annotation


# instance fields
.field private day:I

.field private month:I

.field private year:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "year"    # Ljava/lang/String;
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->year:Ljava/lang/String;

    .line 107
    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->month:I

    .line 108
    iput p3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->day:I

    .line 109
    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->month:I

    return v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->year:Ljava/lang/String;

    return-object v0
.end method
