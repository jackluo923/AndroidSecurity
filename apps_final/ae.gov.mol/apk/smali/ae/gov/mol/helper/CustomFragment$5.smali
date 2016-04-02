.class Lae/gov/mol/helper/CustomFragment$5;
.super Ljava/lang/Object;
.source "CustomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/CustomFragment;->showDatePicker(Landroid/content/Context;Landroid/webkit/WebView;Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/CustomFragment;


# direct methods
.method constructor <init>(Lae/gov/mol/helper/CustomFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/CustomFragment$5;->this$0:Lae/gov/mol/helper/CustomFragment;

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "mDialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I
    .param p3, "mKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 619
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 626
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 621
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$5;->this$0:Lae/gov/mol/helper/CustomFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lae/gov/mol/helper/CustomFragment;->access$5(Lae/gov/mol/helper/CustomFragment;Z)V

    goto :goto_0

    .line 619
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
