.class Lcom/google/analytics/tracking/android/GAServiceProxy$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    # invokes: Lcom/google/analytics/tracking/android/GAServiceProxy;->sendQueue()V
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$000(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    return-void
.end method
