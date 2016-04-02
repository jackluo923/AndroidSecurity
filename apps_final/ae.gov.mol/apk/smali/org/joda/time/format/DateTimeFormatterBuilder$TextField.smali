.class Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;
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
    name = "TextField"
.end annotation


# static fields
.field private static cParseCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Map",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final iFieldType:Lorg/joda/time/DateTimeFieldType;

.field private final iShort:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1748
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->cParseCache:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lorg/joda/time/DateTimeFieldType;Z)V
    .locals 0

    .prologue
    .line 1754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1755
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    .line 1756
    iput-boolean p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iShort:Z

    .line 1757
    return-void
.end method

.method private print(JLorg/joda/time/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1800
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p3}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1801
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iShort:Z

    if-eqz v1, :cond_0

    .line 1802
    invoke-virtual {v0, p1, p2, p4}, Lorg/joda/time/DateTimeField;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1804
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1, p2, p4}, Lorg/joda/time/DateTimeField;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private print(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1809
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1810
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1811
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iShort:Z

    if-eqz v1, :cond_0

    .line 1812
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getAsShortText(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1817
    :goto_0
    return-object v0

    .line 1814
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getAsText(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1817
    :cond_1
    const-string v0, "\ufffd"

    goto :goto_0
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 1822
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->estimatePrintedLength()I

    move-result v0

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 1760
    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iShort:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .locals 9

    .prologue
    const/16 v8, 0x20

    .line 1827
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 1832
    sget-object v5, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->cParseCache:Ljava/util/Map;

    monitor-enter v5

    .line 1833
    :try_start_0
    sget-object v0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->cParseCache:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1834
    if-nez v0, :cond_6

    .line 1835
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1836
    sget-object v1, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->cParseCache:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 1838
    :goto_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1839
    if-nez v0, :cond_3

    .line 1840
    new-instance v1, Ljava/util/HashSet;

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1841
    new-instance v0, Lorg/joda/time/MutableDateTime;

    const-wide/16 v6, 0x0

    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-direct {v0, v6, v7, v2}, Lorg/joda/time/MutableDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 1842
    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, v2}, Lorg/joda/time/MutableDateTime;->property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/MutableDateTime$Property;

    move-result-object v6

    .line 1843
    invoke-virtual {v6}, Lorg/joda/time/MutableDateTime$Property;->getMinimumValueOverall()I

    move-result v2

    .line 1844
    invoke-virtual {v6}, Lorg/joda/time/MutableDateTime$Property;->getMaximumValueOverall()I

    move-result v7

    .line 1845
    sub-int v0, v7, v2

    if-le v0, v8, :cond_0

    .line 1846
    xor-int/lit8 v0, p3, -0x1

    monitor-exit v5

    .line 1882
    :goto_1
    return v0

    .line 1848
    :cond_0
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    .line 1849
    :goto_2
    if-gt v2, v7, :cond_1

    .line 1850
    invoke-virtual {v6, v2}, Lorg/joda/time/MutableDateTime$Property;->set(I)Lorg/joda/time/MutableDateTime;

    .line 1851
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsShortText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1852
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsShortText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1853
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsShortText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1854
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1855
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1856
    invoke-virtual {v6, v4}, Lorg/joda/time/MutableDateTime$Property;->getAsText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1849
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1858
    :cond_1
    const-string v2, "en"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v6

    if-ne v2, v6, :cond_2

    .line 1860
    const-string v0, "BCE"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1861
    const-string v0, "bce"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1862
    const-string v0, "CE"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1863
    const-string v0, "ce"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1864
    const/4 v0, 0x3

    .line 1866
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v2, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 1867
    iget-object v6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1874
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1875
    :goto_4
    if-le v0, p3, :cond_5

    .line 1876
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1877
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1878
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1, v1, v2, v4}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;Ljava/lang/String;Ljava/util/Locale;)V

    goto/16 :goto_1

    .line 1869
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Set;

    .line 1870
    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 1872
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1875
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1882
    :cond_5
    xor-int/lit8 v0, p3, -0x1

    goto/16 :goto_1

    :cond_6
    move-object v3, v0

    goto/16 :goto_0
.end method

.method public printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1777
    :try_start_0
    invoke-direct {p0, p2, p3, p4, p7}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->print(JLorg/joda/time/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    :goto_0
    return-void

    .line 1778
    :catch_0
    move-exception v0

    .line 1779
    const v0, 0xfffd

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1793
    :try_start_0
    invoke-direct {p0, p2, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->print(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1797
    :goto_0
    return-void

    .line 1794
    :catch_0
    move-exception v0

    .line 1795
    const v0, 0xfffd

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 1767
    :try_start_0
    invoke-direct {p0, p2, p3, p4, p7}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->print(JLorg/joda/time/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1771
    :goto_0
    return-void

    .line 1768
    :catch_0
    move-exception v0

    .line 1769
    const v0, 0xfffd

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 1785
    :try_start_0
    invoke-direct {p0, p2, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TextField;->print(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    :goto_0
    return-void

    .line 1786
    :catch_0
    move-exception v0

    .line 1787
    const v0, 0xfffd

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
