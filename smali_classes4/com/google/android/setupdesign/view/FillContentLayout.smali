.class public Lcom/google/android/setupdesign/view/FillContentLayout;
.super Landroid/widget/FrameLayout;
.source "FillContentLayout.java"


# instance fields
.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/setupdesign/view/FillContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    sget v0, Lcom/google/android/setupdesign/R$attr;->sudFillContentLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/view/FillContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/view/FillContentLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method private static getMaxSizeMeasureSpec(III)I
    .locals 4
    .param p0, "maxSize"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I

    .line 107
    sub-int v0, p0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 109
    .local v0, "size":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ltz p2, :cond_0

    .line 111
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    .line 112
    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 114
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    .line 115
    :cond_1
    const/4 v2, -0x2

    if-ne p2, v2, :cond_2

    .line 118
    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    .line 120
    :cond_2
    return v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 61
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudFillContentLayout:[I

    .line 62
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudFillContentLayout_android_maxHeight:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/setupdesign/view/FillContentLayout;->maxHeight:I

    .line 65
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudFillContentLayout_android_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/setupdesign/view/FillContentLayout;->maxWidth:I

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method private measureIllustrationChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidth"    # I
    .param p3, "parentHeight"    # I

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 91
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/google/android/setupdesign/view/FillContentLayout;->maxWidth:I

    .line 93
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/FillContentLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/FillContentLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 92
    invoke-static {v1, v2, v3}, Lcom/google/android/setupdesign/view/FillContentLayout;->getMaxSizeMeasureSpec(III)I

    move-result v1

    .line 96
    .local v1, "childWidthMeasureSpec":I
    iget v2, p0, Lcom/google/android/setupdesign/view/FillContentLayout;->maxHeight:I

    .line 98
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 99
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/FillContentLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/FillContentLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 97
    invoke-static {v2, v3, v4}, Lcom/google/android/setupdesign/view/FillContentLayout;->getMaxSizeMeasureSpec(III)I

    move-result v2

    .line 102
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 103
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 75
    nop

    .line 76
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/FillContentLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/setupdesign/view/FillContentLayout;->getDefaultSize(II)I

    move-result v0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/FillContentLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/google/android/setupdesign/view/FillContentLayout;->getDefaultSize(II)I

    move-result v1

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupdesign/view/FillContentLayout;->setMeasuredDimension(II)V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/FillContentLayout;->getChildCount()I

    move-result v0

    .line 80
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 81
    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/view/FillContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/FillContentLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/FillContentLayout;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/setupdesign/view/FillContentLayout;->measureIllustrationChild(Landroid/view/View;II)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
