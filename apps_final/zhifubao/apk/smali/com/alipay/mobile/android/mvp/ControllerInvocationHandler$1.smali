.class Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;
.super Ljava/lang/Object;
.source "ControllerInvocationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/Object;

.field private final synthetic b:Ljava/lang/reflect/Method;

.field private final synthetic c:[Ljava/lang/Object;

.field private final synthetic d:Z

.field final synthetic this$0:Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->this$0:Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;

    iput-object p2, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->b:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->c:[Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->d:Z

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->this$0:Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;

    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->b:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->c:[Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;->d:Z

    # invokes: Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->access$0(Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 48
    return-void
.end method
