.class public Lcom/mega/nexus/media/MegaAudioAttributes;
.super Ljava/lang/Object;
.source "MegaAudioAttributes.java"


# static fields
.field public static CONTENT_TYPE_MARS:I = 0x0

.field public static final USAGE_ASSISTANT:I

.field public static final USAGE_BCALL:I = 0x7d6

.field public static final USAGE_EMERGENCY:I

.field public static USAGE_MARS:I = 0x0

.field public static final USAGE_SAFETY:I

.field public static final USAGE_VEHICLE_STATUS:I

.field public static final USAGE_VENDOR_ALARM:I = 0x7d3

.field public static final USAGE_VENDOR_BACKCAR:I = 0x7d7

.field public static final USAGE_VENDOR_CALL:I

.field public static final USAGE_VENDOR_CALL_RING:I

.field public static final USAGE_VENDOR_IVI:I

.field public static final USAGE_VENDOR_MEETING:I

.field public static final USAGE_VENDOR_NOTIFICATION:I

.field public static final USAGE_VENDOR_TTS:I

.field public static final USAGE_VENDOR_VPA:I

.field public static final USAGE_VENDOR_VR:I

.field public static final USAGE_VENDOR_WAVES:I = 0x7d8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->USAGE_MARS:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->USAGE_MARS:I

    .line 7
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->USAGE_EMERGENCY:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->USAGE_EMERGENCY:I

    .line 8
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->USAGE_VEHICLE_STATUS:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->USAGE_VEHICLE_STATUS:I

    .line 9
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->USAGE_SAFETY:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->USAGE_SAFETY:I

    .line 10
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->USAGE_ASSISTANT:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->USAGE_ASSISTANT:I

    .line 11
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->USAGE_VENDOR_MEETING:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->USAGE_VENDOR_MEETING:I

    .line 12
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->USAGE_VENDOR_CALL:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->USAGE_VENDOR_CALL:I

    .line 13
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->USAGE_VENDOR_CALL_RING:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->USAGE_VENDOR_CALL_RING:I

    .line 15
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->USAGE_VENDOR_IVI:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->USAGE_VENDOR_IVI:I

    .line 16
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->USAGE_VENDOR_TTS:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->USAGE_VENDOR_TTS:I

    .line 17
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->USAGE_VENDOR_VPA:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->USAGE_VENDOR_VPA:I

    .line 18
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->USAGE_VENDOR_VR:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->USAGE_VENDOR_VR:I

    .line 19
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->USAGE_VENDOR_NOTIFICATION:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->USAGE_VENDOR_NOTIFICATION:I

    .line 21
    sget v0, Lcom/mega/nexus/media/MegaAudioAttributesAdapter;->CONTENT_TYPE_MARS:I

    sput v0, Lcom/mega/nexus/media/MegaAudioAttributes;->CONTENT_TYPE_MARS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemUsage(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 28
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v0

    return v0
.end method
