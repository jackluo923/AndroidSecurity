.class final Lcom/alipay/android/app/statistic/container/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/android/app/statistic/logfield/LogField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/container/a;->a:Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/alipay/android/app/statistic/logfield/LogField;

    check-cast p2, Lcom/alipay/android/app/statistic/logfield/LogField;

    invoke-virtual {p1}, Lcom/alipay/android/app/statistic/logfield/LogField;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/alipay/android/app/statistic/logfield/LogField;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
