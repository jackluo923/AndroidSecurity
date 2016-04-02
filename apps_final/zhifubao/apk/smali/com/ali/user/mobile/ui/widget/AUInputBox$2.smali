.class Lcom/ali/user/mobile/ui/widget/AUInputBox$2;
.super Lcom/alipay/mobile/commonui/widget/keyboard/APSafeTextWatcher;
.source "AUInputBox.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$2;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 300
    invoke-direct {p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 311
    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$2;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$2;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$0(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->onInputTextStatusChanged(ZZ)V

    .line 312
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$2;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->j:Lcom/ali/user/mobile/ui/widget/AUFormatter;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$1(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Lcom/ali/user/mobile/ui/widget/AUFormatter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 315
    invoke-interface {p1}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    .line 320
    if-eqz v3, :cond_0

    array-length v0, v3

    if-lez v0, :cond_0

    .line 321
    array-length v4, v3

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_3

    .line 340
    :cond_0
    new-array v0, v1, [Landroid/text/InputFilter;

    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 341
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$2;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->j:Lcom/ali/user/mobile/ui/widget/AUFormatter;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$1(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Lcom/ali/user/mobile/ui/widget/AUFormatter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/ui/widget/AUFormatter;->format(Landroid/text/Editable;)V

    .line 342
    invoke-interface {p1, v3}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 344
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 311
    goto :goto_0

    .line 321
    :cond_3
    aget-object v5, v3, v2

    .line 322
    instance-of v0, v5, Landroid/text/InputFilter$LengthFilter;

    if-eqz v0, :cond_4

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$2;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->j:Lcom/ali/user/mobile/ui/widget/AUFormatter;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$1(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Lcom/ali/user/mobile/ui/widget/AUFormatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 326
    array-length v7, v6

    move v0, v1

    :goto_2
    if-lt v0, v7, :cond_5

    .line 321
    :cond_4
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 326
    :cond_5
    aget-object v8, v6, v0

    .line 327
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "InputFilter"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 329
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 330
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox$2;->this$0:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    # getter for: Lcom/ali/user/mobile/ui/widget/AUInputBox;->j:Lcom/ali/user/mobile/ui/widget/AUFormatter;
    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$1(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Lcom/ali/user/mobile/ui/widget/AUFormatter;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/text/InputFilter;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v8, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 334
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 326
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 307
    return-void
.end method
