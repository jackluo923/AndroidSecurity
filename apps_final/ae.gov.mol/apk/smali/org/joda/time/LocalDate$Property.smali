.class public final Lorg/joda/time/LocalDate$Property;
.super Lorg/joda/time/field/AbstractReadableInstantFieldProperty;
.source "LocalDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/LocalDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2e79f16311aL


# instance fields
.field private transient iField:Lorg/joda/time/DateTimeField;

.field private transient iInstant:Lorg/joda/time/LocalDate;


# direct methods
.method constructor <init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V
    .locals 0

    .prologue
    .line 1894
    invoke-direct {p0}, Lorg/joda/time/field/AbstractReadableInstantFieldProperty;-><init>()V

    .line 1895
    iput-object p1, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    .line 1896
    iput-object p2, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 1897
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1911
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/LocalDate;

    iput-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    .line 1912
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeFieldType;

    .line 1913
    iget-object v1, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v1}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    .line 1914
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1903
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1904
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1905
    return-void
.end method


# virtual methods
.method public addToCopy(I)Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 1965
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    iget-object v1, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v2}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public addWrapFieldToCopy(I)Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 1980
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    iget-object v1, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v2}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method protected getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 1923
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public getLocalDate()Lorg/joda/time/LocalDate;
    .locals 1

    .prologue
    .line 1951
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    return-object v0
.end method

.method protected getMillis()J
    .locals 2

    .prologue
    .line 1932
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeilingCopy()Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 2081
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    iget-object v1, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v2}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public roundFloorCopy()Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 2067
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    iget-object v1, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v2}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfCeilingCopy()Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 2101
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    iget-object v1, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v2}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfCeiling(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfEvenCopy()Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 2112
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    iget-object v1, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v2}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfEven(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public roundHalfFloorCopy()Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 2091
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    iget-object v1, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v2}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundHalfFloor(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(I)Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 1994
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    iget-object v1, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v2}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;)Lorg/joda/time/LocalDate;
    .locals 1

    .prologue
    .line 2021
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDate$Property;->setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 2008
    iget-object v0, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    iget-object v1, p0, Lorg/joda/time/LocalDate$Property;->iField:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/LocalDate$Property;->iInstant:Lorg/joda/time/LocalDate;

    invoke-virtual {v2}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withMaximumValue()Lorg/joda/time/LocalDate;
    .locals 1

    .prologue
    .line 2040
    invoke-virtual {p0}, Lorg/joda/time/LocalDate$Property;->getMaximumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate$Property;->setCopy(I)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withMinimumValue()Lorg/joda/time/LocalDate;
    .locals 1

    .prologue
    .line 2052
    invoke-virtual {p0}, Lorg/joda/time/LocalDate$Property;->getMinimumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate$Property;->setCopy(I)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method
