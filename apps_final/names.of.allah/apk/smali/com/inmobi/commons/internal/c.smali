.class final Lcom/inmobi/commons/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSamplingTerminated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/thinICE/icedatacollector/Sample;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/inmobi/commons/internal/ThinICE;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->stop()V

    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionSampler;->stop()V

    return-void
.end method
