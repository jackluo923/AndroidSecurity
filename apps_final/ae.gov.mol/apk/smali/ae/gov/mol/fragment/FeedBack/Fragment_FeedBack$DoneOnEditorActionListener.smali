.class Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$DoneOnEditorActionListener;
.super Ljava/lang/Object;
.source "Fragment_FeedBack.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DoneOnEditorActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack$DoneOnEditorActionListener;->this$0:Lae/gov/mol/fragment/FeedBack/Fragment_FeedBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 161
    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 163
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 164
    const/4 v1, 0x1

    .line 166
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method
