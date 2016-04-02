.class public interface abstract Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/IComponent;


# virtual methods
.method public varargs abstract checkEnvAndFiles([Ljava/lang/String;)I
.end method

.method public abstract getDexHash(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract isPackageValid(Ljava/lang/String;)Z
.end method
