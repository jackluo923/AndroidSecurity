.class public final Lcom/appyet/g/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appyet/g/b/i;


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/appyet/g/b/d;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/appyet/g/c/b;
    .locals 2

    const-string v0, "dateTime.iso8601"

    sget-object v1, Lcom/appyet/g/b/d;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appyet/g/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/appyet/g/c/b;

    move-result-object v0

    return-object v0
.end method
