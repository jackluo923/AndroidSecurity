.class Lcom/millennialmedia/android/MMLayout$LayoutAdProperties;
.super Lcom/millennialmedia/android/AdProperties;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMLayout;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMLayout$LayoutAdProperties;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-direct {p0, p2}, Lcom/millennialmedia/android/AdProperties;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method getAdDpiIndependentHeight()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout$LayoutAdProperties;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getDensity(Landroid/content/Context;)F

    move-result v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout$LayoutAdProperties;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAdDpiIndependentWidth()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout$LayoutAdProperties;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getDensity(Landroid/content/Context;)F

    move-result v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout$LayoutAdProperties;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
