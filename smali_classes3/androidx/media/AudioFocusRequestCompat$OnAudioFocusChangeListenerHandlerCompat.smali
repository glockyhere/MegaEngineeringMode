.class Landroidx/media/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;
.super Ljava/lang/Object;
.source "AudioFocusRequestCompat.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioFocusRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnAudioFocusChangeListenerHandlerCompat"
.end annotation


# static fields
.field private static final FOCUS_CHANGE:I = 0x2a74b2


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Landroidx/media/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;->mListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 419
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroidx/media/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;->mHandler:Landroid/os/Handler;

    .line 420
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 429
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2a74b2

    if-ne v0, v1, :cond_0

    .line 430
    iget-object v0, p0, Landroidx/media/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;->mListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    .line 431
    const/4 v0, 0x1

    return v0

    .line 433
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .line 424
    iget-object v0, p0, Landroidx/media/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;->mHandler:Landroid/os/Handler;

    const v1, 0x2a74b2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 425
    return-void
.end method
