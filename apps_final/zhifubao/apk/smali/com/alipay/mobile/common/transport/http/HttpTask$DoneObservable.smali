.class Lcom/alipay/mobile/common/transport/http/HttpTask$DoneObservable;
.super Ljava/util/Observable;
.source "HttpTask.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/http/HttpTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpTask;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpTask$DoneObservable;->this$0:Lcom/alipay/mobile/common/transport/http/HttpTask;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpTask$DoneObservable;->setChanged()V

    .line 213
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 214
    return-void
.end method
