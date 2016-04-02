.class public Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;
.super Lmobi/monaca/framework/nativeui/exception/NativeUIException;
.source "RequiredKeyNotFoundException.java"


# instance fields
.field protected keyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "keyName"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lmobi/monaca/framework/nativeui/exception/NativeUIException;-><init>(Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;->keyName:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lmobi/monaca/framework/psedo/R$string;->exception_requiredkey_left:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;->keyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->exception_requiredkey_right:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/exception/RequiredKeyNotFoundException;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
