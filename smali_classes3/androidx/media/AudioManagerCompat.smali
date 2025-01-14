.class public final Landroidx/media/AudioManagerCompat;
.super Ljava/lang/Object;
.source "AudioManagerCompat.java"


# static fields
.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AudioManCompat"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abandonAudioFocusRequest(Landroid/media/AudioManager;Landroidx/media/AudioFocusRequestCompat;)I
    .locals 2
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "focusRequest"    # Landroidx/media/AudioFocusRequestCompat;

    .line 112
    if-eqz p0, :cond_2

    .line 115
    if-eqz p1, :cond_1

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getAudioFocusRequest()Landroid/media/AudioFocusRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    return v0

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AudioFocusRequestCompat must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AudioManager must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStreamMaxVolume(Landroid/media/AudioManager;I)I
    .locals 1
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "streamType"    # I

    .line 135
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public static getStreamMinVolume(Landroid/media/AudioManager;I)I
    .locals 2
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "streamType"    # I

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    return v0

    .line 150
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static requestAudioFocus(Landroid/media/AudioManager;Landroidx/media/AudioFocusRequestCompat;)I
    .locals 3
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "focusRequest"    # Landroidx/media/AudioFocusRequestCompat;

    .line 83
    if-eqz p0, :cond_2

    .line 86
    if-eqz p1, :cond_1

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 91
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getAudioFocusRequest()Landroid/media/AudioFocusRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0

    .line 93
    :cond_0
    nop

    .line 94
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getAudioAttributesCompat()Landroidx/media/AudioAttributesCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media/AudioAttributesCompat;->getLegacyStreamType()I

    move-result v1

    .line 96
    invoke-virtual {p1}, Landroidx/media/AudioFocusRequestCompat;->getFocusGain()I

    move-result v2

    .line 93
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AudioFocusRequestCompat must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AudioManager must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
