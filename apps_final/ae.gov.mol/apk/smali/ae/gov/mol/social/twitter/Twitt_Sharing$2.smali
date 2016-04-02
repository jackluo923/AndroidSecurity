.class Lae/gov/mol/social/twitter/Twitt_Sharing$2;
.super Ljava/lang/Object;
.source "Twitt_Sharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/social/twitter/Twitt_Sharing;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lae/gov/mol/social/twitter/Twitt_Sharing;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$2;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    iput-object p2, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$2;->val$msg:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$2;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$2;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    return-void
.end method
