.class Lae/gov/mol/social/twitter/Twitter_Handler$4;
.super Ljava/lang/Object;
.source "Twitter_Handler.java"

# interfaces
.implements Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/social/twitter/Twitter_Handler;->showLoginDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/social/twitter/Twitter_Handler;


# direct methods
.method constructor <init>(Lae/gov/mol/social/twitter/Twitter_Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/social/twitter/Twitter_Handler$4;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler$4;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    invoke-virtual {v0, p1}, Lae/gov/mol/social/twitter/Twitter_Handler;->processToken(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 200
    return-void
.end method
