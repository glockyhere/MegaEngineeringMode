.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public anchorGravity:I

.field public dodgeInsetEdges:I

.field public gravity:I

.field public insetEdge:I

.field public keyline:I

.field mAnchorDirectChild:Landroid/view/View;

.field mAnchorId:I

.field mAnchorView:Landroid/view/View;

.field mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

.field mBehaviorResolved:Z

.field mBehaviorTag:Ljava/lang/Object;

.field private mDidAcceptNestedScrollNonTouch:Z

.field private mDidAcceptNestedScrollTouch:Z

.field private mDidBlockInteraction:Z

.field private mDidChangeAfterNestedScroll:Z

.field mInsetOffsetX:I

.field mInsetOffsetY:I

.field final mLastChildRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2905
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2845
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2854
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2860
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2867
    const/4 v1, -0x1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2873
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2880
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2887
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2900
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2906
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2909
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2845
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2854
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2860
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2867
    const/4 v1, -0x1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2873
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2880
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2887
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2900
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2911
    sget-object v2, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2914
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_android_layout_gravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2917
    sget v3, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_anchor:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2919
    sget v3, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_anchorGravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2923
    sget v3, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_keyline:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2926
    sget v1, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_insetEdge:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2927
    sget v1, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_dodgeInsetEdges:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2929
    sget v0, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2931
    if-eqz v0, :cond_0

    .line 2932
    sget v0, Landroidx/coordinatorlayout/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 2935
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2937
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_1

    .line 2939
    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 2941
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2952
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2845
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2854
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2860
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2867
    const/4 v1, -0x1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2873
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2880
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2887
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2900
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2953
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2948
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2845
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2854
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2860
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2867
    const/4 v1, -0x1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2873
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2880
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2887
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2900
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2949
    return-void
.end method

.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2944
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2845
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2854
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2860
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2867
    const/4 v1, -0x1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2873
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2880
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 2887
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 2900
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2945
    return-void
.end method

.method private resolveAnchorView(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 4
    .param p1, "forChild"    # Landroid/view/View;
    .param p2, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3177
    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3178
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3179
    if-ne v0, p2, :cond_1

    .line 3180
    invoke-virtual {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3181
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3182
    return-void

    .line 3184
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3188
    :cond_1
    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3189
    .local v2, "directChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3190
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v0, p2, :cond_5

    if-eqz v0, :cond_5

    .line 3192
    if-ne v0, p1, :cond_3

    .line 3193
    invoke-virtual {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3194
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3195
    return-void

    .line 3197
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3200
    :cond_3
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_4

    .line 3201
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 3191
    :cond_4
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 3204
    .end local v0    # "p":Landroid/view/ViewParent;
    :cond_5
    iput-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 3205
    .end local v2    # "directChild":Landroid/view/View;
    nop

    .line 3214
    return-void

    .line 3206
    :cond_6
    invoke-virtual {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3207
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3208
    return-void

    .line 3210
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3211
    invoke-virtual {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shouldDodge(Landroid/view/View;I)Z
    .locals 3
    .param p1, "other"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 3246
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 3247
    .local v0, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v1, p2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 3248
    .local v1, "absInset":I
    if-eqz v1, :cond_0

    iget v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 3249
    invoke-static {v2, p2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3248
    :goto_0
    return v2
.end method

.method private verifyAnchorView(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Z
    .locals 4
    .param p1, "forChild"    # Landroid/view/View;
    .param p2, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3222
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 3223
    return v2

    .line 3226
    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3227
    .local v0, "directChild":Landroid/view/View;
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3228
    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p2, :cond_4

    .line 3230
    if-eqz v1, :cond_3

    if-ne v1, p1, :cond_1

    goto :goto_1

    .line 3234
    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 3235
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 3229
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 3231
    :cond_3
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3232
    return v2

    .line 3238
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_4
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 3239
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method checkAnchorChanged()Z
    .locals 2

    .line 3039
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method dependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .line 3136
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-eq p3, v0, :cond_1

    .line 3137
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->shouldDodge(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_0

    .line 3138
    invoke-virtual {v0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3136
    :goto_1
    return v0
.end method

.method didBlockInteraction()Z
    .locals 1

    .line 3050
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-nez v0, :cond_0

    .line 3051
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 3053
    :cond_0
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    return v0
.end method

.method findAnchorView(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "forChild"    # Landroid/view/View;

    .line 3161
    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3162
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3163
    return-object v0

    .line 3166
    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->verifyAnchorView(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3167
    :cond_1
    invoke-direct {p0, p2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resolveAnchorView(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 3169
    :cond_2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnchorId()I
    .locals 1

    .line 2962
    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    return v0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1

    .line 2988
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    return-object v0
.end method

.method getChangedAfterNestedScroll()Z
    .locals 1

    .line 3115
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    return v0
.end method

.method getLastChildRect()Landroid/graphics/Rect;
    .locals 1

    .line 3031
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method invalidateAnchor()V
    .locals 1

    .line 3148
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 3149
    return-void
.end method

.method isBlockingInteractionBelow(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;

    .line 3069
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    if-eqz v0, :cond_0

    .line 3070
    const/4 v0, 0x1

    return v0

    .line 3073
    :cond_0
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_1

    .line 3074
    invoke-virtual {v1, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->blocksInteractionBelow(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v1

    goto :goto_0

    .line 3075
    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 3073
    return v0
.end method

.method isNestedScrollAccepted(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 3105
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 3111
    const/4 v0, 0x0

    return v0

    .line 3109
    :cond_0
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollNonTouch:Z

    return v0

    .line 3107
    :cond_1
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollTouch:Z

    return v0
.end method

.method resetChangedAfterNestedScroll()V
    .locals 1

    .line 3123
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 3124
    return-void
.end method

.method resetNestedScroll(I)V
    .locals 1
    .param p1, "type"    # I

    .line 3090
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    .line 3091
    return-void
.end method

.method resetTouchBehaviorTracking()V
    .locals 1

    .line 3086
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 3087
    return-void
.end method

.method public setAnchorId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 2976
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->invalidateAnchor()V

    .line 2977
    iput p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2978
    return-void
.end method

.method public setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V
    .locals 1
    .param p1, "behavior"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 3001
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eq v0, p1, :cond_1

    .line 3002
    if-eqz v0, :cond_0

    .line 3004
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    .line 3007
    :cond_0
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 3008
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 3009
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 3011
    if-eqz p1, :cond_1

    .line 3013
    invoke-virtual {p1, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 3016
    :cond_1
    return-void
.end method

.method setChangedAfterNestedScroll(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .line 3119
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 3120
    return-void
.end method

.method setLastChildRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 3023
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3024
    return-void
.end method

.method setNestedScrollAccepted(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "accept"    # Z

    .line 3094
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3099
    :cond_0
    iput-boolean p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollNonTouch:Z

    goto :goto_0

    .line 3096
    :cond_1
    iput-boolean p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScrollTouch:Z

    .line 3097
    nop

    .line 3102
    :goto_0
    return-void
.end method
