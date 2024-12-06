.class public Lcom/mega/nexus/app/MegaActivityManagerProxy;
.super Ljava/lang/Object;
.source "MegaActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/app/MegaActivityManagerProxy$TaskDescription;,
        Lcom/mega/nexus/app/MegaActivityManagerProxy$RunningTaskInfo;,
        Lcom/mega/nexus/app/MegaActivityManagerProxy$RunningAppProcessInfo;
    }
.end annotation


# static fields
.field public static final PROCESS_STATE_PERSISTENT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfiguration()Landroid/content/res/Configuration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUser()I
    .locals 1

    .line 48
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public static getRunningAppFlag(Landroid/app/ActivityManager$RunningAppProcessInfo;)I
    .locals 1
    .param p0, "running"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 27
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    return v0
.end method

.method public static getRunningAppProcessState(Landroid/app/ActivityManager$RunningAppProcessInfo;)I
    .locals 1
    .param p0, "running"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 31
    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    return v0
.end method

.method public static declared-synchronized registerTaskStackListener(Lcom/mega/nexus/app/MegaTaskStackListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/mega/nexus/app/MegaTaskStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-class v0, Lcom/mega/nexus/app/MegaActivityManagerProxy;

    monitor-enter v0

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/mega/nexus/app/MegaActivityManagerProxyAdapter;->registerTaskStackListener(Lcom/mega/nexus/app/MegaTaskStackListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v0

    return-void

    .line 17
    .end local p0    # "listener":Lcom/mega/nexus/app/MegaTaskStackListener;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .locals 1
    .param p0, "observer"    # Landroid/app/IUserSwitchObserver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static declared-synchronized unregisterTaskStackListener(Lcom/mega/nexus/app/MegaTaskStackListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/mega/nexus/app/MegaTaskStackListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-class v0, Lcom/mega/nexus/app/MegaActivityManagerProxy;

    monitor-enter v0

    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/mega/nexus/app/MegaActivityManagerProxyAdapter;->unregisterTaskStackListener(Lcom/mega/nexus/app/MegaTaskStackListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    return-void

    .line 22
    .end local p0    # "listener":Lcom/mega/nexus/app/MegaTaskStackListener;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 1
    .param p0, "observer"    # Landroid/app/IUserSwitchObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 68
    return-void
.end method

.method public static updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 58
    return-void
.end method
