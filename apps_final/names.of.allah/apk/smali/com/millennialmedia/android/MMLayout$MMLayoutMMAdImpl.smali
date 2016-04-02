.class Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;
.super Lcom/millennialmedia/android/MMAdImpl;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMLayout;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMLayout;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMAdImpl;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/millennialmedia/android/MMLayout$LayoutAdProperties;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/millennialmedia/android/MMLayout$LayoutAdProperties;-><init>(Lcom/millennialmedia/android/MMLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->adProperties:Lcom/millennialmedia/android/AdProperties;

    return-void
.end method


# virtual methods
.method public addView(Lcom/millennialmedia/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MMLayout adding view ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method bridge synthetic getCallingAd()Lcom/millennialmedia/android/MMAd;
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMLayout;

    move-result-object v0

    return-object v0
.end method

.method getCallingAd()Lcom/millennialmedia/android/MMLayout;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/millennialmedia/android/MMLayout;

    return-object v0
.end method

.method getId()I
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->getId()I

    move-result v0

    return v0
.end method

.method public removeView(Lcom/millennialmedia/android/MMWebView;)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->this$0:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMLayout;->setClickable(Z)V

    return-void
.end method
