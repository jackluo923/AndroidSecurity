.class Lcom/millennialmedia/android/Utils$HttpUtils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static executeUrl(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/Utils$HttpUtils$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/Utils$HttpUtils$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
