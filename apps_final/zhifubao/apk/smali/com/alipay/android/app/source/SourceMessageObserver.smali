.class public Lcom/alipay/android/app/source/SourceMessageObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/base/message/IObserver;


# instance fields
.field private a:I

.field private b:Lcom/alipay/android/app/source/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/source/SourceMessageObserver;->a:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/alipay/android/app/source/SourceMessageObserver;->a:I

    invoke-static {}, Lcom/alipay/android/app/source/a;->a()Lcom/alipay/android/app/source/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/source/SourceMessageObserver;->b:Lcom/alipay/android/app/source/a;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/source/SourceMessageObserver;->a:I

    return v0
.end method

.method public final a(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/source/SourceMessageObserver;->b:Lcom/alipay/android/app/source/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/source/a;->a(Lcom/alipay/android/app/base/message/MspMessage;)V

    return-void
.end method
