.class public abstract Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field protected static b:Ljava/lang/String;

.field protected static c:Ljava/lang/String;


# instance fields
.field protected a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    sput-object v0, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->b:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->d:[Ljava/lang/String;

    aget-object v0, v0, v1

    sput-object v0, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->a:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/alipay/android/app/statistic/logfield/LogField;)V
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->a:I

    iget v1, p1, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->a:I

    iget v1, p1, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->a:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
