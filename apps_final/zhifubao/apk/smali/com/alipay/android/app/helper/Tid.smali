.class public Lcom/alipay/android/app/helper/Tid;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/helper/Tid;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTidSeed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/helper/Tid;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/helper/Tid;->c:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/helper/Tid;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/helper/Tid;->a:Ljava/lang/String;

    return-void
.end method

.method public setTidSeed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/helper/Tid;->b:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/app/helper/Tid;->c:J

    return-void
.end method
