.class Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;Lcom/google/analytics/tracking/android/GAServiceProxy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;-><init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$ReconnectTask;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    # invokes: Lcom/google/analytics/tracking/android/GAServiceProxy;->connectToService()V
    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$600(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    return-void
.end method
