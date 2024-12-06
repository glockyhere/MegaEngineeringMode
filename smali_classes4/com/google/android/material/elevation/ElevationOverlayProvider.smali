.class public Lcom/google/android/material/elevation/ElevationOverlayProvider;
.super Ljava/lang/Object;
.source "ElevationOverlayProvider.java"


# static fields
.field private static final ELEVATION_OVERLAY_MULTIPLIER:F = 4.5f


# instance fields
.field private final colorSurface:I

.field private final displayDensity:F

.field private final elevationOverlaysColor:I

.field private final elevationOverlaysEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlaysEnabled:I

    .line 40
    invoke-static {p1, v0}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBooleanAttribute(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysEnabled:Z

    .line 41
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlaysColor:I

    .line 42
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysColor:I

    .line 43
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    .line 45
    return-void
.end method

.method private isSurfaceColor(I)Z
    .locals 2
    .param p1, "color"    # I

    .line 114
    const/16 v0, 0xff

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public calculateOverlayAlpha(F)I
    .locals 2
    .param p1, "elevation"    # F

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->calculateOverlayAlphaFraction(F)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public calculateOverlayAlphaFraction(F)F
    .locals 4
    .param p1, "elevation"    # F

    .line 88
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-lez v2, :cond_1

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    div-float v0, p1, v0

    .line 92
    .local v0, "elevationDp":F
    const/high16 v1, 0x40900000    # 4.5f

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    .line 93
    .local v2, "alphaFraction":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1

    .line 89
    .end local v0    # "elevationDp":F
    .end local v2    # "alphaFraction":F
    :cond_1
    :goto_0
    return v1
.end method

.method public getColorSurface()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    return v0
.end method

.method public getOverlaysColor()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysColor:I

    return v0
.end method

.method public isOverlaysEnabled()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysEnabled:Z

    return v0
.end method

.method public layerOverlay(IF)I
    .locals 2
    .param p1, "backgroundColor"    # I
    .param p2, "elevation"    # F

    .line 71
    invoke-virtual {p0, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->calculateOverlayAlphaFraction(F)F

    move-result v0

    .line 72
    .local v0, "overlayAlpha":F
    iget v1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysColor:I

    invoke-static {p1, v1, v0}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v1

    return v1
.end method

.method public layerOverlayIfNeeded(IF)I
    .locals 1
    .param p1, "backgroundColor"    # I
    .param p2, "elevation"    # F

    .line 55
    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlaysEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->isSurfaceColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->layerOverlay(IF)I

    move-result v0

    return v0

    .line 58
    :cond_0
    return p1
.end method
