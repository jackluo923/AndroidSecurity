.class final Lcom/appyet/activity/forum/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/forum/ForumSignInActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/forum/ForumSignInActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/forum/f;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appyet/activity/forum/f;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/appyet/activity/forum/ForumSignInActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/appyet/activity/forum/f;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-static {v1}, Lcom/appyet/activity/forum/ForumSignInActivity;->a(Lcom/appyet/activity/forum/ForumSignInActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/appyet/activity/forum/f;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-static {v1}, Lcom/appyet/activity/forum/ForumSignInActivity;->b(Lcom/appyet/activity/forum/ForumSignInActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/appyet/activity/forum/f;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-static {v0}, Lcom/appyet/activity/forum/ForumSignInActivity;->a(Lcom/appyet/activity/forum/ForumSignInActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/appyet/activity/forum/f;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-static {v0}, Lcom/appyet/activity/forum/ForumSignInActivity;->b(Lcom/appyet/activity/forum/ForumSignInActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method
