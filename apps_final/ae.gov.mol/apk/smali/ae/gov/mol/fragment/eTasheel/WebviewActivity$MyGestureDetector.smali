.class Lae/gov/mol/fragment/eTasheel/WebviewActivity$MyGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/WebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/WebviewActivity;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/WebviewActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity$MyGestureDetector;->this$0:Lae/gov/mol/fragment/eTasheel/WebviewActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 135
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity$MyGestureDetector;->this$0:Lae/gov/mol/fragment/eTasheel/WebviewActivity;

    # getter for: Lae/gov/mol/fragment/eTasheel/WebviewActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->access$1(Lae/gov/mol/fragment/eTasheel/WebviewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 136
    const-string v0, ""

    const-string v1, "Reload"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
