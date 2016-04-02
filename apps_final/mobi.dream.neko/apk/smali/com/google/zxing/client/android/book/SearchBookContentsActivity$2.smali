.class Lcom/google/zxing/client/android/book/SearchBookContentsActivity$2;
.super Ljava/lang/Object;
.source "SearchBookContentsActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/book/SearchBookContentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$2;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 88
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$2;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # invokes: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->launchSearch()V
    invoke-static {v0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$000(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
