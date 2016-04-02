.class public final Lcom/appyet/f/l;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v1, v0, v2

    const-string v1, "EEE, dd MMM yy HH:mm z"

    aput-object v1, v0, v3

    const-string v1, "dd MMM yy HH:mm:ss z"

    aput-object v1, v0, v4

    const-string v1, "dd MMM yy HH:mm z"

    aput-object v1, v0, v5

    sput-object v0, Lcom/appyet/f/l;->b:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSz"

    aput-object v1, v0, v2

    const-string v1, "yyyy-MM-dd\'t\'HH:mm:ss.SSSz"

    aput-object v1, v0, v3

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v1, v0, v4

    const-string v1, "yyyy-MM-dd\'t\'HH:mm:ss.SSS\'z\'"

    aput-object v1, v0, v5

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssz"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "yyyy-MM-dd\'t\'HH:mm:ssz"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "yyyy-MM-dd\'t\'HH:mm:ss\'z\'"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "yyyy-MM-dd\'T\'HH:mmz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "yyyy-MM\'T\'HH:mmz"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "yyyy\'T\'HH:mmz"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "yyyy-MM-dd\'t\'HH:mmz"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "yyyy-MM-dd\'t\'HH:mm\'z\'"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "yyyy-MM-dd"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "yyyy-MM"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "yyyy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/appyet/f/l;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    const-string v0, "Z"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+00:00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    const-string v1, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_2
    sget-object v1, Lcom/appyet/f/l;->c:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/appyet/f/l;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, " UT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    sget-object v1, Lcom/appyet/f/l;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/appyet/f/l;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v1, Lcom/appyet/f/l;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    sget-object v0, Lcom/appyet/f/l;->a:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/appyet/f/l;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T00:00GMT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, p0

    goto :goto_3

    :cond_5
    move v2, v1

    goto/16 :goto_1

    :cond_6
    move-object v0, p0

    goto/16 :goto_0
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v3, v2

    move-object v2, v1

    :goto_1
    if-nez v2, :cond_2

    array-length v4, p0

    if-ge v3, v4, :cond_2

    new-instance v4, Ljava/text/SimpleDateFormat;

    aget-object v5, p0, v3

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setLenient(Z)V

    :try_start_0
    new-instance v5, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v4, v0, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eq v4, v5, :cond_0

    move-object v2, v1

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object v2

    :catch_0
    move-exception v4

    goto :goto_2
.end method
