.class public Lcom/google/android/setupdesign/view/Illustration;
.super Landroid/widget/FrameLayout;
.source "Illustration.java"


# instance fields
.field private aspectRatio:F

.field private background:Landroid/graphics/drawable/Drawable;

.field private baselineGridSize:F

.field private illustration:Landroid/graphics/drawable/Drawable;

.field private final illustrationBounds:Landroid/graphics/Rect;

.field private scale:F

.field private final viewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->viewBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->illustrationBounds:Landroid/graphics/Rect;

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/setupdesign/view/Illustration;->scale:F

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/view/Illustration;->aspectRatio:F

    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupdesign/view/Illustration;->init(Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->viewBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->illustrationBounds:Landroid/graphics/Rect;

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/setupdesign/view/Illustration;->scale:F

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/view/Illustration;->aspectRatio:F

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/setupdesign/view/Illustration;->init(Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->viewBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->illustrationBounds:Landroid/graphics/Rect;

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/setupdesign/view/Illustration;->scale:F

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/view/Illustration;->aspectRatio:F

    .line 67
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/view/Illustration;->init(Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 73
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 74
    nop

    .line 75
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/Illustration;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupdesign/R$styleable;->SudIllustration:[I

    invoke-virtual {v1, p1, v2, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 76
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/setupdesign/R$styleable;->SudIllustration_sudAspectRatio:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/setupdesign/view/Illustration;->aspectRatio:F

    .line 77
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/Illustration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/setupdesign/view/Illustration;->baselineGridSize:F

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/Illustration;->setWillNotDraw(Z)V

    .line 82
    return-void
.end method

.method private shouldMirrorDrawable(Landroid/graphics/drawable/Drawable;I)Z
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .line 216
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 217
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 218
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0

    .line 219
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/Illustration;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 222
    .local v2, "flags":I
    const/high16 v3, 0x400000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 225
    .end local v2    # "flags":I
    :cond_2
    return v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 185
    iget-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->background:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 188
    iget-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->illustrationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 190
    iget v0, p0, Lcom/google/android/setupdesign/view/Illustration;->scale:F

    invoke-virtual {p1, v0, v0, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->background:Landroid/graphics/drawable/Drawable;

    .line 192
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/Illustration;->getLayoutDirection()I

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/google/android/setupdesign/view/Illustration;->shouldMirrorDrawable(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 195
    iget-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->illustration:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->illustration:Landroid/graphics/drawable/Drawable;

    .line 203
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/Illustration;->getLayoutDirection()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/setupdesign/view/Illustration;->shouldMirrorDrawable(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 206
    iget-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->illustrationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->illustration:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 212
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 213
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 151
    sub-int v0, p4, p2

    .line 152
    .local v0, "layoutWidth":I
    sub-int v1, p5, p3

    .line 153
    .local v1, "layoutHeight":I
    iget-object v2, p0, Lcom/google/android/setupdesign/view/Illustration;->illustration:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 155
    .local v2, "intrinsicWidth":I
    iget-object v4, p0, Lcom/google/android/setupdesign/view/Illustration;->illustration:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 157
    .local v4, "intrinsicHeight":I
    iget-object v5, p0, Lcom/google/android/setupdesign/view/Illustration;->viewBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 158
    iget v5, p0, Lcom/google/android/setupdesign/view/Illustration;->aspectRatio:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 159
    int-to-float v5, v0

    int-to-float v6, v2

    div-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/setupdesign/view/Illustration;->scale:F

    .line 160
    move v2, v0

    .line 161
    int-to-float v6, v4

    mul-float/2addr v6, v5

    float-to-int v4, v6

    .line 163
    :cond_0
    const/16 v5, 0x37

    iget-object v6, p0, Lcom/google/android/setupdesign/view/Illustration;->viewBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/google/android/setupdesign/view/Illustration;->illustrationBounds:Landroid/graphics/Rect;

    invoke-static {v5, v2, v4, v6, v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 169
    iget-object v5, p0, Lcom/google/android/setupdesign/view/Illustration;->illustration:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/google/android/setupdesign/view/Illustration;->illustrationBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 171
    .end local v2    # "intrinsicWidth":I
    .end local v4    # "intrinsicHeight":I
    :cond_1
    iget-object v2, p0, Lcom/google/android/setupdesign/view/Illustration;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 174
    int-to-float v4, v0

    iget v5, p0, Lcom/google/android/setupdesign/view/Illustration;->scale:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 177
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/google/android/setupdesign/view/Illustration;->illustrationBounds:Landroid/graphics/Rect;

    .line 178
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, v1, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/setupdesign/view/Illustration;->scale:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 174
    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 180
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 181
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 136
    iget v0, p0, Lcom/google/android/setupdesign/view/Illustration;->aspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 138
    .local v0, "parentWidth":I
    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/setupdesign/view/Illustration;->aspectRatio:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 139
    .local v1, "illustrationHeight":I
    int-to-float v2, v1

    int-to-float v3, v1

    iget v4, p0, Lcom/google/android/setupdesign/view/Illustration;->baselineGridSize:F

    rem-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 140
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v2, v2}, Lcom/google/android/setupdesign/view/Illustration;->setPadding(IIII)V

    .line 142
    .end local v0    # "parentWidth":I
    .end local v1    # "illustrationHeight":I
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 144
    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/Illustration;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 146
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 147
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0
    .param p1, "aspectRatio"    # F

    .line 123
    iput p1, p0, Lcom/google/android/setupdesign/view/Illustration;->aspectRatio:F

    .line 124
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/Illustration;->invalidate()V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/Illustration;->requestLayout()V

    .line 126
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->background:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/google/android/setupdesign/view/Illustration;->background:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/Illustration;->invalidate()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/Illustration;->requestLayout()V

    .line 99
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method

.method public setIllustration(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "illustration"    # Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object v0, p0, Lcom/google/android/setupdesign/view/Illustration;->illustration:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/google/android/setupdesign/view/Illustration;->illustration:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/Illustration;->invalidate()V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/Illustration;->requestLayout()V

    .line 112
    return-void
.end method
