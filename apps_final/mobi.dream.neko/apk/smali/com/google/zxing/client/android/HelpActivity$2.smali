.class Lcom/google/zxing/client/android/HelpActivity$2;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/HelpActivity;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/HelpActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/zxing/client/android/HelpActivity$2;->this$0:Lcom/google/zxing/client/android/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/zxing/client/android/HelpActivity$2;->this$0:Lcom/google/zxing/client/android/HelpActivity;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/HelpActivity;->finish()V

    .line 63
    return-void
.end method
