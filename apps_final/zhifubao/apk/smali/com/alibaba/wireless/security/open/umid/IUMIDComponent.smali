.class public interface abstract Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/IComponent;


# static fields
.field public static final ENVIRONMENT_DAILY:I = 0x1

.field public static final ENVIRONMENT_ONLINE:I = 0x0

.field public static final ENVIRONMENT_PRE:I = 0x2


# virtual methods
.method public abstract getSecurityToken()Ljava/lang/String;
.end method

.method public abstract initUMID(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;)V
.end method

.method public abstract registerInitListener(Lcom/alibaba/wireless/security/open/umid/IUMIDInitListener;)V
.end method
