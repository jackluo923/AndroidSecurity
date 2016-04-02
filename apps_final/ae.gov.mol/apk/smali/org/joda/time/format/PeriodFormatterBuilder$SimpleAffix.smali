.class Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;
.super Ljava/lang/Object;
.source "PeriodFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleAffix"
.end annotation


# instance fields
.field private final iText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    .line 861
    return-void
.end method


# virtual methods
.method public calculatePrintedLength(I)I
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 876
    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    .line 877
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 878
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    add-int v0, p2, v5

    .line 881
    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, p2, -0x1

    goto :goto_0
.end method

.method public printTo(Ljava/io/Writer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    return-void
.end method

.method public scan(Ljava/lang/String;I)I
    .locals 7

    .prologue
    .line 885
    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;->iText:Ljava/lang/String;

    .line 886
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 887
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    move v2, p2

    .line 889
    :goto_0
    if-ge v2, v6, :cond_1

    .line 890
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    :goto_1
    return v2

    .line 894
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 903
    :cond_1
    :pswitch_0
    xor-int/lit8 v2, p2, -0x1

    goto :goto_1

    .line 889
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 894
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
