.class Lae/gov/mol/fragment/DialogFragment_RegisterNewUser$3;
.super Ljava/lang/Object;
.source "DialogFragment_RegisterNewUser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser$3;->this$0:Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "mIntentMakeACall":Landroid/content/Intent;
    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser$3;->this$0:Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;

    const v2, 0x7f090178

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser$3;->this$0:Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;

    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->startActivity(Landroid/content/Intent;)V

    .line 124
    iget-object v1, p0, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser$3;->this$0:Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;

    invoke-virtual {v1}, Lae/gov/mol/fragment/DialogFragment_RegisterNewUser;->dismiss()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0    # "mIntentMakeACall":Landroid/content/Intent;
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v1

    goto :goto_0
.end method
