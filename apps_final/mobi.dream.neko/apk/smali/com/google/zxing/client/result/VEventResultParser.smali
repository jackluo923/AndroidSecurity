.class public final Lcom/google/zxing/client/result/VEventResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VEventResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-static {p0, p1, p2, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 6
    .param p0, "prefix"    # Ljava/lang/CharSequence;
    .param p1, "rawText"    # Ljava/lang/String;
    .param p2, "trim"    # Z

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-static {p0, p1, p2, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 104
    :cond_1
    return-object v1

    .line 99
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 100
    .local v2, "size":I
    new-array v1, v2, [Ljava/lang/String;

    .line 101
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 102
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static stripMailto(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 108
    if-eqz p0, :cond_1

    const-string v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MAILTO:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 111
    :cond_1
    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;
    .locals 22
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 33
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/VEventResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v18

    .line 34
    .local v18, "rawText":Ljava/lang/String;
    const-string v2, "BEGIN:VEVENT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 35
    .local v20, "vEventStart":I
    if-gez v20, :cond_0

    .line 36
    const/4 v2, 0x0

    .line 83
    :goto_0
    return-object v2

    .line 39
    :cond_0
    const-string v2, "SUMMARY"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "summary":Ljava/lang/String;
    const-string v2, "DTSTART"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "start":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 42
    const/4 v2, 0x0

    goto :goto_0

    .line 44
    :cond_1
    const-string v2, "DTEND"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "end":Ljava/lang/String;
    const-string v2, "LOCATION"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "location":Ljava/lang/String;
    const-string v2, "ORGANIZER"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "organizer":Ljava/lang/String;
    const-string v2, "ATTENDEE"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, "attendees":[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 50
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    array-length v2, v8

    if-ge v15, v2, :cond_2

    .line 51
    aget-object v2, v8, v15

    invoke-static {v2}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v15

    .line 50
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 54
    .end local v15    # "i":I
    :cond_2
    const-string v2, "DESCRIPTION"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 56
    .local v9, "description":Ljava/lang/String;
    const-string v2, "GEO"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 59
    .local v14, "geoString":Ljava/lang/String;
    if-nez v14, :cond_3

    .line 60
    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    .line 61
    .local v10, "latitude":D
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    .line 73
    .local v12, "longitude":D
    :goto_2
    :try_start_0
    new-instance v2, Lcom/google/zxing/client/result/CalendarParsedResult;

    invoke-direct/range {v2 .. v13}, Lcom/google/zxing/client/result/CalendarParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 82
    :catch_0
    move-exception v16

    .line 83
    .local v16, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 63
    .end local v10    # "latitude":D
    .end local v12    # "longitude":D
    .end local v16    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_3
    const/16 v2, 0x3b

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 65
    .local v19, "semicolon":I
    const/4 v2, 0x0

    :try_start_1
    move/from16 v0, v19

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 66
    .restart local v10    # "latitude":D
    add-int/lit8 v2, v19, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    .restart local v12    # "longitude":D
    goto :goto_2

    .line 67
    .end local v10    # "latitude":D
    .end local v12    # "longitude":D
    :catch_1
    move-exception v17

    .line 68
    .local v17, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1
    .param p1, "x0"    # Lcom/google/zxing/Result;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VEventResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;

    move-result-object v0

    return-object v0
.end method
