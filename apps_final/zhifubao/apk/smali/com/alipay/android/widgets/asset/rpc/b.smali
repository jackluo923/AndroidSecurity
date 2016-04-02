.class final Lcom/alipay/android/widgets/asset/rpc/b;
.super Ljava/lang/Object;
.source "WealthHomeRpcExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

.field private final synthetic b:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

.field private final synthetic c:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/rpc/b;->a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    iput-object p2, p0, Lcom/alipay/android/widgets/asset/rpc/b;->b:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    iput-object p3, p0, Lcom/alipay/android/widgets/asset/rpc/b;->c:[Ljava/lang/Object;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/b;->b:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/b;->b:Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/b;->a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/b;->c:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->a([Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/b;->a:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/b;->c:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Lcom/alipay/android/widgets/asset/listener/WealthInfoUpdateListener;->a(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method
