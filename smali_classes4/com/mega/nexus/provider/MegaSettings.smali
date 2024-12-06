.class public Lcom/mega/nexus/provider/MegaSettings;
.super Ljava/lang/Object;
.source "MegaSettings.java"


# static fields
.field public static final ABANDONED:I = 0xc

.field public static ACTION_FLOATING_VISIBLE:Ljava/lang/String; = null

.field public static ACTION_LOOKAROUND_ENABLE:Ljava/lang/String; = null

.field public static final BRIGHTNESS_SENSOR_LUX:Ljava/lang/String; = "brightness_sensor_lux"

.field public static final CUSTOM_LONG_PRESS_TIMEOUT:Ljava/lang/String; = "custom_long_press_timeout"

.field public static final FRAMEWORK_LUX_SOURCE_TYPE:Ljava/lang/String; = "framework_lux_source_type"

.field public static final FRAMEWORK_LUX_SOURCE_TYPE_NONE:I = 0x0

.field public static final FRAMEWORK_LUX_SOURCE_TYPE_PROVIDER:I = 0x2

.field public static final FRAMEWORK_LUX_SOURCE_TYPE_SENSOR:I = 0x1

.field public static final HUD_BRIGHTNESS:Ljava/lang/String; = "hud_brightness"

.field public static final INSTRUMENT_BOARD_BRIGHTNESS:Ljava/lang/String; = "instrument_board_brightness"

.field public static KEY_VIEW_TARGET:Ljava/lang/String; = null

.field public static final MAIN_CONTROL_BRIGHTNESS:Ljava/lang/String; = "main_control_brightness"

.field public static final MAIN_INPUT_ASSOCIATED_DISPLAY_ID:Ljava/lang/String; = "main_input_associated_display_id"

.field public static final MEGA_ANDROID_POWER_STATUS:Ljava/lang/String; = "mega_android_power_status"

.field public static final MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field public static final NETWORK_SCORING_UI_ENABLED:Ljava/lang/String; = "network_scoring_ui_enabled"

.field public static final PASSENGER_INPUT_ASSOCIATED_DISPLAY_ID:Ljava/lang/String; = "passenger_input_associated_display_id"

.field public static final PASSENGER_MEDIA_BRIGHTNESS:Ljava/lang/String; = "passenger_media_brightness"

.field public static SCREEN_ONE_BRIGHTNESS:Ljava/lang/String; = null

.field public static SCREEN_TWO_BRIGHTNESS:Ljava/lang/String; = null

.field public static SDVC_STATUS:Ljava/lang/String; = null

.field public static final SPEED_LABEL_CACHE_EVICTION_AGE_MILLIS:Ljava/lang/String; = "speed_label_cache_eviction_age_millis"

.field public static final STATUS_BOOT_ANIMATION:I = 0xd

.field public static final STATUS_LOW_VOLTAGE:I = 0xb

.field public static final STATUS_ON:I = 0x1

.field public static final STATUS_OVER_VOLTAGE:I = 0xa

.field public static final STATUS_REMOTE_BOOT:I = 0x9

.field public static final STATUS_SCREEN_SAVER:I = 0x7

.field public static final STATUS_SHUTDOWN_PREPARE:I = 0x2

.field public static final STATUS_SIMULATE_SLEEP:I = 0x5

.field public static final STATUS_STAND_BY:I = 0x6

.field public static final STATUS_SUSPEND:I = 0x4

.field public static final STATUS_TEMPORARY_WORKING:I = 0x8

.field public static final STATUS_WAIT_FOR_FINISH:I = 0x3

.field public static final STATUS_WAIT_FOR_VHAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MegaSettings"

.field public static final USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final VEHICLE_CONTROL_BRIGHTNESS:Ljava/lang/String; = "vehicle_control_brightness"

.field public static final VOLUME_ACCESSIBILITY:Ljava/lang/String; = "volume_a11y"

.field public static final VPA_BRIGHTNESS:Ljava/lang/String; = "vpa_brightness"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "action_lookaround_enable"

    sput-object v0, Lcom/mega/nexus/provider/MegaSettings;->ACTION_LOOKAROUND_ENABLE:Ljava/lang/String;

    .line 22
    const-string v0, "screen_one_brightness"

    sput-object v0, Lcom/mega/nexus/provider/MegaSettings;->SCREEN_ONE_BRIGHTNESS:Ljava/lang/String;

    .line 27
    const-string v0, "screen_two_brightness"

    sput-object v0, Lcom/mega/nexus/provider/MegaSettings;->SCREEN_TWO_BRIGHTNESS:Ljava/lang/String;

    .line 65
    const-string v0, "action_floating_visible"

    sput-object v0, Lcom/mega/nexus/provider/MegaSettings;->ACTION_FLOATING_VISIBLE:Ljava/lang/String;

    .line 70
    const-string v0, "sdvc_status"

    sput-object v0, Lcom/mega/nexus/provider/MegaSettings;->SDVC_STATUS:Ljava/lang/String;

    .line 75
    const-string v0, "mega_key_view_target"

    sput-object v0, Lcom/mega/nexus/provider/MegaSettings;->KEY_VIEW_TARGET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntForUserSystem(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .line 250
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getStringForUserGlobal(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 240
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUserSecure(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 230
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUserSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 260
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static putIntForUserGlobal(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .line 215
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putIntForUserSecure(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .line 220
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUserSystem(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I

    .line 245
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putStringForUserGlobal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 235
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUserSecure(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 225
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUserSystem(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 255
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setDisplayBrightnessForUserSystem(Landroid/content/ContentResolver;Ljava/lang/String;IIZ)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userHandle"    # I
    .param p4, "closeAutomatic"    # Z

    .line 278
    if-eqz p4, :cond_0

    .line 279
    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 281
    .local v2, "brightnessMode":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 282
    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 286
    .end local v2    # "brightnessMode":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set brightness for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", by pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    const-string v1, "MegaSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
