.class public Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;
.super Lmobi/monaca/framework/nativeui/exception/NativeUIException;
.source "KeyNotValidException.java"


# instance fields
.field protected componentKey:Ljava/lang/String;

.field protected userSpecifiedKey:Ljava/lang/String;

.field protected validKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "userSpecifiedKey"    # Ljava/lang/String;
    .param p3, "validKeys"    # [Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lmobi/monaca/framework/nativeui/exception/NativeUIException;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;->componentKey:Ljava/lang/String;

    iput-object v0, p0, Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;->componentKey:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;->userSpecifiedKey:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;->validKeys:[Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->exception_keynotvalid_left:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;->userSpecifiedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->exception_keynotvalid_center:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/exception/KeyNotValidException;->validKeys:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->exception_keynotvalid_right:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
