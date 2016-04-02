.class Lcom/millennialmedia/android/DTOAdViewLayout;
.super Ljava/lang/Object;


# instance fields
.field height:I

.field width:I

.field xWindowPosition:I
    .annotation runtime Lcom/millennialmedia/google/gson/annotations/SerializedName;
        value = "x"
    .end annotation
.end field

.field yWindowPosition:I
    .annotation runtime Lcom/millennialmedia/google/gson/annotations/SerializedName;
        value = "y"
    .end annotation
.end field


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/millennialmedia/android/DTOAdViewLayout;->xWindowPosition:I

    iput p2, p0, Lcom/millennialmedia/android/DTOAdViewLayout;->yWindowPosition:I

    iput p3, p0, Lcom/millennialmedia/android/DTOAdViewLayout;->width:I

    iput p4, p0, Lcom/millennialmedia/android/DTOAdViewLayout;->height:I

    return-void
.end method
