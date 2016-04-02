.class public Lcom/alipay/android/app/base/message/DefaultMsgObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/base/message/IObserver;


# instance fields
.field private a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

.field private b:I


# direct methods
.method public constructor <init>(ILcom/alipay/android/app/base/message/MessageHandleHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/android/app/base/message/DefaultMsgObserver;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    iput p1, p0, Lcom/alipay/android/app/base/message/DefaultMsgObserver;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/base/message/DefaultMsgObserver;->b:I

    return v0
.end method

.method public final a(Lcom/alipay/android/app/base/message/MspMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/base/message/DefaultMsgObserver;->a:Lcom/alipay/android/app/base/message/MessageHandleHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/base/message/MessageHandleHelper;->a(Lcom/alipay/android/app/base/message/MspMessage;)V

    return-void
.end method
