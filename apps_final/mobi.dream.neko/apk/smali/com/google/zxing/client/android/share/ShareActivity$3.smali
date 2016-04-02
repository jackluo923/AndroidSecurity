.class Lcom/google/zxing/client/android/share/ShareActivity$3;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/share/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/share/ShareActivity;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/share/ShareActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/zxing/client/android/share/ShareActivity$3;->this$0:Lcom/google/zxing/client/android/share/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity$3;->this$0:Lcom/google/zxing/client/android/share/ShareActivity;

    const-class v2, Lcom/google/zxing/client/android/share/AppPickerActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/google/zxing/client/android/share/ShareActivity$3;->this$0:Lcom/google/zxing/client/android/share/ShareActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/client/android/share/ShareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 85
    return-void
.end method
