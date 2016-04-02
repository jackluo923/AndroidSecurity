.class final Lcom/millennialmedia/android/MMConversionTracker$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$extraParams:Ljava/util/TreeMap;

.field final synthetic val$goalId:Ljava/lang/String;

.field final synthetic val$installTimeUTC:J

.field final synthetic val$isFirstLaunch:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZJLjava/util/TreeMap;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$goalId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$isFirstLaunch:Z

    iput-wide p3, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$installTimeUTC:J

    iput-object p5, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$extraParams:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$goalId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$isFirstLaunch:Z

    iget-wide v3, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$installTimeUTC:J

    iget-object v5, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$extraParams:Ljava/util/TreeMap;

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/android/HttpGetRequest;->trackConversion(Ljava/lang/String;ZJLjava/util/TreeMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
