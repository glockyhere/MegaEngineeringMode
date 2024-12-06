.class public interface abstract Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
.super Ljava/lang/Object;
.source "ILoggerBridge.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mega/loggerhal/V1_0/ILoggerBridge$Stub;,
        Lvendor/mega/loggerhal/V1_0/ILoggerBridge$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.mega.loggerhal@1.0::ILoggerBridge"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    .locals 7
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 13
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 14
    return-object v0

    .line 17
    :cond_0
    nop

    .line 18
    const-string v1, "vendor.mega.loggerhal@1.0::ILoggerBridge"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 20
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    if-eqz v3, :cond_1

    .line 21
    move-object v0, v2

    check-cast v0, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    return-object v0

    .line 24
    :cond_1
    new-instance v3, Lvendor/mega/loggerhal/V1_0/ILoggerBridge$Proxy;

    invoke-direct {v3, p0}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 27
    .local v3, "proxy":Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    :try_start_0
    invoke-interface {v3}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 28
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    .line 29
    return-object v3

    .line 31
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 33
    :cond_3
    goto :goto_1

    .line 32
    :catch_0
    move-exception v1

    .line 35
    :goto_1
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 42
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;->asInterface(Landroid/os/IHwBinder;)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getService()Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-string v0, "default"

    invoke-static {v0}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;->getService(Ljava/lang/String;)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const-string v0, "vendor.mega.loggerhal@1.0::ILoggerBridge"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;->asInterface(Landroid/os/IHwBinder;)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const-string v0, "vendor.mega.loggerhal@1.0::ILoggerBridge"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;->asInterface(Landroid/os/IHwBinder;)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/mega/loggerhal/V1_0/ILoggerBridge;->getService(Ljava/lang/String;Z)Lvendor/mega/loggerhal/V1_0/ILoggerBridge;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyProgress(F)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerUpdateProgressCallBack(Lvendor/mega/loggerhal/V1_0/ILoggerRxCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract saveProductInfo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterUpdateProgressCallBack(Lvendor/mega/loggerhal/V1_0/ILoggerRxCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateCopyState(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
