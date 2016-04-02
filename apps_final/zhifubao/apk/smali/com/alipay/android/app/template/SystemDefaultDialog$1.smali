.class Lcom/alipay/android/app/template/SystemDefaultDialog$1;
.super Ljava/lang/Object;
.source "SystemDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
