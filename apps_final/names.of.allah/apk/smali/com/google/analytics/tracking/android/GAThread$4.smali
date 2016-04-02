.class Lcom/google/analytics/tracking/android/GAThread$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAThread;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAThread;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread$4;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$4;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    # getter for: Lcom/google/analytics/tracking/android/GAThread;->mServiceProxy:Lcom/google/analytics/tracking/android/ServiceProxy;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$700(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/ServiceProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/ServiceProxy;->setForceLocalDispatch()V

    return-void
.end method
