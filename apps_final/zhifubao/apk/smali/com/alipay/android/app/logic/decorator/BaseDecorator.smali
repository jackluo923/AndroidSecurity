.class public abstract Lcom/alipay/android/app/logic/decorator/BaseDecorator;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

.field protected b:Lcom/alipay/android/app/logic/request/RequestConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/logic/decorator/BaseDecorator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->a:Lcom/alipay/android/app/logic/decorator/BaseDecorator;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final a(Lcom/alipay/android/app/logic/request/RequestConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/logic/decorator/BaseDecorator;->b:Lcom/alipay/android/app/logic/request/RequestConfig;

    return-void
.end method

.method public abstract a([BLjava/lang/String;)[B
.end method
