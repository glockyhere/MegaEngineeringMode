.class Landroidx/appcompat/app/AppCompatDelegateImpl$ConfigurationImplApi17;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationImplApi17"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateConfigDelta_densityDpi(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "change"    # Landroid/content/res/Configuration;
    .param p2, "delta"    # Landroid/content/res/Configuration;

    .line 3478
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v1, :cond_0

    .line 3479
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 3481
    :cond_0
    return-void
.end method
