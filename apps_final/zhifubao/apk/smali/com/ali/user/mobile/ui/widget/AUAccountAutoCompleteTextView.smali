.class public Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "AUAccountAutoCompleteTextView.java"


# instance fields
.field private a:I

.field private b:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView$DismissDropDownListener;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->a:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->c:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->a:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->c:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->a:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->c:Z

    .line 25
    return-void
.end method


# virtual methods
.method public dismissDropDown()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 55
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->b:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView$DismissDropDownListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->b:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView$DismissDropDownListener;

    invoke-interface {v0}, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView$DismissDropDownListener;->dismissDropDown()V

    .line 58
    :cond_0
    return-void
.end method

.method public enoughToFilter()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    iget-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->a:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->a:I

    return v0
.end method

.method public registerDismissDropDownListener(Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView$DismissDropDownListener;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->b:Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView$DismissDropDownListener;

    .line 62
    return-void
.end method

.method public setAutoComplete(Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->c:Z

    .line 31
    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .prologue
    .line 35
    if-gez p1, :cond_0

    .line 36
    const/4 p1, 0x0

    .line 39
    :cond_0
    iput p1, p0, Lcom/ali/user/mobile/ui/widget/AUAccountAutoCompleteTextView;->a:I

    .line 40
    return-void
.end method
