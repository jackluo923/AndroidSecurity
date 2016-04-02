.class public Lcom/taobao/android/sso/CalledFromWrongThreadException;
.super Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
