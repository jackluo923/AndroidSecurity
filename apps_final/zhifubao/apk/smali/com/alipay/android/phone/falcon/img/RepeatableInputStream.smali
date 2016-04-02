.class public Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;
.super Ljava/io/ByteArrayInputStream;


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method


# virtual methods
.method public flip()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->pos:I

    return-void
.end method
