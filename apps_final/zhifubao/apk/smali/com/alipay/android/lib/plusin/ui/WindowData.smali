.class public abstract Lcom/alipay/android/lib/plusin/ui/WindowData;
.super Lcom/alipay/android/lib/plusin/protocol/FrameData;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/lib/plusin/protocol/FrameData;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V

    iput-boolean v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->b:Z

    iput-boolean v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->d:I

    iput-boolean v1, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract c()I
.end method

.method public abstract d()Z
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->a:Z

    return v0
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->a:Z

    return-void
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->b:Z

    return v0
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->b:Z

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/lib/plusin/ui/WindowData;->c:Z

    return v0
.end method
