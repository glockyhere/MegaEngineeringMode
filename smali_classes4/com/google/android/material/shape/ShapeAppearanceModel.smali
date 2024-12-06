.class public Lcom/google/android/material/shape/ShapeAppearanceModel;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;
    }
.end annotation


# instance fields
.field private bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private final onChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field private topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field private topRightCorner:Lcom/google/android/material/shape/CornerTreatment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    .line 69
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 70
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 71
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 72
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 74
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 75
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 76
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 77
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 79
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 96
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "defaultCornerSize"    # I

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    .line 105
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialShape:[I

    .line 106
    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 108
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearance:I

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 109
    .local v6, "shapeAppearanceResId":I
    sget v8, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearanceOverlay:I

    .line 110
    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 111
    .local v8, "shapeAppearanceOverlayResId":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    if-eqz v8, :cond_0

    .line 115
    new-instance v9, Landroid/view/ContextThemeWrapper;

    invoke-direct {v9, v1, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v9

    .line 116
    .end local p1    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    move v6, v8

    .line 119
    :cond_0
    sget-object v9, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    invoke-virtual {v1, v6, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 121
    sget v9, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamily:I

    invoke-virtual {v2, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 122
    .local v7, "cornerFamily":I
    sget v9, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 123
    invoke-virtual {v2, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 124
    .local v9, "cornerFamilyTopLeft":I
    sget v10, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopRight:I

    .line 125
    invoke-virtual {v2, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 126
    .local v10, "cornerFamilyTopRight":I
    sget v11, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 127
    invoke-virtual {v2, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 128
    .local v11, "cornerFamilyBottomRight":I
    sget v12, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 129
    invoke-virtual {v2, v12, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 131
    .local v12, "cornerFamilyBottomLeft":I
    sget v13, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSize:I

    .line 132
    move/from16 v14, p5

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 133
    .local v13, "cornerSize":I
    sget v15, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopLeft:I

    .line 134
    invoke-virtual {v2, v15, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 135
    .local v15, "cornerSizeTopLeft":I
    move-object/from16 p1, v1

    .end local v1    # "context":Landroid/content/Context;
    .restart local p1    # "context":Landroid/content/Context;
    sget v1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopRight:I

    .line 136
    invoke-virtual {v2, v1, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 137
    .local v1, "cornerSizeTopRight":I
    sget v3, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomRight:I

    .line 138
    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 139
    .local v3, "cornerSizeBottomRight":I
    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 140
    invoke-virtual {v2, v4, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 142
    .local v4, "cornerSizeBottomLeft":I
    nop

    .line 143
    invoke-static {v9, v15}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v5

    .line 142
    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 144
    nop

    .line 145
    invoke-static {v10, v1}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v5

    .line 144
    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 146
    nop

    .line 147
    invoke-static {v11, v3}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v5

    .line 146
    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 148
    nop

    .line 149
    invoke-static {v12, v4}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v5

    .line 148
    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 151
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 152
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 153
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 154
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 156
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1
    .param p1, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    .line 83
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 84
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 85
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 86
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    .line 88
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 89
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 90
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 91
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    .line 92
    return-void
.end method

.method private onShapeAppearanceModelChanged()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;

    .line 604
    .local v1, "onChangedListener":Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;
    if-eqz v1, :cond_0

    .line 605
    invoke-interface {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;->onShapeAppearanceModelChanged()V

    .line 607
    .end local v1    # "onChangedListener":Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;
    :cond_0
    goto :goto_0

    .line 608
    :cond_1
    return-void
.end method

.method private setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 2
    .param p1, "bottomEdge"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v1, p1, :cond_0

    .line 579
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 580
    const/4 v0, 0x1

    .line 582
    :cond_0
    return v0
.end method

.method private setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 2
    .param p1, "bottomLeftCorner"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v1, p1, :cond_0

    .line 463
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 464
    const/4 v0, 0x1

    .line 466
    :cond_0
    return v0
.end method

.method private setBottomLeftCornerSizeInternal(F)Z
    .locals 2
    .param p1, "bottomLeftCornerSize"    # F

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput p1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    .line 255
    const/4 v0, 0x1

    .line 257
    :cond_0
    return v0
.end method

.method private setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 2
    .param p1, "bottomRightCorner"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v1, p1, :cond_0

    .line 424
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 425
    const/4 v0, 0x1

    .line 427
    :cond_0
    return v0
.end method

.method private setBottomRightCornerSizeInternal(F)Z
    .locals 2
    .param p1, "bottomRightCornerSize"    # F

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput p1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    .line 246
    const/4 v0, 0x1

    .line 248
    :cond_0
    return v0
.end method

.method private setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 2
    .param p1, "leftEdge"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v1, p1, :cond_0

    .line 492
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 493
    const/4 v0, 0x1

    .line 495
    :cond_0
    return v0
.end method

.method private setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 2
    .param p1, "rightEdge"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v1, p1, :cond_0

    .line 550
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 551
    const/4 v0, 0x1

    .line 553
    :cond_0
    return v0
.end method

.method private setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z
    .locals 2
    .param p1, "topEdge"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    if-eq v1, p1, :cond_0

    .line 521
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 522
    const/4 v0, 0x1

    .line 524
    :cond_0
    return v0
.end method

.method private setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 2
    .param p1, "topLeftCorner"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v1, p1, :cond_0

    .line 346
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 347
    const/4 v0, 0x1

    .line 349
    :cond_0
    return v0
.end method

.method private setTopLeftCornerSizeInternal(F)Z
    .locals 2
    .param p1, "topLeftCornerSize"    # F

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput p1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    .line 228
    const/4 v0, 0x1

    .line 230
    :cond_0
    return v0
.end method

.method private setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z
    .locals 2
    .param p1, "topRightCorner"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    if-eq v1, p1, :cond_0

    .line 385
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 386
    const/4 v0, 0x1

    .line 388
    :cond_0
    return v0
.end method

.method private setTopRightCornerSizeInternal(F)Z
    .locals 2
    .param p1, "topRightCornerSize"    # F

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iget v1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput p1, v1, Lcom/google/android/material/shape/CornerTreatment;->cornerSize:F

    .line 237
    const/4 v0, 0x1

    .line 239
    :cond_0
    return v0
.end method


# virtual methods
.method addOnChangedListener(Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;)V
    .locals 1
    .param p1, "onChangedListener"    # Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;

    .line 595
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 596
    return-void
.end method

.method public getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-object v0
.end method

.method public getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-object v0
.end method

.method public isRoundRect()Z
    .locals 6

    .line 618
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 619
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 620
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 621
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    .line 622
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 624
    .local v0, "hasDefaultEdges":Z
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    invoke-virtual {v3}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v3

    .line 626
    .local v3, "cornerSize":F
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 627
    invoke-virtual {v4}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 628
    invoke-virtual {v4}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    .line 629
    invoke-virtual {v4}, Lcom/google/android/material/shape/CornerTreatment;->getCornerSize()F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 631
    .local v4, "cornersHaveSameSize":Z
    :goto_1
    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    instance-of v5, v5, Lcom/google/android/material/shape/RoundedCornerTreatment;

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    .line 637
    .local v5, "hasRoundedCorners":Z
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1
.end method

.method removeOnChangedListener(Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;)V
    .locals 1
    .param p1, "onChangedListener"    # Lcom/google/android/material/shape/ShapeAppearanceModel$OnChangedListener;

    .line 599
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->onChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 600
    return-void
.end method

.method public setAllCorners(II)V
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # I

    .line 169
    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setAllCorners(Lcom/google/android/material/shape/CornerTreatment;)V

    .line 170
    return-void
.end method

.method public setAllCorners(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 2
    .param p1, "cornerTreatment"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 178
    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v0

    .line 179
    .local v0, "changed":Z
    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 180
    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 181
    invoke-virtual {p1}, Lcom/google/android/material/shape/CornerTreatment;->clone()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 186
    :cond_0
    return-void
.end method

.method public setAllEdges(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 2
    .param p1, "edgeTreatment"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 266
    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v0

    .line 267
    .local v0, "changed":Z
    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 268
    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 269
    invoke-virtual {p1}, Lcom/google/android/material/shape/EdgeTreatment;->clone()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 271
    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 274
    :cond_0
    return-void
.end method

.method public setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 1
    .param p1, "bottomEdge"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 571
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 574
    :cond_0
    return-void
.end method

.method public setBottomLeftCorner(II)V
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # I

    .line 446
    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V

    .line 447
    return-void
.end method

.method public setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 1
    .param p1, "bottomLeftCorner"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 455
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 458
    :cond_0
    return-void
.end method

.method public setBottomRightCorner(II)V
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # I

    .line 407
    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V

    .line 408
    return-void
.end method

.method public setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 1
    .param p1, "bottomRightCorner"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 416
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 419
    :cond_0
    return-void
.end method

.method public setCornerRadii(FFFF)V
    .locals 2
    .param p1, "topLeftCornerRadius"    # F
    .param p2, "topRightCornerRadius"    # F
    .param p3, "bottomRightCornerRadius"    # F
    .param p4, "bottomLeftCornerRadius"    # F

    .line 214
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerSizeInternal(F)Z

    move-result v0

    .line 215
    .local v0, "changed":Z
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerSizeInternal(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 216
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerSizeInternal(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 217
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerSizeInternal(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 222
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0
    .param p1, "cornerRadius"    # F

    .line 198
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setCornerRadii(FFFF)V

    .line 199
    return-void
.end method

.method public setCornerTreatments(Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 2
    .param p1, "topLeftCorner"    # Lcom/google/android/material/shape/CornerTreatment;
    .param p2, "topRightCorner"    # Lcom/google/android/material/shape/CornerTreatment;
    .param p3, "bottomRightCorner"    # Lcom/google/android/material/shape/CornerTreatment;
    .param p4, "bottomLeftCorner"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 289
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v0

    .line 290
    .local v0, "changed":Z
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 291
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 292
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 294
    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 297
    :cond_0
    return-void
.end method

.method public setEdgeTreatments(Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 2
    .param p1, "leftEdge"    # Lcom/google/android/material/shape/EdgeTreatment;
    .param p2, "topEdge"    # Lcom/google/android/material/shape/EdgeTreatment;
    .param p3, "rightEdge"    # Lcom/google/android/material/shape/EdgeTreatment;
    .param p4, "bottomEdge"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 312
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v0

    .line 313
    .local v0, "changed":Z
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 314
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 315
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setBottomEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 317
    if-eqz v0, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 320
    :cond_0
    return-void
.end method

.method public setLeftEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 1
    .param p1, "leftEdge"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 484
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setLeftEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 487
    :cond_0
    return-void
.end method

.method public setRightEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 1
    .param p1, "rightEdge"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 542
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setRightEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 545
    :cond_0
    return-void
.end method

.method public setTopEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 1
    .param p1, "topEdge"    # Lcom/google/android/material/shape/EdgeTreatment;

    .line 513
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopEdgeInternal(Lcom/google/android/material/shape/EdgeTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 516
    :cond_0
    return-void
.end method

.method public setTopLeftCorner(II)V
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # I

    .line 329
    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V

    .line 330
    return-void
.end method

.method public setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 1
    .param p1, "topLeftCorner"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 338
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopLeftCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 341
    :cond_0
    return-void
.end method

.method public setTopRightCorner(II)V
    .locals 1
    .param p1, "cornerFamily"    # I
    .param p2, "cornerSize"    # I

    .line 368
    invoke-static {p1, p2}, Lcom/google/android/material/shape/MaterialShapeUtils;->createCornerTreatment(II)Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V

    .line 369
    return-void
.end method

.method public setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 1
    .param p1, "topRightCorner"    # Lcom/google/android/material/shape/CornerTreatment;

    .line 377
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->setTopRightCornerInternal(Lcom/google/android/material/shape/CornerTreatment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->onShapeAppearanceModelChanged()V

    .line 380
    :cond_0
    return-void
.end method
