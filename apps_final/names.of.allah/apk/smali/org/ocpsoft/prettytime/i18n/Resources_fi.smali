.class public Lorg/ocpsoft/prettytime/i18n/Resources_fi;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static a:[[Ljava/lang/Object;


# instance fields
.field private volatile b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/ocpsoft/prettytime/TimeUnit;",
            "Lorg/ocpsoft/prettytime/TimeFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x54

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "JustNowPattern"

    aput-object v2, v1, v4

    const-string v2, "%u"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "JustNowPastSingularName"

    aput-object v2, v1, v4

    const-string v2, "hetki"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "JustNowFutureSingularName"

    aput-object v2, v1, v4

    const-string v2, "hetken"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "JustNowPastSuffix"

    aput-object v3, v2, v4

    const-string v3, "sitten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "JustNowFutureSuffix"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4\u00e4st\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillisecondPattern"

    aput-object v3, v2, v4

    const-string v3, "%u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillisecondPluralPattern"

    aput-object v3, v2, v4

    const-string v3, "%n %u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillisecondPastSingularName"

    aput-object v3, v2, v4

    const-string v3, "millisekunti"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillisecondPastPluralName"

    aput-object v3, v2, v4

    const-string v3, "millisekuntia"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillisecondFutureSingularName"

    aput-object v3, v2, v4

    const-string v3, "millisekunnin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillisecondPastSuffix"

    aput-object v3, v2, v4

    const-string v3, "sitten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillisecondFutureSuffix"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4\u00e4st\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "SecondPattern"

    aput-object v3, v2, v4

    const-string v3, "%u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "SecondPluralPattern"

    aput-object v3, v2, v4

    const-string v3, "%n %u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "SecondPastSingularName"

    aput-object v3, v2, v4

    const-string v3, "sekunti"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "SecondPastPluralName"

    aput-object v3, v2, v4

    const-string v3, "sekuntia"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "SecondFutureSingularName"

    aput-object v3, v2, v4

    const-string v3, "sekunnin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "SecondPastSuffix"

    aput-object v3, v2, v4

    const-string v3, "sitten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "SecondFutureSuffix"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4\u00e4st\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MinutePattern"

    aput-object v3, v2, v4

    const-string v3, "%u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MinutePluralPattern"

    aput-object v3, v2, v4

    const-string v3, "%n %u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MinutePastSingularName"

    aput-object v3, v2, v4

    const-string v3, "minuutti"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MinutePastPluralName"

    aput-object v3, v2, v4

    const-string v3, "minuuttia"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MinuteFutureSingularName"

    aput-object v3, v2, v4

    const-string v3, "minuutin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MinutePastSuffix"

    aput-object v3, v2, v4

    const-string v3, "sitten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MinuteFutureSuffix"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4\u00e4st\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "HourPattern"

    aput-object v3, v2, v4

    const-string v3, "%u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "HourPluralPattern"

    aput-object v3, v2, v4

    const-string v3, "%n %u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "HourPastSingularName"

    aput-object v3, v2, v4

    const-string v3, "tunti"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "HourPastPluralName"

    aput-object v3, v2, v4

    const-string v3, "tuntia"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "HourFutureSingularName"

    aput-object v3, v2, v4

    const-string v3, "tunnin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "HourPastSuffix"

    aput-object v3, v2, v4

    const-string v3, "sitten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "HourFutureSuffix"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4\u00e4st\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DayPattern"

    aput-object v3, v2, v4

    const-string v3, "%u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DayPluralPattern"

    aput-object v3, v2, v4

    const-string v3, "%n %u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DayPastSingularName"

    aput-object v3, v2, v4

    const-string v3, "eilen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DayPastPluralName"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4iv\u00e4\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DayFutureSingularName"

    aput-object v3, v2, v4

    const-string v3, "huomenna"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DayFuturePluralName"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4iv\u00e4n"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DayPastSuffix"

    aput-object v3, v2, v4

    const-string v3, "sitten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DayFutureSuffix"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4\u00e4st\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "WeekPattern"

    aput-object v3, v2, v4

    const-string v3, "%u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "WeekPluralPattern"

    aput-object v3, v2, v4

    const-string v3, "%n %u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "WeekPastSingularName"

    aput-object v3, v2, v4

    const-string v3, "viikko"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "WeekPastPluralName"

    aput-object v3, v2, v4

    const-string v3, "viikkoa"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "WeekFutureSingularName"

    aput-object v3, v2, v4

    const-string v3, "viikon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "WeekFuturePluralName"

    aput-object v3, v2, v4

    const-string v3, "viikon"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "WeekPastSuffix"

    aput-object v3, v2, v4

    const-string v3, "sitten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "WeekFutureSuffix"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4\u00e4st\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MonthPattern"

    aput-object v3, v2, v4

    const-string v3, "%u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MonthPluralPattern"

    aput-object v3, v2, v4

    const-string v3, "%n %u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MonthPastSingularName"

    aput-object v3, v2, v4

    const-string v3, "kuukausi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MonthPastPluralName"

    aput-object v3, v2, v4

    const-string v3, "kuukautta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MonthFutureSingularName"

    aput-object v3, v2, v4

    const-string v3, "kuukauden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MonthPastSuffix"

    aput-object v3, v2, v4

    const-string v3, "sitten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MonthFutureSuffix"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4\u00e4st\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "YearPattern"

    aput-object v3, v2, v4

    const-string v3, "%u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "YearPluralPattern"

    aput-object v3, v2, v4

    const-string v3, "%n %u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "YearPastSingularName"

    aput-object v3, v2, v4

    const-string v3, "vuosi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "YearPastPluralName"

    aput-object v3, v2, v4

    const-string v3, "vuotta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "YearFutureSingularName"

    aput-object v3, v2, v4

    const-string v3, "vuoden"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "YearPastSuffix"

    aput-object v3, v2, v4

    const-string v3, "sitten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "YearFutureSuffix"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4\u00e4st\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DecadePattern"

    aput-object v3, v2, v4

    const-string v3, "%u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DecadePluralPattern"

    aput-object v3, v2, v4

    const-string v3, "%n %u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DecadePastSingularName"

    aput-object v3, v2, v4

    const-string v3, "vuosikymmen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DecadePastPluralName"

    aput-object v3, v2, v4

    const-string v3, "vuosikymment\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DecadeFutureSingularName"

    aput-object v3, v2, v4

    const-string v3, "vuosikymmenen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DecadePastSuffix"

    aput-object v3, v2, v4

    const-string v3, "sitten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "DecadeFutureSuffix"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4\u00e4st\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "CenturyPattern"

    aput-object v3, v2, v4

    const-string v3, "%u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "CenturyPluralPattern"

    aput-object v3, v2, v4

    const-string v3, "%n %u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "CenturyPastSingularName"

    aput-object v3, v2, v4

    const-string v3, "vuosisata"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "CenturyPastPluralName"

    aput-object v3, v2, v4

    const-string v3, "vuosisataa"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "CenturyFutureSingularName"

    aput-object v3, v2, v4

    const-string v3, "vuosisadan"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "CenturyPastSuffix"

    aput-object v3, v2, v4

    const-string v3, "sitten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "CenturyFutureSuffix"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4\u00e4st\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillenniumPattern"

    aput-object v3, v2, v4

    const-string v3, "%u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillenniumPluralPattern"

    aput-object v3, v2, v4

    const-string v3, "%n %u"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillenniumPastSingularName"

    aput-object v3, v2, v4

    const-string v3, "vuosituhat"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillenniumPastPluralName"

    aput-object v3, v2, v4

    const-string v3, "vuosituhatta"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillenniumFutureSingularName"

    aput-object v3, v2, v4

    const-string v3, "vuosituhannen"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillenniumPastSuffix"

    aput-object v3, v2, v4

    const-string v3, "sitten"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "MillenniumFutureSuffix"

    aput-object v3, v2, v4

    const-string v3, "p\u00e4\u00e4st\u00e4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->a:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->b:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method protected getContents()[[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/ocpsoft/prettytime/i18n/Resources_fi;->a:[[Ljava/lang/Object;

    return-object v0
.end method
