.class Lcom/alipay/mobile/commonui/widget/APInputBox$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->c:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    invoke-static {v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->hasFocus()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->onInputTextStatusChanged(ZZ)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->h:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$100(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v0, v3

    if-lez v0, :cond_3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    instance-of v0, v5, Landroid/text/InputFilter$LengthFilter;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->h:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$100(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "InputFilter"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->h:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$100(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/text/InputFilter;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v8, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_3
    new-array v0, v1, [Landroid/text/InputFilter;

    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APInputBox;->h:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->access$100(Lcom/alipay/mobile/commonui/widget/APInputBox;)Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;->format(Landroid/text/Editable;)V

    invoke-interface {p1, v3}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    :cond_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
