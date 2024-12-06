.class public Lcom/mega/nexus/os/MegaPowerManager;
.super Ljava/lang/Object;
.source "MegaPowerManager.java"


# static fields
.field public static final BACK_LIGHT_STATE_OFF:I = 0x0

.field public static final BACK_LIGHT_STATE_ON:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaximumScreenBrightnessSetting(Landroid/os/PowerManager;)I
    .locals 1
    .param p0, "powerManager"    # Landroid/os/PowerManager;

    .line 23
    invoke-virtual {p0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    return v0
.end method

.method public static getMinimumScreenBrightnessSetting(Landroid/os/PowerManager;)I
    .locals 1
    .param p0, "powerManager"    # Landroid/os/PowerManager;

    .line 19
    invoke-virtual {p0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    return v0
.end method

.method public static getScreenPowerState(Landroid/os/PowerManager;)Z
    .locals 1
    .param p0, "powerManager"    # Landroid/os/PowerManager;

    .line 11
    invoke-static {p0}, Lcom/mega/nexus/os/MegaPowerManagerAdapter;->getScreenPowerState(Landroid/os/PowerManager;)Z

    move-result v0

    return v0
.end method

.method public static goToSleep(Landroid/os/PowerManager;J)V
    .locals 0
    .param p0, "powerManager"    # Landroid/os/PowerManager;
    .param p1, "time"    # J

    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 32
    return-void
.end method

.method public static setUsbLightBrightness(Landroid/os/PowerManager;I)V
    .locals 0
    .param p0, "powerManager"    # Landroid/os/PowerManager;
    .param p1, "brightness"    # I

    .line 15
    invoke-static {p0, p1}, Lcom/mega/nexus/os/MegaPowerManagerAdapter;->setUsbLightBrightness(Landroid/os/PowerManager;I)V

    .line 16
    return-void
.end method

.method public static shutdown(Landroid/os/PowerManager;ZLjava/lang/String;Z)V
    .locals 0
    .param p0, "powerManager"    # Landroid/os/PowerManager;
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    .line 40
    return-void
.end method

.method public static updateAllBackLightState(Landroid/os/PowerManager;II)Z
    .locals 1
    .param p0, "powerManager"    # Landroid/os/PowerManager;
    .param p1, "state"    # I
    .param p2, "userHandle"    # I

    .line 54
    invoke-static {p0, p1, p2}, Lcom/mega/nexus/os/MegaPowerManagerAdapter;->updateAllBackLightState(Landroid/os/PowerManager;II)Z

    move-result v0

    return v0
.end method

.method public static updateBackLightState(Landroid/os/PowerManager;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "powerManager"    # Landroid/os/PowerManager;
    .param p1, "backLightName"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "userHandle"    # I

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/mega/nexus/os/MegaPowerManagerAdapter;->updateBackLightState(Landroid/os/PowerManager;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static updateScreenPowerState(Landroid/os/PowerManager;Z)V
    .locals 0
    .param p0, "powerManager"    # Landroid/os/PowerManager;
    .param p1, "state"    # Z

    .line 7
    invoke-static {p0, p1}, Lcom/mega/nexus/os/MegaPowerManagerAdapter;->updateScreenPowerState(Landroid/os/PowerManager;Z)V

    .line 8
    return-void
.end method

.method public static wakeUp(Landroid/os/PowerManager;J)V
    .locals 0
    .param p0, "powerManager"    # Landroid/os/PowerManager;
    .param p1, "time"    # J

    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 28
    return-void
.end method
