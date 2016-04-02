.class Lcom/millennialmedia/android/MMLayout$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMLayout;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMLayout$1;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_3

    sget v1, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    if-nez v1, :cond_2

    const-string v0, "Enabling debug and verbose logging."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    const/4 v0, 0x3

    sput v0, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "Disabling debug and verbose logging."

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->i(Ljava/lang/String;)V

    sput v0, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$1;->this$0:Lcom/millennialmedia/android/MMLayout;

    iget-object v0, v0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->printDiagnostics(Lcom/millennialmedia/android/MMAdImpl;)V

    goto :goto_1
.end method
